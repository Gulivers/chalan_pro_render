# 🚀 Guía: Levantar Sistema Completo para Onboarding

Esta guía explica cómo levantar todos los contenedores necesarios para que el sistema funcione y puedas crear nuevos clientes mediante onboarding.

---

## 📋 Contenedores Necesarios

Para que el sistema funcione completamente y puedas crear nuevos tenants mediante onboarding, necesitas los siguientes contenedores:

### 🔴 Contenedores ESENCIALES (obligatorios)

1. **`chalan_postgres`** - Base de datos PostgreSQL
   - Puerto: `5432`
   - Sin esto, el backend no puede conectarse a la BD

2. **`chalan-redis`** - Redis Cache
   - Puerto: `6379`
   - Necesario para sesiones y caché

3. **`chalan-backend`** - Backend Django con API de onboarding
   - Puerto: `8000`
   - **Este es el contenedor principal que maneja el onboarding**
   - Expone la API en `http://localhost:8000/api/onboarding/create-tenant/`

4. **`chalan-frontend`** - Frontend Vue.js con formulario de onboarding
   - Puerto: `3000`
   - Contiene el formulario web en `http://localhost:3000/onboarding`

5. **`chalan-nginx-proxy`** - Proxy Nginx para routing multi-tenant
   - Puertos: `80`, `443`
   - Necesario para el routing de dominios de tenants

### 🟡 Contenedores OPCIONALES

6. **`chalan-pgadmin`** - Administrador de base de datos
   - Puerto: `5050`
   - Acceso: `http://localhost:5050/browser/`
   - Útil para administrar la BD, pero no es necesario para onboarding

### ⚪ Contenedores de TENANTS (NO necesarios para onboarding)

Los contenedores de tenants individuales (como `chalan-tenant_samuel_constructos_2-web`, `chalan-tenant_manual_test_20251123134533-nginx`, etc.) **NO son necesarios** para crear nuevos tenants. Solo son necesarios si quieres acceder a esos tenants específicos.

---

## 🚀 Comandos para Levantar el Sistema

### Opción 1: Usar Docker Compose (Recomendado)

```powershell
# Levantar todos los servicios base
docker-compose -f docker-compose.local.yml up -d

# Verificar que todos están corriendo
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}" | Select-String -Pattern "chalan"
```

### Opción 2: Levantar Servicios Individuales

Si prefieres levantar servicios uno por uno:

```powershell
# 1. Levantar PostgreSQL
docker start chalan_postgres

# 2. Levantar Redis
docker start chalan-redis

# 3. Esperar a que PostgreSQL esté listo (opcional pero recomendado)
Start-Sleep -Seconds 5

# 4. Levantar Backend
docker start chalan-backend

# 5. Levantar Frontend
docker start chalan-frontend

# 6. Verificar nginx-proxy (si existe)
docker ps -a | Select-String -Pattern "nginx-proxy"
# Si no existe, crearlo:
docker network create chalan-nginx-proxy
docker run -d --name chalan-nginx-proxy --network chalan-nginx-proxy -p 80:80 -p 443:443 -v /var/run/docker.sock:/tmp/docker.sock:ro --restart unless-stopped jwilder/nginx-proxy:latest

# 7. (Opcional) Levantar pgAdmin
docker start chalan-pgadmin
```

### Opción 3: Script Automático

Ejecuta el script PowerShell que verifica y levanta todos los servicios:

```powershell
.\scripts\ensure-shared-services.ps1
```

---

## ✅ Verificación del Sistema

Después de levantar los contenedores, verifica que todo esté funcionando:

### 1. Verificar Contenedores Corriendo

```powershell
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}" | Select-String -Pattern "chalan"
```

Deberías ver al menos estos contenedores con status "Up":
- `chalan_postgres` (Up)
- `chalan-redis` (Up)
- `chalan-backend` (Up)
- `chalan-frontend` (Up)
- `chalan-nginx-proxy` (Up) - si existe

### 2. Verificar URLs de Acceso

