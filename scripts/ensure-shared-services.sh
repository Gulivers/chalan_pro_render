#!/bin/bash
# ============================================
# Script para asegurar que los servicios compartidos estén corriendo
# ============================================
# Uso: ./scripts/ensure-shared-services.sh
# ============================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$PROJECT_DIR"

COMPOSE_FILE="docker-compose.multitenant.yml"

echo "🔍 Verificando servicios compartidos..."

# Verificar que docker-compose.multitenant.yml existe
if [ ! -f "$COMPOSE_FILE" ]; then
    echo "❌ Error: $COMPOSE_FILE no encontrado"
    exit 1
fi

# Verificar que la red Docker existe
NETWORK_NAME="chalan-nginx-proxy"
if ! docker network ls | grep -q "${NETWORK_NAME}"; then
    echo "📡 Creando red Docker: ${NETWORK_NAME}"
    docker network create ${NETWORK_NAME} || echo "⚠️  Red ya existe o error al crear"
else
    echo "✅ Red Docker ${NETWORK_NAME} existe"
fi

# Verificar servicios compartidos
DB_CONTAINER="chalan-multitenant-db"
REDIS_CONTAINER="chalan-multitenant-redis"
NGINX_PROXY_CONTAINER="chalan-nginx-proxy"

# Verificar DB
if ! docker ps --format '{{.Names}}' | grep -q "${DB_CONTAINER}"; then
    echo "📊 Iniciando PostgreSQL..."
    docker-compose -f ${COMPOSE_FILE} up -d db
    echo "⏳ Esperando a que PostgreSQL esté listo..."
    sleep 5
else
    echo "✅ PostgreSQL está corriendo"
fi

# Verificar Redis
if ! docker ps --format '{{.Names}}' | grep -q "${REDIS_CONTAINER}"; then
    echo "📦 Iniciando Redis..."
    docker-compose -f ${COMPOSE_FILE} up -d redis
else
    echo "✅ Redis está corriendo"
fi

# Verificar nginx-proxy
if ! docker ps --format '{{.Names}}' | grep -q "${NGINX_PROXY_CONTAINER}"; then
    echo "🌐 Iniciando nginx-proxy..."
    docker-compose -f ${COMPOSE_FILE} up -d nginx-proxy
else
    echo "✅ nginx-proxy está corriendo"
fi

echo ""
echo "✅ Todos los servicios compartidos están corriendo"
echo ""
echo "📊 Estado de servicios:"
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}" | grep -E "chalan.*db|chalan.*redis|chalan.*nginx-proxy|NAMES"

