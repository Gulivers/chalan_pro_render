#!/bin/bash
# ============================================
# Script para crear contenedores Docker de un nuevo tenant
# ============================================
# Uso: ./scripts/create-tenant.sh <tenant_name> <schema_name> <domain> <tenant_id> [compose_file] [environment] [version]
# Ejemplo: ./scripts/create-tenant.sh "Phoenix Electric" tenant_phoenix phoenix.localhost phoenix_001
# ============================================
# NOTA: Este script asume que el tenant ya fue creado en la base de datos
#       y solo crea los contenedores Docker necesarios
# ============================================

set -e

TENANT_NAME=$1
SCHEMA_NAME=$2
DOMAIN=$3
TENANT_ID=$4
COMPOSE_FILE=${5:-docker-compose.multitenant.yml}
ENVIRONMENT=${6:-local}
VERSION=${7:-2.0.0}

if [ -z "$TENANT_NAME" ] || [ -z "$SCHEMA_NAME" ] || [ -z "$DOMAIN" ] || [ -z "$TENANT_ID" ]; then
    echo "❌ Error: Faltan parámetros"
    echo "Uso: $0 <tenant_name> <schema_name> <domain> <tenant_id> [compose_file] [environment] [version]"
    echo "Ejemplo: $0 'Phoenix Electric' tenant_phoenix phoenix.localhost phoenix_001"
    exit 1
fi

echo "🚀 Creando contenedores Docker para tenant: $TENANT_NAME"
echo "   Schema: $SCHEMA_NAME"
echo "   Domain: $DOMAIN"
echo "   Tenant ID: $TENANT_ID"
echo "   Compose File: $COMPOSE_FILE"
echo "   Environment: $ENVIRONMENT"
echo "   Version: $VERSION"

# Generar nombres de servicios y contenedores
WEB_SERVICE="web-${SCHEMA_NAME}"
NGINX_SERVICE="nginx-${SCHEMA_NAME}"
WEB_CONTAINER="chalan-${SCHEMA_NAME}-web"
NGINX_CONTAINER="chalan-${SCHEMA_NAME}-nginx"

# Detectar el directorio del script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$PROJECT_DIR"

# Crear directorios necesarios
echo "📁 Creando directorios..."
mkdir -p logs/${SCHEMA_NAME}
mkdir -p media/${SCHEMA_NAME}
mkdir -p media/tenant_logos

# Generar API domain
API_DOMAIN="api.${DOMAIN}"

# Verificar que la red Docker existe (crear si no existe)
NETWORK_NAME="chalan-nginx-proxy"
if ! docker network ls | grep -q "${NETWORK_NAME}"; then
    echo "📡 Creando red Docker: ${NETWORK_NAME}"
    docker network create ${NETWORK_NAME} || echo "⚠️  Red ya existe o error al crear"
else
    echo "✅ Red Docker ${NETWORK_NAME} existe"
fi

# Verificar que los servicios compartidos estén corriendo
echo "🔍 Verificando servicios compartidos..."
if ! docker ps --format '{{.Names}}' | grep -q "chalan-multitenant-db\|chalan_postgres"; then
    echo "⚠️  Advertencia: Base de datos PostgreSQL no está corriendo"
    echo "   Ejecuta: docker-compose -f docker-compose.multitenant.yml up -d db"
fi

if ! docker ps --format '{{.Names}}' | grep -q "chalan-multitenant-redis\|chalan-redis"; then
    echo "⚠️  Advertencia: Redis no está corriendo"
    echo "   Ejecuta: docker-compose -f docker-compose.multitenant.yml up -d redis"
fi

if ! docker ps --format '{{.Names}}' | grep -q "chalan-nginx-proxy"; then
    echo "⚠️  Advertencia: nginx-proxy no está corriendo"
    echo "   Ejecuta: docker-compose -f docker-compose.multitenant.yml up -d nginx-proxy"
fi

# Detectar nombres de servicios compartidos
DB_CONTAINER=$(docker ps --format '{{.Names}}' | grep -E "chalan.*db|chalan.*postgres" | head -n1 || echo "chalan-multitenant-db")
REDIS_CONTAINER=$(docker ps --format '{{.Names}}' | grep -E "chalan.*redis" | head -n1 || echo "chalan-multitenant-redis")

echo "   DB Container: ${DB_CONTAINER}"
echo "   Redis Container: ${REDIS_CONTAINER}"

# Verificar que los servicios compartidos estén corriendo
if ! docker ps --format '{{.Names}}' | grep -q "${DB_CONTAINER}"; then
    echo "❌ Error: El contenedor de base de datos ${DB_CONTAINER} no está corriendo"
    echo "   Ejecuta primero: docker-compose -f docker-compose.multitenant.yml up -d db redis nginx-proxy"
    exit 1