#### Backend (Django Admin)
```powershell
# Probar acceso al admin
Invoke-WebRequest -Uri "http://localhost:8000/admin/" -UseBasicParsing
```

**URL**: `http://localhost:8000/admin/`

#### Frontend (Formulario de Onboarding)
```powershell
# Probar acceso al frontend
Invoke-WebRequest -Uri "http://localhost:3000/onboarding" -UseBasicParsing
```

**URL**: `http://localhost:3000/onboarding`

#### pgAdmin (Opcional)
```powershell
# Probar acceso a pgAdmin
Invoke-WebRequest -Uri "http://localhost:5050/browser/" -UseBasicParsing
```

**URL**: `http://localhost:5050/browser/`

### 3. Verificar Logs si Hay Problemas

```powershell
# Ver logs del backend
docker logs chalan-backend --tail 50

# Ver logs del frontend
docker logs chalan-frontend --tail 50

# Ver logs de PostgreSQL
docker logs chalan_postgres --tail 50
```

---

## 🎯 Crear Nuevo Cliente (Onboarding)

Una vez que todos los servicios estén corriendo:

### Paso 1: Acceder al Formulario

Abre tu navegador y ve a:
```
http://localhost:3000/onboarding
```

### Paso 2: Completar el Formulario

- **Business Name**: Nombre de la empresa (ej: "Nueva Empresa")
- **Email Address**: Correo electrónico
- **Business Type**: Tipo de negocio (Electric, Air Conditioning, Solar, etc.)
- **Company Logo**: Logo (opcional)

### Paso 3: Enviar

Al hacer clic en "Create My Account", el sistema automáticamente:
1. ✅ Crea el schema PostgreSQL
2. ✅ Registra el tenant en la BD
3. ✅ Guarda el logo
4. ✅ Crea contenedores Docker (web y nginx)
5. ✅ Precarga datos según tipo
6. ✅ Redirige al nuevo dominio

---

## 🔧 Solución de Problemas

### Problema: Backend no inicia

**Síntomas**: `chalan-backend` está en estado "Exited" o "Restarting"

**Solución**:
```powershell
# Ver logs para identificar el problema
docker logs chalan-backend --tail 100

# Común: PostgreSQL no está listo aún
# Espera unos segundos y reinicia el backend
docker restart chalan-backend
```

### Problema: Frontend no accesible

**Síntomas**: No puedes acceder a `http://localhost:3000/onboarding`

**Solución**:
```powershell
# Verificar que el contenedor está corriendo
docker ps | Select-String -Pattern "chalan-frontend"

# Si no está corriendo, iniciarlo
docker start chalan-frontend

# Ver logs
docker logs chalan-frontend --tail 50
```

### Problema: pgAdmin no accesible

**Síntomas**: No puedes acceder a `http://localhost:5050/browser/`

**Solución**:
```powershell
# Verificar que está corriendo
docker ps | Select-String -Pattern "chalan-pgadmin"

# Si no está corriendo, iniciarlo
docker start chalan-pgadmin

# Esperar unos segundos para que inicie
Start-Sleep -Seconds 10
```

### Problema: Error de conexión a PostgreSQL

**Síntomas**: Backend muestra errores de conexión a la BD

**Solución**:
```powershell
# Verificar que PostgreSQL está corriendo
docker ps | Select-String -Pattern "chalan_postgres"

# Si no está corriendo, iniciarlo
docker start chalan_postgres

# Esperar a que PostgreSQL esté completamente listo
Start-Sleep -Seconds 10

# Reiniciar el backend
docker restart chalan-backend
```

---

## 📝 Resumen Rápido

### Comando Único para Levantar Todo

```powershell
docker-compose -f docker-compose.local.yml up -d
```

### URLs Importantes

- **Frontend (Onboarding)**: `http://localhost:3000/onboarding`
- **Backend Admin**: `http://localhost:8000/admin/`
- **Backend API**: `http://localhost:8000/api/`
- **pgAdmin**: `http://localhost:5050/browser/`

### Verificar Estado

```powershell
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}" | Select-String -Pattern "chalan"
```

---

**Última actualización**: 2025-11-23

