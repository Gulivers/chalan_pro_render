# 🔄 Flujo de Tenants: Local vs Render

Este documento explica cómo funciona el sistema multi-tenant en desarrollo local y en producción (Render), incluyendo la arquitectura de contenedores y dominios.

---

## 📊 Resumen Ejecutivo

### ✅ Respuesta Directa a tus Preguntas

1. **¿Cómo es el flujo actual de tenant en local y cómo está para Render?**
   - **Local**: Cada tenant tiene contenedores Docker dedicados (web + nginx)
   - **Render**: Arquitectura diferente, un solo servicio backend maneja todos los tenants

2. **¿Cada cliente tendrá un contenedor para su Chalan-Pro con su respectivo dominio particular?**
   - **Local**: ✅ SÍ, cada cliente tiene 2 contenedores (web + nginx) + dominio único
   - **Render**: ❌ NO, un solo servicio backend maneja todos los tenants, pero cada cliente tiene su dominio único

---

## 🏗️ Arquitectura Local (Desarrollo)

### Estructura de Contenedores

```
┌─────────────────────────────────────────────────────────────┐
│                    Servicios Compartidos                    │
├─────────────────────────────────────────────────────────────┤
│  • chalan-multitenant-db (PostgreSQL)                       │
│  • chalan-multitenant-redis (Redis)                         │
│  • chalan-nginx-proxy (Reverse Proxy)                      │
│  • chalan-nginx-proxy-letsencrypt (SSL)                     │
└─────────────────────────────────────────────────────────────┘
                            │
        ┌───────────────────┼───────────────────┐
        │                   │                   │
┌───────▼────────┐  ┌────────▼────────┐  ┌──────▼────────┐
│  Tenant 1     │  │  Tenant 2       │  │  Tenant 3     │
│  Phoenix      │  │  Client2       │  │  Client3      │
├───────────────┤  ├────────────────┤  ├───────────────┤
│ web-phoenix   │  │ web-client2    │  │ web-client3   │
│ nginx-phoenix │  │ nginx-client2  │  │ nginx-client3 │
│               │  │                │  │               │
│ Domain:       │  │ Domain:        │  │ Domain:       │
│ phoenix.local │  │ client2.local  │  │ client3.local │
└───────────────┘  └────────────────┘  └───────────────┘
```

### Contenedores por Tenant

**Cada cliente tiene:**
- ✅ **1 contenedor web** (`chalan-{schema}-web`)
  - Ejecuta Django con el schema específico del tenant
  - Puerto interno: 8000
  - Variables de entorno: `TENANT_SCHEMA`, `TENANT_ID`
  
- ✅ **1 contenedor nginx** (`chalan-{schema}-nginx`)
  - Sirve el frontend Vue.js compilado
  - Puerto interno: 80
  - Configurado con `VIRTUAL_HOST` para el dominio del tenant

- ✅ **1 dominio único** (`{tenant-name}.localhost`)
  - Ejemplo: `phoenix.localhost`, `client2.localhost`
  - Configurado en `/etc/hosts` o usando wildcard DNS

- ✅ **1 schema PostgreSQL** (`tenant_{name}`)
  - Aislamiento completo de datos
  - Ejemplo: `tenant_phoenix`, `tenant_client2`

### Ejemplo: Tenant "Phoenix Electric"

```yaml
# Contenedores creados automáticamente
chalan-tenant_phoenix-web:
  - Image: chalanpro:2.0.0
  - Environment:
    - TENANT_SCHEMA: tenant_phoenix
    - TENANT_ID: phoenix_001
    - VIRTUAL_HOST: api.phoenix.localhost
  - Network: nginx-proxy

chalan-tenant_phoenix-nginx:
  - Image: nginx:1.19.0-alpine
  - Environment:
    - VIRTUAL_HOST: phoenix.localhost
    - LETSENCRYPT_HOST: phoenix.localhost
  - Network: nginx-proxy
```

### Flujo de Creación en Local

```
1. Usuario completa formulario en /onboarding
   ↓
2. CreateTenantView (Django API)
   ├─► Genera schema_name, tenant_id, domain
   ├─► Crea Tenant y Domain en DB (schema public)
   ├─► Crea schema PostgreSQL (tenant_{name})
   ├─► Ejecuta migraciones en el nuevo schema
   ├─► Precarga datos según client_type
   └─► Ejecuta create-tenant.sh
       ├─► Crea contenedor web-{schema}
       ├─► Crea contenedor nginx-{schema}
       └─► Configura nginx-proxy
   ↓
3. Usuario es redirigido a {domain}
   ↓
4. nginx-proxy detecta VIRTUAL_HOST
   ↓
5. Request → nginx-{schema} → web-{schema}
```

---

## 🚀 Arquitectura Render (Producción)

### Estructura de Servicios

