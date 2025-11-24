# Solución: Acceso al Admin de Django con django-tenants

## Problema

Al intentar acceder al admin de Django desde una IP local (ej: `http://192.168.0.248:8000/admin`), se muestra el error:

```
Page not found (404)
No tenant for hostname "192.168.0.248"
```

## Causa

`django-tenants` intenta resolver el tenant basado en el hostname de la solicitud. Cuando accedes desde una IP local que no está asociada a ningún dominio/tenant, el middleware no puede encontrar un tenant y lanza un error 404.

## Solución

Para desarrollo local, configuramos `SHOW_PUBLIC_IF_NO_TENANT_FOUND = True` en `project/settings/local.py`. Esto permite que cuando no se encuentra un tenant, Django use automáticamente el schema `public` (donde están los modelos compartidos como `Tenant` y `Domain`).

### Configuración Aplicada

En `project/settings/local.py`:

```python
# Configuración de django-tenants para desarrollo local
# Permite acceso al schema público cuando no se encuentra un tenant
# Esto es necesario para acceder al admin desde IPs locales (192.168.0.248, localhost, etc.)
SHOW_PUBLIC_IF_NO_TENANT_FOUND = True
```

## Modelos Registrados en el Admin

Se han registrado los siguientes modelos en `appcore/admin.py`:

### 1. TenantAdmin

**Campos visibles en la lista:**
- Nombre del cliente
- Schema name
- Tenant ID
- Email
- Tipo de cliente
- Vista previa del logo
- Estado activo/inactivo
- En período de prueba
- Fecha de pago hasta
- Fecha de creación

**Filtros disponibles:**
- Estado activo/inactivo
- En período de prueba
- Tipo de cliente
- Fecha de creación

**Búsqueda:**
- Por nombre, schema_name, tenant_id, email

**Campos de solo lectura:**
- schema_name
- tenant_id
- created_on
- logo_preview

### 2. DomainAdmin

**Campos visibles en la lista:**
- Dominio
- Tenant asociado
- Es dominio principal
- Estado del tenant

**Filtros disponibles:**
- Es dominio principal
- Estado del tenant (activo/inactivo)

**Búsqueda:**
- Por dominio, nombre del tenant, schema_name

## Acceso al Admin

### Desarrollo Local

1. **Desde IP local:**
   ```
   http://192.168.0.248:8000/admin
   ```

2. **Desde localhost:**
   ```
   http://localhost:8000/admin
   ```

3. **Desde 127.0.0.1:**
   ```
   http://127.0.0.1:8000/admin
   ```

Todos estos accesos funcionarán gracias a `SHOW_PUBLIC_IF_NO_TENANT_FOUND = True`.

### Producción

En producción, cada tenant debe tener su dominio configurado. El acceso al admin público solo debería estar disponible desde un dominio específico configurado para el schema público (ej: `admin.tudominio.com`).

## Crear un Superusuario

Si aún no tienes un superusuario, créalo con:

```powershell
docker exec chalan-backend python manage.py createsuperuser
```

Sigue las instrucciones para ingresar:
- Username
- Email (opcional)
- Password

## Verificar Configuración

### Verificar que los modelos están registrados:

```powershell
docker exec chalan-backend python manage.py shell -c "from django.contrib import admin; from appcore.models import Tenant, Domain; print('Tenant registrado:', Tenant in admin.site._registry); print('Domain registrado:', Domain in admin.site._registry)"
```

**Salida esperada:**
```
Tenant registrado: True
Domain registrado: True
```

### Verificar configuración de django-tenants:

```powershell
docker exec chalan-backend python -c "import os; os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'project.settings.local'); import django; django.setup(); from django.conf import settings; print('SHOW_PUBLIC_IF_NO_TENANT_FOUND:', getattr(settings, 'SHOW_PUBLIC_IF_NO_TENANT_FOUND', 'No configurado'))"
```

**Salida esperada:**
```
SHOW_PUBLIC_IF_NO_TENANT_FOUND: True
```

## Funcionalidades del Admin

### Gestión de Tenants

Desde el admin puedes:

1. **Crear nuevos tenants:**
   - Ingresa nombre, email, tipo de cliente
   - El `schema_name` y `tenant_id` se generan automáticamente
   - Sube un logo opcional

2. **Editar tenants existentes:**
   - Modifica información del cliente
   - Cambia el tipo de cliente
   - Actualiza el logo
   - Modifica estado activo/inactivo
   - Configura período de prueba y fechas de pago

3. **Ver vista previa del logo:**
   - El admin muestra una miniatura del logo si está disponible

4. **Filtrar y buscar:**
   - Filtra por estado, tipo de cliente, fecha
   - Busca por nombre, email, schema_name, tenant_id

### Gestión de Dominios

Desde el admin puedes:

1. **Asociar dominios a tenants:**
   - Crea un nuevo dominio
   - Selecciona el tenant asociado
   - Marca como dominio principal si es necesario

2. **Ver estado del tenant:**
   - El admin muestra visualmente si el tenant está activo o inactivo

3. **Filtrar y buscar:**
   - Filtra por dominio principal
   - Filtra por estado del tenant
   - Busca por dominio o nombre del tenant

## Notas Importantes

1. **Solo en desarrollo local:** `SHOW_PUBLIC_IF_NO_TENANT_FOUND = True` está configurado solo en `settings/local.py`. En producción, cada tenant debe tener su dominio configurado.

2. **Schema público:** El admin accede al schema `public` donde están los modelos compartidos (`Tenant`, `Domain`). Los modelos de tenant apps (como `Product`, `Contract`, etc.) solo están disponibles cuando accedes desde el dominio de un tenant específico.

3. **Seguridad:** En producción, considera restringir el acceso al admin público o usar un dominio específico para administración.

4. **Logo:** Los logos se guardan en `media/tenant_logos/` y se muestran en el admin con una vista previa.

## Referencias

- [Django Tenants Documentation](https://django-tenants.readthedocs.io/)
- [Django Admin Documentation](https://docs.djangoproject.com/en/stable/ref/contrib/admin/)

