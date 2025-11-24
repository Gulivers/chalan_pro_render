# Comando de Ejecución Manual para Crear Contenedores Docker

## 📋 Contexto

Cuando Django está corriendo dentro de Docker (como en desarrollo local con `docker-compose.local.yml`), no puede ejecutar comandos Docker directamente porque Docker no está disponible dentro del contenedor.

Por esta razón, cuando se crea un tenant desde la API, el sistema detecta esta situación y devuelve un comando que debes ejecutar **manualmente desde PowerShell en el host de Windows**.

## 🚀 Comando Base

El comando base para crear contenedores Docker de un tenant es:

```powershell
powershell.exe -ExecutionPolicy Bypass -File scripts\create-tenant.ps1 "<tenant_name>" "<schema_name>" "<domain>" "<tenant_id>" docker-compose.multitenant.yml local 2.0.0
```

### Parámetros:

- `<tenant_name>`: Nombre de la compañía/tenant (ej: "Phoenix Electric")
- `<schema_name>`: Nombre del schema en PostgreSQL (ej: "tenant_phoenix")
- `<domain>`: Dominio del tenant (ej: "phoenix.localhost")
- `<tenant_id>`: ID único del tenant (ej: "phoenix_001")

## 📝 Ejemplo Práctico

Si creas un tenant con:
- **Nombre**: "Phoenix Electric"
- **Schema**: "tenant_phoenix"
- **Domain**: "phoenix.localhost"
- **Tenant ID**: "phoenix_001"

El comando sería:

```powershell
powershell.exe -ExecutionPolicy Bypass -File scripts\create-tenant.ps1 "Phoenix Electric" "tenant_phoenix" "phoenix.localhost" "phoenix_001" docker-compose.multitenant.yml local 2.0.0
```

## 🔍 Cómo Obtener el Comando Exacto

### Opción 1: Desde la Respuesta de la API

Cuando creas un tenant mediante la API (`POST /api/onboarding/create-tenant/`), si Django está corriendo en Docker, la respuesta incluirá el comando exacto:

```json
{
  "success": false,
  "error": "Django está corriendo en Docker. Ejecuta el siguiente comando desde el host de Windows:",
  "manual_command": "powershell.exe -ExecutionPolicy Bypass -File scripts\\create-tenant.ps1 \"Phoenix Electric\" \"tenant_phoenix\" \"phoenix.localhost\" \"phoenix_001\" docker-compose.multitenant.yml local 2.0.0",
  "instructions": "Ejecuta este comando desde PowerShell en el directorio del proyecto:",
  "command": "powershell.exe -ExecutionPolicy Bypass -File scripts\\create-tenant.ps1 \"Phoenix Electric\" \"tenant_phoenix\" \"phoenix.localhost\" \"phoenix_001\" docker-compose.multitenant.yml local 2.0.0"
}
```

### Opción 2: Desde Django Admin

Si creas el tenant desde Django Admin, puedes obtener los valores de:
- `schema_name`: Campo "Schema Name" del modelo Tenant
- `domain`: Campo "Domain" del modelo Domain asociado
- `tenant_id`: Campo "Tenant ID" del modelo Tenant
- `name`: Campo "Name" del modelo Tenant

## 📍 Dónde Ejecutar el Comando

1. **Abre PowerShell** en tu máquina Windows (no dentro del contenedor Docker)
2. **Navega al directorio del proyecto**:
   ```powershell
   cd D:\MisDesarrollos\Driver_ChalanProyect\chalan_inv_txn
   ```
3. **Ejecuta el comando** que obtuviste de la respuesta de la API

## ✅ Verificación

Después de ejecutar el comando, verifica que los contenedores se crearon:

```powershell
docker ps | Select-String "chalan-<schema_name>"
```

Deberías ver dos contenedores:
- `chalan-<schema_name>-web`: Contenedor del backend Django
- `chalan-<schema_name>-nginx`: Contenedor de Nginx para el frontend

## 🔧 Solución Futura: Opción 2 (Montar Socket de Docker)

Para automatizar completamente este proceso, se puede montar el socket de Docker en el contenedor. Esto permitirá que Django ejecute comandos Docker directamente desde dentro del contenedor.

**⚠️ Nota de Seguridad**: Montar el socket de Docker en un contenedor otorga acceso completo al daemon de Docker, lo que puede ser un riesgo de seguridad. Solo debe usarse en entornos de desarrollo o con las precauciones adecuadas.

### Configuración Requerida:

1. **Modificar `docker-compose.local.yml`** para montar el socket:
   ```yaml
   backend:
     volumes:
       - .:/app
       - /var/run/docker.sock:/var/run/docker.sock  # Linux/Mac
       # O en Windows con Docker Desktop:
       # - //var/run/docker.sock:/var/run/docker.sock
   ```

2. **Instalar Docker CLI en el contenedor** (si no está incluido en la imagen)

3. **Actualizar el código** para usar `docker` directamente en lugar de ejecutar scripts externos

---

**Última actualización**: 2025-11-23