fi

if ! docker ps --format '{{.Names}}' | grep -q "${REDIS_CONTAINER}"; then
    echo "❌ Error: El contenedor de Redis ${REDIS_CONTAINER} no está corriendo"
    echo "   Ejecuta primero: docker-compose -f docker-compose.multitenant.yml up -d db redis nginx-proxy"
    exit 1
fi

# Obtener variables de entorno del contenedor de DB si existe
if docker ps --format '{{.Names}}' | grep -q "${DB_CONTAINER}"; then
    POSTGRES_USER=$(docker inspect ${DB_CONTAINER} --format '{{range .Config.Env}}{{println .}}{{end}}' | grep "^POSTGRES_USER=" | cut -d= -f2 | head -n1 || echo "chalan_user")
    POSTGRES_PASSWORD=$(docker inspect ${DB_CONTAINER} --format '{{range .Config.Env}}{{println .}}{{end}}' | grep "^POSTGRES_PASSWORD=" | cut -d= -f2 | head -n1 || echo "chalan_password")
    POSTGRES_DB=$(docker inspect ${DB_CONTAINER} --format '{{range .Config.Env}}{{println .}}{{end}}' | grep "^POSTGRES_DB=" | cut -d= -f2 | head -n1 || echo "chalan_tenant_db")
else
    POSTGRES_USER=${POSTGRES_USER:-chalan_user}
    POSTGRES_PASSWORD=${POSTGRES_PASSWORD:-chalan_password}
    POSTGRES_DB=${POSTGRES_DB:-chalan_tenant_db}
fi

# Obtener SECRET_KEY del entorno o del archivo .env
if [ -f .env ]; then
    DJANGO_SECRET_KEY=$(grep "^DJANGO_SECRET_KEY=" .env | cut -d= -f2 | head -n1 || echo "")
fi
DJANGO_SECRET_KEY=${DJANGO_SECRET_KEY:-$(openssl rand -hex 32 2>/dev/null || echo "temp-secret-key-change-in-production")}

# Verificar si los contenedores ya existen y detenerlos
if docker ps -a --format '{{.Names}}' | grep -q "^${WEB_CONTAINER}$"; then
    echo "🛑 Deteniendo y eliminando contenedor existente: ${WEB_CONTAINER}"
    docker stop ${WEB_CONTAINER} 2>/dev/null || true
    docker rm ${WEB_CONTAINER} 2>/dev/null || true
fi

if docker ps -a --format '{{.Names}}' | grep -q "^${NGINX_CONTAINER}$"; then
    echo "🛑 Deteniendo y eliminando contenedor existente: ${NGINX_CONTAINER}"
    docker stop ${NGINX_CONTAINER} 2>/dev/null || true
    docker rm ${NGINX_CONTAINER} 2>/dev/null || true
fi

# Verificar si la imagen existe, si no construirla
if ! docker images --format '{{.Repository}}:{{.Tag}}' | grep -q "chalanpro:${VERSION}"; then
    echo "🔨 Construyendo imagen chalanpro:${VERSION}..."
    docker build -t chalanpro:${VERSION} -f Dockerfile .
fi

