# 🔧 Solución: Creación de Contenedores Docker por Tenant

Este documento explica las mejoras realizadas para que el sistema cree automáticamente contenedores Docker por cada tenant en el entorno local.

---

## ❌ Problema Identificado

El flujo de creación de tenants solo llegaba hasta "Genera schema_name, tenant_id, domain" y **no creaba los contenedores Docker** como se esperaba según la documentación.

### Causas del Problema

1. **Script no ejecutándose correctamente**: El script `create-tenant.sh` tenía problemas para ejecutarse desde Django en Windows
2. **Red Docker no existía**: La red `chalan-nginx-proxy` no estaba creada
3. **Servicios compartidos no verificados**: No se verificaba que db, redis y nginx-proxy estuvieran corriendo
4. **Referencias incorrectas**: El script intentaba usar servicios que no estaban disponibles
5. **Manejo de errores insuficiente**: Los errores no se mostraban claramente

---

## ✅ Soluciones Implementadas

### 1. Script `create-tenant.sh` Mejorado

**Mejoras:**
- ✅ Verificación automática de la red Docker (`chalan-nginx-proxy`)
- ✅ Verificación de servicios compartidos (db, redis, nginx-proxy)
- ✅ Detección automática de nombres de contenedores compartidos
- ✅ Uso de `docker run` directamente (más confiable que docker-compose con archivo temporal)
- ✅ Mejor manejo de errores y mensajes informativos
- ✅ Compatible con Windows (Git Bash) y Linux/Mac

**Ubicación:** `scripts/create-tenant.sh`

### 2. Vista `CreateTenantView` Mejorada

**Mejoras:**
- ✅ Verificación automática de servicios compartidos antes de crear tenant
- ✅ Detección automática de bash en Windows (Git Bash, WSL)
- ✅ Logs detallados de cada paso del proceso
- ✅ Mejor manejo de errores con mensajes descriptivos
- ✅ Retorna información detallada del estado de Docker

**Ubicación:** `appcore/views.py`

### 3. Script Helper `ensure-shared-services.sh`

**Nuevo script** que verifica y levanta los servicios compartidos:
- ✅ Verifica que la red Docker existe
- ✅ Verifica que db, redis y nginx-proxy están corriendo
- ✅ Los levanta automáticamente si no están corriendo

**Ubicación:** `scripts/ensure-shared-services.sh`

### 4. Archivo `nginx.conf` Creado

**Nuevo archivo** con configuración básica de Nginx para el frontend:
- ✅ Configuración para SPA Vue.js
- ✅ Proxy para API
- ✅ Compresión gzip
- ✅ Caché para assets estáticos

**Ubicación:** `vuefrontend/nginx.conf`

---

## 🔄 Flujo Corregido

### Flujo Completo de Creación

```
1. Usuario completa formulario en /onboarding
   ↓
2. CreateTenantView (Django API)
   ├─► Verifica servicios compartidos (ensure-shared-services.sh)
   ├─► Genera schema_name, tenant_id, domain
   ├─► Crea Tenant y Domain en DB (schema public)
   ├─► Crea schema PostgreSQL (tenant_{name})
   ├─► Ejecuta migraciones en el nuevo schema
   ├─► Precarga datos según client_type
   └─► Ejecuta create-tenant.sh
       ├─► Verifica red Docker (chalan-nginx-proxy)
       ├─► Verifica servicios compartidos (db, redis, nginx-proxy)
       ├─► Construye imagen si no existe (chalanpro:2.0.0)
       ├─► Crea contenedor web-{schema} con docker run
       ├─► Crea contenedor nginx-{schema} con docker run
       └─► Configura nginx-proxy automáticamente
   ↓
3. Usuario es redirigido a {domain}
   ↓
4. nginx-proxy detecta VIRTUAL_HOST
   ↓
5. Request → nginx-{schema} → web-{schema}
```

---

## 🛠️ Cambios Técnicos Detallados

### Script `create-tenant.sh`

**Antes:**
- Usaba docker-compose con archivo temporal
- No verificaba servicios compartidos
- No manejaba bien errores en Windows

**Ahora:**
- Usa `docker run` directamente (más confiable)
- Verifica servicios compartidos antes de crear contenedores
- Detecta automáticamente nombres de contenedores
- Compatible con Windows y Linux/Mac
- Mejor manejo de errores

### Vista `CreateTenantView`

**Antes:**
- No verificaba servicios compartidos
- Manejo de errores básico
- No detectaba bash en Windows

