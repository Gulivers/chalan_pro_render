#!/bin/bash
# ============================================
# Script para hacer backup de un tenant específico
# ============================================
# Uso: ./scripts/backup-tenant.sh <schema_name>
# Ejemplo: ./scripts/backup-tenant.sh tenant_phoenix
# ============================================

set -e

SCHEMA_NAME=$1

if [ -z "$SCHEMA_NAME" ]; then
    echo "❌ Error: Falta el nombre del schema"
    echo "Uso: $0 <schema_name>"
    echo "Ejemplo: $0 tenant_phoenix"
    exit 1
fi

BACKUP_DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="./backups/${SCHEMA_NAME}"
BACKUP_FILE="${BACKUP_DIR}/${SCHEMA_NAME}_${BACKUP_DATE}.sql"

echo "💾 Creando backup para tenant: $SCHEMA_NAME"
echo "   Archivo: $BACKUP_FILE"

# Crear directorio de backup
mkdir -p "${BACKUP_DIR}"

# Backup del schema específico
docker exec chalan-multitenant-db pg_dump \
  -U chalan_user \
  -d chalan_tenant_db \
  -n ${SCHEMA_NAME} \
  --clean \
  --if-exists \
  > "${BACKUP_FILE}"

if [ $? -eq 0 ]; then
    # Comprimir backup
    gzip -f "${BACKUP_FILE}"
    echo "✅ Backup creado exitosamente: ${BACKUP_FILE}.gz"
    
    # Mostrar tamaño del archivo
    ls -lh "${BACKUP_FILE}.gz"
else
    echo "❌ Error al crear backup"
    exit 1
fi

# Limpiar backups antiguos (mantener últimos 7 días)
echo "🧹 Limpiando backups antiguos..."
find "${BACKUP_DIR}" -name "*.sql.gz" -mtime +7 -delete
echo "✅ Limpieza completada"

