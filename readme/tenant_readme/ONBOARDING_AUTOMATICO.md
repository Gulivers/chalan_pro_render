# 🚀 Onboarding Automático Multi-tenant

Este documento describe la implementación del sistema de onboarding automático para nuevos tenants en Chalan-Pro.

---

## 📋 Resumen

El sistema de onboarding permite que nuevos clientes se autoprovisionen automáticamente mediante un formulario web. El proceso incluye:

1. ✅ Creación automática de schema PostgreSQL
2. ✅ Registro del tenant en la base de datos
3. ✅ Guardado del logo del cliente
4. ✅ Creación de contenedores Docker (web y nginx)
5. ✅ Precarga de datos según tipo de cliente
6. ✅ Redirección automática al dominio del tenant

---

## 🏗️ Arquitectura

```
┌─────────────────────────────────────────────────────────┐
│              Formulario Vue.js                          │
│         /onboarding (OnboardingView.vue)                │
└──────────────────────┬──────────────────────────────────┘
                      │ POST /api/onboarding/create-tenant/
                      ▼
┌─────────────────────────────────────────────────────────┐
│         CreateTenantView (Django API)                  │
│  - Valida datos                                         │
│  - Genera schema_name, tenant_id, domain               │
│  - Crea Tenant y Domain en DB                           │
│  - Guarda logo                                          │
└──────┬──────────────────────────────────────────────────┘
       │
       ├──► Crear schema PostgreSQL
       ├──► Ejecutar migraciones
       ├──► Precargar datos (preload_tenant_data)
       └──► Crear contenedores Docker (create-tenant.sh)
```

---

## 📦 Componentes Implementados

### 1. Modelo Tenant Actualizado

**Archivo:** `appcore/models.py`

**Campos agregados:**
- `email`: Correo electrónico del cliente
- `client_type`: Tipo de cliente (electric, air_conditioning, solar, etc.)
- `logo`: Imagen del logo del cliente

**Opciones de client_type:**
- `electric`: Electric
- `air_conditioning`: Air Conditioning
- `solar`: Solar
- `plumbing`: Plumbing
- `hvac`: HVAC
- `general`: General

### 2. Serializers

**Archivo:** `appcore/serializers.py`

- `TenantOnboardingSerializer`: Valida datos del formulario
- `TenantSerializer`: Serializa el modelo Tenant completo
- `TenantCreateResponseSerializer`: Formato de respuesta de la API

### 3. API View

**Archivo:** `appcore/views.py`

**Endpoints:**
- `POST /api/onboarding/create-tenant/`: Crea un nuevo tenant
- `GET /api/onboarding/tenant-info/?domain=example.com`: Obtiene info de un tenant

**Funcionalidades de CreateTenantView:**
- Genera nombres únicos (schema_name, tenant_id, domain)
- Crea schema en PostgreSQL
- Ejecuta migraciones
- Precarga datos según client_type
- Crea contenedores Docker
- Retorna URL del nuevo tenant

### 4. Management Command

**Archivo:** `appcore/management/commands/preload_tenant_data.py`

**Uso:**
```bash
python manage.py preload_tenant_data --schema=tenant_phoenix --client_type=electric
```

**Funcionalidad:**
- Precarga categorías de productos según el tipo de cliente
- Personaliza datos iniciales por industria

### 5. Script Docker Actualizado

**Archivo:** `scripts/create-tenant.sh`

**Mejoras:**
- Genera docker-compose dinámico para nuevos tenants
- Crea contenedores web y nginx automáticamente
- Configura variables de entorno correctamente

### 6. Formulario Vue.js

**Archivo:** `vuefrontend/src/views/OnboardingView.vue`

**Características:**
- Formulario con validación en tiempo real
- Preview del logo antes de subir
- Manejo de errores detallado
- Redirección automática al dominio del tenant
- UI moderna con Bootstrap

---

## 🚀 Flujo de Uso

### Para el Usuario Final

1. **Acceder al formulario:**
   ```
   http://localhost:3000/onboarding
   ```

2. **Completar el formulario:**
   - Nombre del negocio
   - Correo electrónico
   - Tipo de negocio
   - Logo (opcional)

3. **Enviar formulario:**
   - El sistema procesa la solicitud (2-5 minutos)
   - Muestra progreso y mensajes de estado

4. **Redirección automática:**
   - Al completar, redirige al dominio del nuevo tenant
   - Ejemplo: `http://phoenix-electric.localhost`

### Para el Desarrollador

**Probar el endpoint directamente:**

```bash
curl -X POST http://localhost:8000/api/onboarding/create-tenant/ \
  -F "company_name=Phoenix Electric" \
  -F "email=contact@phoenix.com" \
  -F "client_type=electric" \
  -F "logo=@/path/to/logo.png"
```

