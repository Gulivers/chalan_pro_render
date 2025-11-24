#!/bin/bash
# ============================================
# Script de Rollout Progresivo Multi-tenant
# ============================================
# Actualiza un tenant a la vez para validar antes de continuar
# ============================================

set -e

VERSION=${1:-2.0.0}
COMPOSE_FILE="docker-compose.multitenant.yml"

echo "🚀 Rollout Progresivo Multi-tenant"
echo "   Versión: $VERSION"
echo ""

export VERSION=$VERSION

# Construir imagen y frontend una sola vez
echo "📦 Construyendo imagen y frontend..."
docker build -t chalanpro:$VERSION .
cd vuefrontend
npm run build
cd ..

# Función para actualizar un tenant
update_tenant() {
    local TENANT_NAME=$1
    local WEB_SERVICE=$2
    local NGINX_SERVICE=$3
    local SCHEMA_NAME=$4
    
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "🔄 Actualizando tenant: $TENANT_NAME"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    
    # Actualizar backend
    echo "   📦 Actualizando backend..."
    docker-compose -f $COMPOSE_FILE up -d --force-recreate --no-deps $WEB_SERVICE
    
    # Esperar a que el servicio esté listo
    echo "   ⏳ Esperando a que el servicio esté listo..."
    sleep 5
    
    # Ejecutar migraciones
    echo "   🔄 Ejecutando migraciones..."
    docker-compose -f $COMPOSE_FILE exec -T $WEB_SERVICE python manage.py migrate_schemas --schema=$SCHEMA_NAME || true
    
    # Actualizar frontend
    echo "   🎨 Actualizando frontend..."
    docker-compose -f $COMPOSE_FILE up -d --force-recreate --no-deps $NGINX_SERVICE
    
    # Verificar estado
    echo "   ✅ Verificando estado..."
    docker-compose -f $COMPOSE_FILE ps $WEB_SERVICE $NGINX_SERVICE
    
    echo ""
    echo "   ✅ Tenant $TENANT_NAME actualizado!"
    echo ""
    read -p "   ⏸️  Presiona Enter para continuar con el siguiente tenant (o Ctrl+C para cancelar)..."
}

# Actualizar tenants uno por uno
update_tenant "Phoenix Electric" "web-phoenix" "nginx-phoenix" "tenant_phoenix"
update_tenant "Client2" "web-client2" "nginx-client2" "tenant_client2"

echo ""
echo "✅ Rollout progresivo completado!"
echo "📊 Todos los tenants han sido actualizados a la versión $VERSION"

