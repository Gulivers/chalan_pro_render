#!/bin/bash
# ============================================
# Script para ejecutar migraciones en un tenant específico
# ============================================
# Uso: ./scripts/migrate-tenant.sh <schema_name> [web_container]
# Ejemplo: ./scripts/migrate-tenant.sh tenant_phoenix chalan-phoenix-web
# ============================================

set -e

SCHEMA_NAME=$1
WEB_CONTAINER=${2:-chalan-phoenix-web}

if [ -z "$SCHEMA_NAME" ]; then
    echo "❌ Error: Falta el nombre del schema"
    echo "Uso: $0 <schema_name> [web_container]"
    echo "Ejemplo: $0 tenant_phoenix chalan-phoenix-web"
    exit 1
fi

echo "🔄 Ejecutando migraciones para tenant: $SCHEMA_NAME"
echo "   Container: $WEB_CONTAINER"

# Verificar que el contenedor existe
if ! docker ps -a --format '{{.Names}}' | grep -q "^${WEB_CONTAINER}$"; then
    echo "❌ Error: Contenedor ${WEB_CONTAINER} no existe"
    exit 1
fi

# Ejecutar migraciones
docker exec ${WEB_CONTAINER} python manage.py migrate_schemas --schema=${SCHEMA_NAME}

if [ $? -eq 0 ]; then
    echo "✅ Migraciones completadas exitosamente para ${SCHEMA_NAME}"
else
    echo "❌ Error al ejecutar migraciones"
    exit 1
fi