**Respuesta esperada:**
```json
{
  "success": true,
  "message": "Tenant \"Phoenix Electric\" creado exitosamente",
  "tenant_id": 1,
  "schema_name": "tenant_phoenix_electric",
  "domain": "phoenix-electric.localhost",
  "url": "http://phoenix-electric.localhost",
  "docker_status": {
    "success": true,
    "message": "Contenedores Docker creados exitosamente"
  }
}
```

---

## 🔧 Configuración

### Variables de Entorno

Asegúrate de tener configuradas estas variables en `.env`:

```bash
# Base de datos
POSTGRES_DB=chalan_tenant_db
POSTGRES_USER=chalan_user
POSTGRES_PASSWORD=chalan_password

# Django
DJANGO_SECRET_KEY=tu_secret_key
DEBUG=True

# Docker
VERSION=2.0.0
ENVIRONMENT=local
```

### Dominios en Desarrollo

**Windows:** Editar `C:\Windows\System32\drivers\etc\hosts`
**Linux/Mac:** Editar `/etc/hosts`

Los dominios se generan automáticamente, pero necesitas configurar wildcard:
```
127.0.0.1 *.localhost
```

O agregar dominios específicos según se creen.

---

## 📝 Personalización por Tipo de Cliente

### Agregar Nuevos Tipos

1. **Actualizar modelo:**
   ```python
   # appcore/models.py
   CLIENT_TYPE_CHOICES = [
       # ... tipos existentes
       ('nuevo_tipo', 'Nuevo Tipo'),
   ]
   ```

2. **Agregar precarga de datos:**
   ```python
   # appcore/management/commands/preload_tenant_data.py
   def _preload_nuevo_tipo_data(self):
       # Lógica de precarga
   ```

3. **Actualizar formulario Vue:**
   ```vue
   <!-- vuefrontend/src/views/OnboardingView.vue -->
   <option value="nuevo_tipo">Nuevo Tipo</option>
   ```

---

## 🐛 Troubleshooting

### Error: "Schema already exists"

**Causa:** El schema ya existe en PostgreSQL

**Solución:**
```bash
# Verificar schemas existentes
docker exec chalan-multitenant-db psql -U chalan_user -d chalan_tenant_db -c "\dn"

# Eliminar schema si es necesario (¡cuidado!)
docker exec chalan-multitenant-db psql -U chalan_user -d chalan_tenant_db -c "DROP SCHEMA tenant_nombre CASCADE;"
```

### Error: "Docker containers failed to create"

**Causa:** Problemas con Docker o docker-compose

**Solución:**
```bash
# Verificar que Docker esté corriendo
docker ps

# Verificar red Docker
docker network ls | grep chalan-nginx-proxy

# Crear red si no existe
docker network create chalan-nginx-proxy
```

### Error: "Logo upload failed"

**Causa:** Problemas con permisos o tamaño de archivo

**Solución:**
- Verificar que `media/tenant_logos/` tenga permisos de escritura
- Verificar tamaño máximo del archivo (5MB por defecto)
- Verificar formato de imagen (PNG, JPG, GIF)

### El formulario no redirige

**Causa:** Problemas con la URL generada o CORS

**Solución:**
- Verificar que el dominio esté configurado en `/etc/hosts`
- Verificar configuración de CORS en Django settings
- Verificar logs del navegador para errores de red

---

## 📊 Monitoreo

### Ver Logs del Proceso

```bash
# Logs de Django
docker logs chalan-phoenix-web | grep -i "tenant\|onboarding"

# Logs de creación de contenedores
docker logs chalan-phoenix-web | grep -i "docker"

# Verificar estado de contenedores
docker ps | grep chalan-
```

### Verificar Tenant Creado

```bash
# En Django shell
python manage.py shell
>>> from appcore.models import Tenant, Domain
>>> Tenant.objects.all()
>>> Domain.objects.all()
```

---

## ✅ Checklist de Implementación

- [x] Modelo Tenant actualizado con campos necesarios
- [x] Serializers creados
- [x] API View implementada
- [x] Management command para precarga de datos
- [x] Script Docker actualizado
- [x] Formulario Vue.js creado
- [x] Rutas configuradas
- [x] Validación de formulario
- [x] Manejo de errores
- [x] Redirección automática

---

## 🎯 Próximas Mejoras

- [ ] Email de bienvenida automático
- [ ] Dashboard de onboarding para administradores
- [ ] Métricas de creación de tenants
- [ ] Plantillas personalizables por tipo de cliente
- [ ] Integración con servicios de pago
- [ ] Prueba gratuita automática (trial period)

---

## 📚 Referencias

- [Django Tenants Documentation](https://django-tenants.readthedocs.io/)
- [Docker Compose Documentation](https://docs.docker.com/compose/)
- [Vue.js Form Handling](https://vuejs.org/guide/essentials/forms.html)

---

**¡Sistema de onboarding automático implementado y funcionando!** 🎉