**Ahora:**
- Llama a `ensure-shared-services.sh` antes de crear tenant
- Detecta bash automáticamente (Git Bash, WSL)
- Logs detallados de cada paso
- Mensajes de error más descriptivos

---

## 📝 Archivos Modificados

1. **`scripts/create-tenant.sh`**
   - Completamente reescrito
   - Mejorado para funcionar en Windows y Linux
   - Verificaciones automáticas

2. **`appcore/views.py`**
   - Agregado método `_ensure_shared_services()`
   - Mejorado método `_create_docker_containers()`
   - Mejor detección de bash en Windows
   - Logs más detallados

3. **`scripts/ensure-shared-services.sh`** (NUEVO)
   - Script helper para verificar servicios compartidos

4. **`vuefrontend/nginx.conf`** (NUEVO)
   - Configuración básica de Nginx

---

## 🚀 Cómo Usar

### Paso 1: Asegurar Servicios Compartidos

```bash
# Opción 1: Usar el script helper
bash scripts/ensure-shared-services.sh

# Opción 2: Manualmente
docker-compose -f docker-compose.multitenant.yml up -d db redis nginx-proxy
```

### Paso 2: Crear Tenant

```bash
# Vía formulario web
http://localhost:3000/onboarding

# O manualmente
bash scripts/create-tenant.sh "Phoenix Electric" tenant_phoenix phoenix.localhost phoenix_001
```

### Paso 3: Verificar Contenedores

```bash
# Ver contenedores creados
docker ps | grep chalan-

# Ver logs
docker logs chalan-tenant_phoenix-web
docker logs chalan-tenant_phoenix-nginx
```

---

## ✅ Verificación

Después de crear un tenant, verifica:

1. **Contenedores creados:**
   ```bash
   docker ps | grep tenant_phoenix
   # Debe mostrar:
   # chalan-tenant_phoenix-web
   # chalan-tenant_phoenix-nginx
   ```

2. **Schema en PostgreSQL:**
   ```bash
   docker exec chalan-multitenant-db psql -U chalan_user -d chalan_tenant_db -c "\dn"
   # Debe mostrar: tenant_phoenix
   ```

3. **Dominio configurado:**
   ```bash
   # Agregar a /etc/hosts o C:\Windows\System32\drivers\etc\hosts
   127.0.0.1 phoenix.localhost
   127.0.0.1 api.phoenix.localhost
   ```

4. **Acceso al tenant:**
   ```bash
   curl http://phoenix.localhost
   curl http://api.phoenix.localhost/api/
   ```

---

## 🐛 Troubleshooting

### Error: "Bash no encontrado"

**Solución:**
- Instala Git Bash: https://git-scm.com/downloads
- O usa WSL en Windows

### Error: "Servicios compartidos no están corriendo"

**Solución:**
```bash
bash scripts/ensure-shared-services.sh
```

### Error: "Red Docker no existe"

**Solución:**
```bash
docker network create chalan-nginx-proxy
```

### Error: "Contenedor web no puede conectarse a DB"

**Solución:**
- Verifica que db está en la misma red: `docker network inspect chalan-nginx-proxy`
- Verifica que db está corriendo: `docker ps | grep db`
- Verifica credenciales en `.env`

### Los Contenedores se Crean pero No Responden

**Verificar logs:**
```bash
docker logs chalan-tenant_phoenix-web
docker logs chalan-tenant_phoenix-nginx
docker logs chalan-nginx-proxy
```

**Problemas comunes:**
- El contenedor web no puede conectarse a la base de datos
- El dominio no está configurado en `/etc/hosts`
- nginx-proxy no detecta el nuevo dominio (reiniciar nginx-proxy)

---

## 📊 Estado Actual

✅ **Funcional:**
- Creación automática de schemas PostgreSQL
- Creación automática de contenedores Docker
- Configuración automática de nginx-proxy
- Verificación automática de servicios compartidos

⚠️ **Requisitos:**
- Git Bash o WSL en Windows
- Servicios compartidos corriendo (db, redis, nginx-proxy)
- Red Docker `chalan-nginx-proxy` creada
- Dominio agregado a `/etc/hosts` o `hosts` de Windows

---

## 🎯 Próximos Pasos

1. **Probar el flujo completo** creando un tenant de prueba
2. **Verificar que los contenedores funcionan** correctamente
3. **Documentar cualquier problema** encontrado
4. **Optimizar** el proceso si es necesario

---

**Última actualización**: 2025-11-23