```
┌─────────────────────────────────────────────────────────────┐
│                    Render Platform                          │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│  ┌─────────────────────────────────────────────────────┐   │
│  │  Web Service: chalan-backend                       │   │
│  │  (Un solo servicio Django para TODOS los tenants)   │   │
│  │                                                     │   │
│  │  • Maneja múltiples tenants                         │   │
│  │  • Detecta tenant por dominio (django-tenants)     │   │
│  │  • Usa schema switching automático                 │   │
│  └─────────────────────────────────────────────────────┘   │
│                            │                                │
│  ┌─────────────────────────▼─────────────────────────┐   │
│  │  Static Site: chalan-frontend                      │   │
│  │  (Frontend Vue.js compilado)                       │   │
│  │  • Sirve archivos estáticos                        │   │
│  │  • Configurado con rewrites para SPA               │   │
│  └─────────────────────────────────────────────────────┘   │
│                            │                                │
│  ┌─────────────────────────▼─────────────────────────┐   │
│  │  Postgres: chalan-db                               │   │
│  │  • Múltiples schemas (public + tenant_*)           │   │
│  │  • Un solo servicio de base de datos               │   │
│  └─────────────────────────────────────────────────────┘   │
│                            │                                │
│  ┌─────────────────────────▼─────────────────────────┐   │
│  │  Redis: chalan-redis                                │   │
│  │  • Cache compartido                                 │   │
│  └─────────────────────────────────────────────────────┘   │
│                                                             │
└─────────────────────────────────────────────────────────────┘
                            │
        ┌───────────────────┼───────────────────┐
        │                   │                   │
┌───────▼────────┐  ┌────────▼────────┐  ┌──────▼────────┐
│  Tenant 1     │  │  Tenant 2       │  │  Tenant 3     │
│  Phoenix      │  │  Client2       │  │  Client3      │
├───────────────┤  ├────────────────┤  ├───────────────┤
│ Domain:       │  │ Domain:        │  │ Domain:       │
│ phoenix.com   │  │ client2.com    │  │ client3.com   │
│               │  │                │  │               │
│ Schema:       │  │ Schema:        │  │ Schema:       │
│ tenant_phoenix│  │ tenant_client2  │  │ tenant_client3│
└───────────────┘  └────────────────┘  └───────────────┘
```

### Servicios en Render

**Un solo servicio backend:**
- ✅ **chalan-backend** (Web Service)
  - Maneja TODOS los tenants
  - Detecta el tenant por dominio usando `django-tenants`
  - Cambia automáticamente al schema correcto
  - No necesita contenedores separados por tenant

**Un solo servicio frontend:**
- ✅ **chalan-frontend** (Static Site)
  - Frontend Vue.js compilado
  - Sirve archivos estáticos
  - Configurado con rewrites para SPA

**Servicios compartidos:**
- ✅ **chalan-db** (PostgreSQL)
  - Múltiples schemas en una sola base de datos
  - Schema `public` para datos compartidos
  - Schemas `tenant_*` para datos de cada cliente

- ✅ **chalan-redis** (Redis)
  - Cache compartido
  - Puede usar diferentes DB numbers por tenant si se configura

### Detección de Tenant en Render

```python
# django-tenants detecta automáticamente el tenant por dominio
# No necesitas contenedores separados

# Request → phoenix.com
# django-tenants → busca Domain.objects.get(domain='phoenix.com')
# → encuentra Tenant asociado
# → cambia al schema tenant_phoenix
# → procesa request
```

### Flujo de Creación en Render

```
1. Usuario completa formulario en /onboarding
   ↓
2. CreateTenantView (Django API)
   ├─► Genera schema_name, tenant_id, domain
   ├─► Crea Tenant y Domain en DB (schema public)
   ├─► Crea schema PostgreSQL (tenant_{name})
   ├─► Ejecuta migraciones en el nuevo schema
   ├─► Precarga datos según client_type
   └─► NO crea contenedores Docker
       (Render usa un solo servicio backend)
   ↓
3. Usuario es redirigido a {domain}
   ↓
4. Render DNS → chalan-backend
   ↓
5. django-tenants detecta dominio
   ↓
6. Cambia al schema correcto automáticamente
   ↓
7. Procesa request con datos del tenant
```

---

## 🔍 Comparación Detallada

| Aspecto | Local (Docker) | Render (Producción) |
|---------|----------------|---------------------|
| **Contenedores por Tenant** | ✅ 2 contenedores (web + nginx) | ❌ 0 contenedores (servicio compartido) |
| **Servicio Backend** | Múltiples (uno por tenant) | ✅ Uno solo (maneja todos) |
| **Servicio Frontend** | Múltiples (uno por tenant) | ✅ Uno solo (static site) |
| **Base de Datos** | ✅ Una sola (múltiples schemas) | ✅ Una sola (múltiples schemas) |
| **Dominio por Tenant** | ✅ Sí (`{name}.localhost`) | ✅ Sí (`{name}.com`) |
| **Schema por Tenant** | ✅ Sí (`tenant_{name}`) | ✅ Sí (`tenant_{name}`) |
| **Aislamiento de Datos** | ✅ Por schema | ✅ Por schema |
| **SSL/HTTPS** | Opcional (letsencrypt) | ✅ Automático (Render) |
| **Escalabilidad** | Limitada por recursos | ✅ Automática (Render) |
| **Costo** | Recursos locales | ✅ Pago por uso (Render) |

---

## 🎯 Ventajas de Cada Arquitectura

