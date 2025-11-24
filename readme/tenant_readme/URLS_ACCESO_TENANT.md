# 🌐 URLs de Acceso al Sistema Chalan-Pro por Tenant

## 📋 Información del Tenant

- **Schema**: `tenant_manual_test_20251123134533`
- **Domain**: `manual-test-20251123134533.localhost`
- **Tenant ID**: `13`

## 🔗 URLs de Acceso

### ✅ URLs Activas del Tenant `tenant_manual_test_20251123134533`

#### 1. Django Admin (Backend) - **ACTIVO**
```
http://localhost:8001/admin/
```
- **Puerto**: 8001 (mapeado al puerto 8000 interno del contenedor)
- **Contenedor**: `chalan-tenant_manual_test_20251123134533-web`
- **Estado**: ✅ Corriendo y accesible

#### 2. Frontend (Nginx) - **ACTIVO**
```
http://localhost:8080
```
- **Puerto**: 8080 (mapeado al puerto 80 interno del contenedor)
- **Contenedor**: `chalan-tenant_manual_test_20251123134533-nginx`
- **Estado**: ✅ Corriendo y accesible
- **Nota**: Requiere que el frontend Vue.js esté compilado en `vuefrontend/dist`

### Opción 1: Acceso Directo al Backend (Django Admin)

Si el contenedor web tiene puertos expuestos, puedes acceder directamente:

```
http://localhost:PUERTO/admin/
```

**Nota**: El contenedor `chalan-tenant_manual_test_20251123134533-web` tiene el puerto **8001** expuesto.

### Opción 2: Usando nginx-proxy (Recomendado)

Si tienes `nginx-proxy` corriendo, puedes acceder usando el dominio configurado:

```
http://manual-test-20251123134533.localhost
```

**Requisitos**:
1. Agregar el dominio a tu archivo `hosts`:
   - **Windows**: `C:\Windows\System32\drivers\etc\hosts`
   - **Linux/Mac**: `/etc/hosts`
   
   Agregar esta línea:
   ```
   127.0.0.1 manual-test-20251123134533.localhost
   ```

2. Tener `nginx-proxy` corriendo y configurado

### Opción 3: Exponer Puertos Directamente

Si necesitas acceso inmediato sin nginx-proxy, puedes exponer puertos del contenedor:

```powershell
# Exponer puerto del contenedor web
docker stop chalan-tenant_manual_test_20251123134533-web
docker rm chalan-tenant_manual_test_20251123134533-web

# Recrear con puerto expuesto (ejemplo: puerto 8001)
docker run -d --name chalan-tenant_manual_test_20251123134533-web \
  --network chalan-nginx-proxy \
  --network chalan_inv_txn_chalan-network \
  -p 8001:8000 \
  ... (resto de la configuración)
```

Luego acceder en: `http://localhost:8001/admin/`

### Opción 4: Usar el Contenedor Nginx con Puerto Expuesto

```powershell
# Exponer puerto del contenedor nginx
docker stop chalan-tenant_manual_test_20251123134533-nginx
docker rm chalan-tenant_manual_test_20251123134533-nginx

# Recrear con puerto expuesto (ejemplo: puerto 8080)
docker run -d --name chalan-tenant_manual_test_20251123134533-nginx \
  --network chalan-nginx-proxy \
  -p 8080:80 \
  ... (resto de la configuración)
```

Luego acceder en: `http://localhost:8080`

## 🔍 Verificar Estado Actual

```powershell
# Ver contenedores del tenant
docker ps | Select-String "chalan-tenant_manual_test"

# Ver puertos expuestos
docker ps --format "table {{.Names}}\t{{.Ports}}" | Select-String "chalan-tenant_manual_test"

# Ver logs del contenedor web
docker logs chalan-tenant_manual_test_20251123134533-web --tail 20

# Ver logs del contenedor nginx
docker logs chalan-tenant_manual_test_20251123134533-nginx --tail 20
```

## 📝 Configuración Recomendada

Para desarrollo local, la mejor opción es:

1. **Configurar nginx-proxy** para enrutamiento automático por dominio
2. **Agregar dominios al archivo hosts** para resolución local
3. **Usar el dominio configurado** para acceder al sistema

## 🚀 Próximos Pasos

1. Verificar si nginx-proxy está corriendo
2. Si no está corriendo, iniciarlo o usar una de las opciones alternativas
3. Agregar el dominio al archivo hosts si es necesario
4. Acceder al sistema usando la URL correspondiente

---

**Última actualización**: 2025-11-23

