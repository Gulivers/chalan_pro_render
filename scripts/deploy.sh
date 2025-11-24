#!/bin/bash
# ============================================
# Script de despliegue completo multi-tenant
# ============================================
# Este script construye la imagen, compila el frontend y despliega todos los servicios
# ============================================

set -e

VERSION=${1:-2.0.0}
ENVIRONMENT=${2:-local}
COMPOSE_FILE="docker-compose.multitenant.yml"

echo "🚀 Iniciando despliegue Chalan-Pro Multi-tenant"
echo "   Versión: $VERSION"
echo "   Ambiente: $ENVIRONMENT"
echo ""

# Exportar variables
export VERSION=$VERSION
export ENVIRONMENT=$ENVIRONMENT

# 1. Construir imagen del backend
echo "📦 Construyendo imagen del backend (chalanpro:$VERSION)..."
docker build -t chalanpro:$VERSION .

# 2. Compilar frontend Vue.js
echo "🎨 Compilando frontend Vue.js..."
cd vuefrontend
if [ ! -d "node_modules" ]; then
    echo "   Instalando dependencias..."
    npm install
fi
npm run build
cd ..

# 3. Crear directorios necesarios
echo "📁 Creando directorios..."
mkdir -p logs/phoenix logs/client2 logs/client3
mkdir -p media/phoenix media/client2 media/client3
mkdir -p docker/nginx/certs docker/nginx/vhost.d docker/nginx/html
mkdir -p backups

# 4. Crear red si no existe
echo "🌐 Creando red Docker..."
docker network create chalan-nginx-proxy 2>/dev/null || true

# 5. Levantar servicios compartidos primero
echo "🔧 Levantando servicios compartidos..."
docker-compose -f $COMPOSE_FILE up -d db redis nginx-proxy nginx-proxy-letsencrypt pgadmin

# Esperar a que PostgreSQL esté listo
echo "⏳ Esperando a que PostgreSQL esté listo..."
sleep 10

# 6. Ejecutar migraciones en schema público
echo "🔄 Ejecutando migraciones en schema público..."
docker-compose -f $COMPOSE_FILE run --rm web-phoenix python manage.py migrate_schemas --schema=public

# 7. Levantar todos los servicios
echo "🚀 Levantando todos los servicios..."
docker-compose -f $COMPOSE_FILE up -d

# 8. Ejecutar migraciones para cada tenant
echo "🔄 Ejecutando migraciones para cada tenant..."
docker-compose -f $COMPOSE_FILE exec -T web-phoenix python manage.py migrate_schemas --schema=tenant_phoenix || true
docker-compose -f $COMPOSE_FILE exec -T web-client2 python manage.py migrate_schemas --schema=tenant_client2 || true

echo ""
echo "✅ Despliegue completado!"
echo ""
echo "📊 Servicios disponibles:"
echo "   - PostgreSQL: localhost:5432"
echo "   - PgAdmin: http://localhost:5050"
echo "   - Nginx Proxy: http://localhost:80"
echo ""
echo "🌐 Tenants:"
echo "   - Phoenix: http://phoenix.localhost"
echo "   - Client2: http://client2.localhost"
echo ""
echo "📝 Para ver logs: docker-compose -f $COMPOSE_FILE logs -f"

