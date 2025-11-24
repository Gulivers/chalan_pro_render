# 📋 Resumen: Comando de Ejecución Manual

## 🎯 Comando Base

Cuando creas un tenant desde la API y Django está corriendo en Docker, recibirás un comando como este en la respuesta:

```powershell
powershell.exe -ExecutionPolicy Bypass -File scripts\create-tenant.ps1 "<tenant_name>" "<schema_name>" "<domain>" "<tenant_id>" docker-compose.multitenant.yml local 2.0.0
```

## 📝 Ejemplo Real

Para un tenant con:
- **Nombre**: "Test Company 20251123133535"
- **Schema**: "tenant_test_company_20251123133535"
- **Domain**: "test-company-20251123133535.localhost"
- **Tenant ID**: "tenant_test_company_20251123133535_001"

El comando sería:

```powershell
powershell.exe -ExecutionPolicy Bypass -File scripts\create-tenant.ps1 "Test Company 20251123133535" "tenant_test_company_20251123133535" "test-company-20251123133535.localhost" "tenant_test_company_20251123133535_001" docker-compose.multitenant.yml local 2.0.0
```

## 🚀 Pasos para Ejecutar

1. **Abre PowerShell** en Windows (no dentro del contenedor)
2. **Navega al directorio del proyecto**:
   ```powershell
   cd D:\MisDesarrollos\Driver_ChalanProyect\chalan_inv_txn
   ```
3. **Copia y pega el comando** que recibiste en la respuesta de la API
4. **Presiona Enter** para ejecutar

## ✅ Verificación

Después de ejecutar, verifica los contenedores:

```powershell
docker ps | Select-String "chalan-tenant_test_company"
```

Deberías ver:
- `chalan-tenant_test_company_20251123133535-web`
- `chalan-tenant_test_company_20251123133535-nginx`

## 📍 Dónde Obtener los Valores

### Desde la Respuesta de la API

Cuando haces `POST /api/onboarding/create-tenant/`, la respuesta incluye:
- `schema_name`: El schema generado
- `domain`: El dominio generado  
- `tenant_id`: El ID del tenant generado
- `manual_command`: El comando completo listo para ejecutar

### Desde Django Admin

1. Ve a `http://localhost:8000/admin/appcore/tenant/`
2. Selecciona el tenant creado
3. Copia los valores de:
   - **Schema Name**: `schema_name`
   - **Tenant ID**: `tenant_id`
4. Ve a `http://localhost:8000/admin/appcore/domain/`
5. Busca el dominio asociado al tenant y copia el valor de **Domain**

## 🔄 Próximo Paso: Opción 2

Una vez probado el flujo manual, implementaremos la **Opción 2** que montará el socket de Docker para automatizar completamente el proceso.

---

**Nota**: Este documento es un resumen rápido. Para más detalles, consulta `COMANDO_EJECUCION_MANUAL.md`.

