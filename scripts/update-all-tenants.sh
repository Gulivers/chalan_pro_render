#!/bin/bash
# ============================================
# Script de Actualización Global Multi-tenant
# ============================================
# Este script actualiza backend y frontend para todos los tenants
# ============================================

set -e

VERSION=${1:-2.0.0}
COMPOSE_FILE="docker-compose.multitenant.yml"

echo "🔄 Iniciando actualización global de todos los tenants"
echo "   Versión: $VERSION"
echo ""

# Exportar versión
export VERSION=$VERSION

# 1. Construir nueva imagen del backend
echo "📦 Construyendo nueva imagen del backend (chalanpro:$VERSION)..."
docker build -t chalanpro:$VERSION .

if [ $? -ne 0 ]; then
    echo "❌ Error al construir la imagen"
    exit 1
fi

# 2. Compilar frontend Vue.js
echo "🎨 Compilando frontend Vue.js..."
cd vuefrontend
if [ ! -d "node_modules" ]; then
    echo "   Instalando dependencias..."
    npm install
fi
npm run build
cd ..

if [ $? -ne 0 ]; then
    echo "❌ Error al compilar el frontend"
    exit 1
fi

# 3. Actualizar todos los servicios web (backend)
echo "🔄 Actualizando servicios backend..."
docker-compose -f $COMPOSE_FILE up -d --force-recreate --no-deps \
    web-phoenix \
    web-client2

# 4. Actualizar todos los servicios nginx (frontend)
echo "🔄 Actualizando servicios frontend..."
docker-compose -f $COMPOSE_FILE up -d --force-recreate --no-deps \
    nginx-phoenix \
    nginx-client2

# 5. Ejecutar migraciones para cada tenant
echo "🔄 Ejecutando migraciones..."
docker-compose -f $COMPOSE_FILE exec -T web-phoenix python manage.py migrate_schemas --schema=tenant_phoenix || true
docker-compose -f $COMPOSE_FILE exec -T web-client2 python manage.py migrate_schemas --schema=tenant_client2 || true

# 6. Verificar estado de los servicios
echo ""
echo "📊 Verificando estado de los servicios..."
docker-compose -f $COMPOSE_FILE ps

echo ""
echo "✅ Actualización completada!"
echo ""
echo "📝 Para ver logs: docker-compose -f $COMPOSE_FILE logs -f"
echo "📝 Para verificar un tenant específico: docker-compose -f $COMPOSE_FILE logs web-phoenix"