### Local (Contenedores por Tenant)

**Ventajas:**
- ✅ Aislamiento completo de procesos
- ✅ Fácil debugging (logs separados por contenedor)
- ✅ Puedes reiniciar un tenant sin afectar otros
- ✅ Simula mejor la arquitectura de producción (si fuera necesario)

**Desventajas:**
- ❌ Mayor consumo de recursos
- ❌ Más complejo de gestionar
- ❌ Más contenedores que mantener

### Render (Servicio Compartido)

**Ventajas:**
- ✅ Menor consumo de recursos
- ✅ Más económico
- ✅ Escalabilidad automática
- ✅ Menos complejidad operacional
- ✅ SSL automático

**Desventajas:**
- ❌ Un problema afecta a todos los tenants (mitigado por django-tenants)
- ❌ Menos aislamiento de procesos (pero datos aislados por schema)

---

## 📝 Configuración de Dominios

### Local

**Configuración en `/etc/hosts` (Linux/Mac) o `C:\Windows\System32\drivers\etc\hosts` (Windows):**

```
127.0.0.1 phoenix.localhost
127.0.0.1 client2.localhost
127.0.0.1 client3.localhost
```

O usar wildcard DNS:
```
127.0.0.1 *.localhost
```

### Render

**Configuración DNS:**

1. Cada cliente configura su dominio:
   ```
   phoenix.com → CNAME → chalan-backend.onrender.com
   ```

2. Render detecta automáticamente el dominio

3. django-tenants mapea dominio → tenant → schema

---

## 🔧 Scripts y Comandos

### Local: Crear Tenant

```bash
# Automático vía formulario
http://localhost:3000/onboarding

# O manualmente
./scripts/create-tenant.sh "Phoenix Electric" tenant_phoenix phoenix.localhost phoenix_001
```

### Local: Ver Contenedores

```bash
# Ver todos los contenedores de tenants
docker ps | grep chalan-

# Ver contenedores de un tenant específico
docker ps | grep phoenix

# Logs de un tenant
docker logs chalan-tenant_phoenix-web
docker logs chalan-tenant_phoenix-nginx
```

### Render: Crear Tenant

```bash
# Automático vía formulario
https://chalan-frontend.onrender.com/onboarding

# El backend crea el tenant automáticamente
# No se crean contenedores nuevos
```

### Render: Ver Tenants

```bash
# Desde Django Admin
https://chalan-backend.onrender.com/admin/appcore/tenant/

# O desde Django shell (si tienes acceso SSH)
python manage.py shell
>>> from appcore.models import Tenant, Domain
>>> Tenant.objects.all()
>>> Domain.objects.all()
```

---

## 🚨 Consideraciones Importantes

### Local

1. **Recursos**: Cada contenedor consume memoria y CPU
2. **Puertos**: Asegúrate de que no haya conflictos
3. **Red Docker**: Todos los contenedores deben estar en `nginx-proxy`
4. **Volúmenes**: Cada tenant tiene sus propios logs y media

### Render

1. **Límites**: Render tiene límites en el plan gratuito
2. **Escalabilidad**: El servicio se escala automáticamente
3. **SSL**: Render maneja SSL automáticamente
4. **Dominios**: Cada cliente debe configurar su DNS

---

## 📊 Ejemplo Práctico

### Escenario: Crear Tenant "Phoenix Electric"

#### En Local:

```bash
# 1. Usuario completa formulario
# 2. Sistema crea:
docker ps
# chalan-tenant_phoenix-web
# chalan-tenant_phoenix-nginx

# 3. Schema creado en PostgreSQL
docker exec chalan-multitenant-db psql -U chalan_user -d chalan_tenant_db -c "\dn"
# tenant_phoenix

# 4. Dominio configurado
curl http://phoenix.localhost
# → Frontend Vue.js
curl http://api.phoenix.localhost/api/
# → Backend Django
```

#### En Render:

```bash
# 1. Usuario completa formulario
# 2. Sistema crea:
# - Tenant en DB (schema public)
# - Domain en DB (schema public)
# - Schema PostgreSQL (tenant_phoenix)
# - NO crea contenedores nuevos

# 3. Dominio configurado por cliente
curl https://phoenix.com
# → Render DNS → chalan-backend
# → django-tenants detecta dominio
# → cambia a schema tenant_phoenix
# → procesa request
```

---

## ✅ Resumen Final

### Pregunta 1: Flujo de Tenant

**Local:**
- Cada tenant = 2 contenedores Docker (web + nginx)
- Contenedores dedicados por tenant
- Dominio único por tenant
- Schema PostgreSQL único por tenant

**Render:**
- Un solo servicio backend maneja todos los tenants
- django-tenants detecta tenant por dominio
- Cambio automático de schema
- Dominio único por tenant
- Schema PostgreSQL único por tenant

### Pregunta 2: Contenedor por Cliente

**Local:** ✅ SÍ
- Cada cliente tiene sus propios contenedores
- Aislamiento completo de procesos

**Render:** ❌ NO
- Un solo servicio backend compartido
- Aislamiento por schema (datos), no por proceso

---

**Última actualización**: 2025-11-23
