# 🚀 Guía: Creación de Tenant en Local

Esta guía explica cómo crear un nuevo tenant en el entorno local siguiendo el flujo completo documentado.

---

## 📋 Prerequisitos

Antes de crear un nuevo tenant, asegúrate de que:

1. ✅ **Docker está corriendo**
   ```bash
   docker ps
   ```

2. ✅ **Servicios compartidos están corriendo**
   ```bash
   docker-compose -f docker-compose.multitenant.yml up -d db redis nginx-proxy
   ```

   O ejecuta el script helper:
   ```bash
   bash scripts/ensure-shared-services.sh
   ```

3. ✅ **Red Docker existe**
   ```bash
   docker network ls | grep chalan-nginx-proxy
   ```

   Si no existe, créala:
   ```bash
   docker network create chalan-nginx-proxy
   ```

---

## 🎯 Flujo de Creación

### Paso 1: Acceder al Formulario de Onboarding

Abre tu navegador y ve a:
```
http://localhost:3000/onboarding
```

O si estás usando el frontend en Docker:
```
http://192.168.0.248:3000/onboarding
```

### Paso 2: Completar el Formulario

Completa los siguientes campos:

- **Business Name**: Nombre de la empresa (ej: "Phoenix Electric")
- **Email Address**: Correo electrónico del cliente
- **Business Type**: Tipo de negocio (Electric, Air Conditioning, Solar, etc.)
- **Company Logo**: Logo de la empresa (opcional)

### Paso 3: Enviar el Formulario

Al hacer clic en "Create My Account", el sistema:

1. ✅ Genera `schema_name`, `tenant_id`, y `domain` únicos
2. ✅ Crea el registro `Tenant` y `Domain` en la base de datos (schema `public`)
3. ✅ Crea el schema PostgreSQL (`tenant_{name}`)
4. ✅ Ejecuta migraciones en el nuevo schema
5. ✅ Precarga datos según el tipo de cliente
6. ✅ **Crea contenedores Docker** (`web-{schema}` y `nginx-{schema}`)
7. ✅ Configura nginx-proxy para el nuevo dominio
8. ✅ Redirige al usuario al nuevo dominio

---

## 🔍 Verificación

### Verificar que los Contenedores se Crearon

```bash
# Ver todos los contenedores de tenants
docker ps | grep chalan-

# Ver contenedores de un tenant específico
docker ps | grep tenant_phoenix
```

Deberías ver:
- `chalan-tenant_phoenix-web` (Backend Django)
- `chalan-tenant_phoenix-nginx` (Frontend Nginx)

### Verificar el Schema en PostgreSQL

```bash
docker exec chalan-multitenant-db psql -U chalan_user -d chalan_tenant_db -c "\dn"
```

Deberías ver el nuevo schema: `tenant_phoenix`

### Verificar el Dominio

El dominio se genera automáticamente. Ejemplo: `phoenix-electric.localhost`

**IMPORTANTE**: Debes agregar el dominio a tu archivo `/etc/hosts` (Linux/Mac) o `C:\Windows\System32\drivers\etc\hosts` (Windows):

```
127.0.0.1 phoenix-electric.localhost
127.0.0.1 api.phoenix-electric.localhost
```

O usar wildcard DNS:
```
127.0.0.1 *.localhost
```

### Acceder al Nuevo Tenant

Una vez configurado el dominio, puedes acceder:

- **Frontend**: `http://phoenix-electric.localhost`
- **API**: `http://api.phoenix-electric.localhost/api/`

---

## 🐛 Troubleshooting

### Error: "Script create-tenant.sh no encontrado"

**Solución:**
```bash
# Verificar que el script existe
ls -la scripts/create-tenant.sh

# Asegurar que es ejecutable
chmod +x scripts/create-tenant.sh
```

### Error: "Bash no encontrado" (Windows)