# Obtener la IP del contenedor de DB en la red
DB_IP=$(docker inspect ${DB_CONTAINER} --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' | head -n1)
if [ -z "$DB_IP" ]; then
    # Si no está en la red, usar el nombre del contenedor (funciona si están en la misma red)
    DB_HOST=${DB_CONTAINER}
else
    DB_HOST=${DB_CONTAINER}
fi

REDIS_IP=$(docker inspect ${REDIS_CONTAINER} --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' | head -n1)
if [ -z "$REDIS_IP" ]; then
    REDIS_HOST=${REDIS_CONTAINER}
else
    REDIS_HOST=${REDIS_CONTAINER}
fi

echo "   DB Host: ${DB_HOST}"
echo "   Redis Host: ${REDIS_HOST}"

# Verificar que el archivo nginx.conf existe, si no crear uno básico
if [ ! -f "${PROJECT_DIR}/vuefrontend/nginx.conf" ]; then
    echo "⚠️  Creando nginx.conf básico..."
    mkdir -p "${PROJECT_DIR}/vuefrontend"
    cat > "${PROJECT_DIR}/vuefrontend/nginx.conf" << 'NGINXEOF'
server {
    listen 80;
    server_name _;
    root /usr/share/nginx/html;
    index index.html;

    # Gzip compression
    gzip on;
    gzip_vary on;
    gzip_min_length 1024;
    gzip_types text/plain text/css text/xml text/javascript application/x-javascript application/xml+rss application/json;

    # Frontend Vue.js SPA
    location / {
        try_files $uri $uri/ /index.html;
        add_header Cache-Control "no-cache, no-store, must-revalidate";
    }

    # API proxy (opcional, puede manejarse desde nginx-proxy)
    location /api {
        proxy_pass http://chalan-backend:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
        proxy_redirect off;
    }

    # Static assets caching
    location ~* \.(jpg|jpeg|png|gif|ico|css|js|svg|woff|woff2|ttf|eot)$ {
        expires 1y;
        add_header Cache-Control "public, immutable";
    }
}
NGINXEOF
fi

# Crear contenedor web usando docker run
echo "🐳 Creando contenedor web: ${WEB_CONTAINER}..."

# Cargar variables de entorno del archivo .env si existe
ENV_ARGS=""
if [ -f .env ]; then
    ENV_ARGS="--env-file .env"
fi

docker run -d \
    --name ${WEB_CONTAINER} \
    --network ${NETWORK_NAME} \
    ${ENV_ARGS} \
    -e DJANGO_SETTINGS_MODULE=project.settings.${ENVIRONMENT} \
    -e VIRTUAL_HOST=${API_DOMAIN} \
    -e LETSENCRYPT_HOST=${API_DOMAIN} \
    -e TENANT_SCHEMA=${SCHEMA_NAME} \
    -e TENANT_ID=${TENANT_ID} \
    -e DATABASE_URL=postgresql://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${DB_HOST}:5432/${POSTGRES_DB} \
    -e POSTGRES_HOST=${DB_HOST} \
    -e REDIS_URL=redis://${REDIS_HOST}:6379/0 \
    -e DJANGO_SECRET_KEY=${DJANGO_SECRET_KEY} \
    -e DEBUG=True \
    -v "${PROJECT_DIR}:/app" \
    -v "${PROJECT_DIR}/logs/${SCHEMA_NAME}:/app/logs" \
    -v "${PROJECT_DIR}/media/${SCHEMA_NAME}:/app/media/${SCHEMA_NAME}" \
    --restart unless-stopped \
    chalanpro:${VERSION} \
    sh -c "python manage.py migrate_schemas --schema=${SCHEMA_NAME} && python manage.py runserver 0.0.0.0:8000"

if [ $? -ne 0 ]; then
    echo "❌ Error al crear contenedor web"
    echo "   Verifica que la imagen chalanpro:${VERSION} existe o construye la imagen primero"
    exit 1
fi

# Esperar un momento para que el contenedor web inicie
echo "⏳ Esperando a que el contenedor web inicie..."
sleep 5

# Verificar que el contenedor web está corriendo
if ! docker ps --format '{{.Names}}' | grep -q "^${WEB_CONTAINER}$"; then
    echo "❌ Error: El contenedor web no está corriendo"
    echo "   Revisa los logs: docker logs ${WEB_CONTAINER}"
    exit 1
fi

# Crear contenedor nginx usando docker run
echo "🐳 Creando contenedor nginx: ${NGINX_CONTAINER}..."

docker run -d \
    --name ${NGINX_CONTAINER} \
    --network ${NETWORK_NAME} \
    -e VIRTUAL_HOST=${DOMAIN},www.${DOMAIN} \
    -e LETSENCRYPT_HOST=${DOMAIN},www.${DOMAIN} \
    -e TENANT_SCHEMA=${SCHEMA_NAME} \
    -v "${PROJECT_DIR}/vuefrontend/dist:/usr/share/nginx/html:ro" \
    -v "${PROJECT_DIR}/vuefrontend/nginx.conf:/etc/nginx/conf.d/default.conf:ro" \
    --restart unless-stopped \
    nginx:1.19.0-alpine

if [ $? -ne 0 ]; then
    echo "❌ Error al crear contenedor nginx"
    docker stop ${WEB_CONTAINER} 2>/dev/null || true
    docker rm ${WEB_CONTAINER} 2>/dev/null || true
    exit 1
fi

echo "✅ Contenedores Docker creados exitosamente!"
echo ""
echo "📊 Servicios creados:"
echo "   - ${WEB_CONTAINER}"
echo "   - ${NGINX_CONTAINER}"
echo ""
echo "🌐 URLs:"
echo "   - Frontend: http://${DOMAIN}"
echo "   - API: http://${API_DOMAIN}"
echo ""
echo "📝 Para ver logs:"
echo "   docker logs ${WEB_CONTAINER}"
echo "   docker logs ${NGINX_CONTAINER}"
echo ""
echo "📝 Para verificar estado:"
echo "   docker ps | grep ${SCHEMA_NAME}"
echo ""
echo "⚠️  IMPORTANTE: Asegúrate de agregar el dominio a /etc/hosts (Linux/Mac) o C:\\Windows\\System32\\drivers\\etc\\hosts (Windows):"
echo "   127.0.0.1 ${DOMAIN}"
echo "   127.0.0.1 ${API_DOMAIN}"

echo "✅ Proceso completado!"