**Solución:**
- Instala Git Bash: https://git-scm.com/downloads
- O usa WSL (Windows Subsystem for Linux)

### Error: "Red Docker no existe"

**Solución:**
```bash
docker network create chalan-nginx-proxy
```

### Error: "Servicios compartidos no están corriendo"

**Solución:**
```bash
# Levantar servicios compartidos
docker-compose -f docker-compose.multitenant.yml up -d db redis nginx-proxy

# O usar el script helper
bash scripts/ensure-shared-services.sh
```

### Error: "Contenedor ya existe"

**Solución:**
```bash
# Detener y eliminar contenedores existentes
docker stop chalan-tenant_phoenix-web chalan-tenant_phoenix-nginx
docker rm chalan-tenant_phoenix-web chalan-tenant_phoenix-nginx

# Intentar crear el tenant nuevamente
```

### Los Contenedores se Crean pero No Responden

**Verificar logs:**
```bash
# Logs del contenedor web
docker logs chalan-tenant_phoenix-web

# Logs del contenedor nginx
docker logs chalan-tenant_phoenix-nginx

# Logs de nginx-proxy
docker logs chalan-nginx-proxy
```

**Problemas comunes:**
- El contenedor web no puede conectarse a la base de datos
- El dominio no está configurado en `/etc/hosts`
- nginx-proxy no detecta el nuevo dominio

---

## 📝 Comandos Útiles

### Ver Estado de Todos los Tenants

```bash
# Ver contenedores de todos los tenants
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}" | grep chalan-

# Ver schemas en PostgreSQL
docker exec chalan-multitenant-db psql -U chalan_user -d chalan_tenant_db -c "\dn"
```

### Reiniciar un Tenant Específico

```bash
# Reiniciar contenedores de un tenant
docker restart chalan-tenant_phoenix-web chalan-tenant_phoenix-nginx
```

### Eliminar un Tenant

```bash
# 1. Detener y eliminar contenedores
docker stop chalan-tenant_phoenix-web chalan-tenant_phoenix-nginx
docker rm chalan-tenant_phoenix-web chalan-tenant_phoenix-nginx

# 2. Eliminar schema de PostgreSQL (¡CUIDADO! Esto elimina todos los datos)
docker exec chalan-multitenant-db psql -U chalan_user -d chalan_tenant_db -c "DROP SCHEMA tenant_phoenix CASCADE;"

# 3. Eliminar registro del tenant en Django Admin
# Ve a http://localhost:8000/admin/appcore/tenant/ y elimina el tenant
```

### Ver Logs en Tiempo Real

```bash
# Logs del contenedor web
docker logs -f chalan-tenant_phoenix-web

# Logs del contenedor nginx
docker logs -f chalan-tenant_phoenix-nginx

# Logs de nginx-proxy
docker logs -f chalan-nginx-proxy
```

---

## ✅ Checklist de Creación Exitosa

Después de crear un tenant, verifica:

- [ ] Contenedor `chalan-{schema}-web` está corriendo
- [ ] Contenedor `chalan-{schema}-nginx` está corriendo
- [ ] Schema PostgreSQL `tenant_{name}` existe
- [ ] Registro `Tenant` existe en Django Admin
- [ ] Registro `Domain` existe en Django Admin
- [ ] Dominio agregado a `/etc/hosts` o `hosts` de Windows
- [ ] Frontend accesible en `http://{domain}`
- [ ] API accesible en `http://api.{domain}/api/`
- [ ] Logs no muestran errores

---

## 🎯 Próximos Pasos

Una vez creado el tenant:

1. **Configurar usuarios**: Crear usuarios para el nuevo tenant
2. **Personalizar datos**: Ajustar configuraciones según el tipo de cliente
3. **Probar funcionalidades**: Verificar que todas las funcionalidades funcionen
4. **Configurar SSL**: En producción, configurar certificados SSL

---

**Última actualización**: 2025-11-23

