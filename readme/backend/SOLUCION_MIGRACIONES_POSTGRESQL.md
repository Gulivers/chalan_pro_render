# Solución: Migraciones PostgreSQL en Docker

## Problema Identificado

Cuando ejecutas `makemigrations` o `migrate` desde fuera del contenedor Docker, Django no puede conectarse a PostgreSQL porque está intentando usar `localhost`, pero PostgreSQL está corriendo dentro de un contenedor Docker con el nombre de servicio `chalan_postgres`.

## Solución

**SIEMPRE ejecuta los comandos de Django DENTRO del contenedor Docker** usando `docker exec`.

## Comandos Correctos

### 1. Verificar Conexión a PostgreSQL

```powershell
# Verificar que el contenedor está corriendo
docker ps | Select-String "chalan-backend"

# Verificar variables de entorno dentro del contenedor
docker exec chalan-backend env | Select-String "POSTGRES|DATABASE"

# Verificar conexión a la base de datos
docker exec chalan-backend python manage.py check --database default
```

### 2. Crear Migraciones

```powershell
# Crear migraciones para appcore
docker exec chalan-backend python manage.py makemigrations appcore

# Crear migraciones para todas las apps
docker exec chalan-backend python manage.py makemigrations
```

### 3. Aplicar Migraciones

```powershell
# Aplicar migraciones al schema público (SHARED_APPS)
docker exec chalan-backend python manage.py migrate --schema=public

# O usar migrate_schemas para aplicar a todos los schemas
docker exec chalan-backend python manage.py migrate_schemas --schema=public
```

### 4. Ver Estado de Migraciones

```powershell
# Ver todas las migraciones aplicadas
docker exec chalan-backend python manage.py showmigrations

# Ver migraciones de una app específica
docker exec chalan-backend python manage.py showmigrations appcore
```

## Configuración Actual

### Variables de Entorno en Docker

El contenedor `chalan-backend` tiene estas variables configuradas:

```env
POSTGRES_USER=chalan_user
POSTGRES_PASSWORD=chalan_password
POSTGRES_DB=chalan_sch_txn
POSTGRES_HOST=chalan_postgres
DATABASE_URL=postgres://chalan_user:chalan_password@chalan_postgres:5432/chalan_sch_txn
```

### Configuración en `project/settings/local.py`

```python
DATABASES = {
    'default': {
        'ENGINE': 'django_tenants.postgresql_backend',
        'NAME': os.environ.get('POSTGRES_DB', 'chalan_tenant_db'),  # Usa chalan_sch_txn desde .env
        'USER': os.environ.get('POSTGRES_USER', 'chalan_user'),
        'PASSWORD': os.environ.get('POSTGRES_PASSWORD', 'chalan_password'),
        'HOST': POSTGRES_HOST,  # 'chalan_postgres' dentro de Docker
        'PORT': os.environ.get('POSTGRES_PORT', '5432'),
    }
}
```

## Verificación de Conexión

### Desde el Contenedor Backend

```powershell
# Verificar configuración de base de datos
docker exec chalan-backend python -c "import os; from django.conf import settings; os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'project.settings.local'); import django; django.setup(); print('DB NAME:', settings.DATABASES['default']['NAME']); print('DB HOST:', settings.DATABASES['default']['HOST']); print('DB USER:', settings.DATABASES['default']['USER'])"
```

**Salida esperada:**
```
DB NAME: chalan_sch_txn
DB HOST: chalan_postgres
DB USER: chalan_user
```

### Desde PostgreSQL Directamente

```powershell
# Listar bases de datos
docker exec chalan_postgres psql -U chalan_user -d chalan_sch_txn -c "\l"

# Ver tablas en el schema public
docker exec chalan_postgres psql -U chalan_user -d chalan_sch_txn -c "\dt"

# Ver migraciones aplicadas
docker exec chalan_postgres psql -U chalan_user -d chalan_sch_txn -c "SELECT app, name, applied FROM django_migrations ORDER BY applied DESC LIMIT 10;"
```

## Problemas Comunes

### Error: "No changes detected"

**Causa:** Los campos ya existen en la base de datos o el modelo está sincronizado.

**Solución:** Verifica el estado de las migraciones:
```powershell
docker exec chalan-backend python manage.py showmigrations appcore
```

Si todas las migraciones están aplicadas (`[X]`), entonces no hay cambios que migrar.

### Error: "connection refused" o "could not connect"

**Causa:** Estás ejecutando el comando desde fuera del contenedor Docker.

**Solución:** Usa `docker exec chalan-backend` antes del comando:
```powershell
# ❌ INCORRECTO (desde PowerShell directamente)
python manage.py migrate

# ✅ CORRECTO (desde dentro del contenedor)
docker exec chalan-backend python manage.py migrate
```

### Error: "relation does not exist"

**Causa:** Las migraciones no se han aplicado al schema público.

**Solución:** Aplica las migraciones primero:
```powershell
docker exec chalan-backend python manage.py migrate --schema=public
```

## Flujo Completo de Migraciones

### 1. Hacer Cambios en los Modelos

Edita los archivos en `appcore/models.py` o cualquier otro modelo.

### 2. Crear Migraciones

```powershell
docker exec chalan-backend python manage.py makemigrations appcore
```

### 3. Aplicar Migraciones al Schema Público

```powershell
docker exec chalan-backend python manage.py migrate --schema=public
```

### 4. Aplicar Migraciones a Todos los Schemas de Tenants

```powershell
docker exec chalan-backend python manage.py migrate_schemas
```

### 5. Verificar

```powershell
docker exec chalan-backend python manage.py showmigrations appcore
```

## Notas Importantes

1. **Siempre usa `docker exec`** para ejecutar comandos de Django cuando trabajas con Docker Compose.

2. **El schema `public`** contiene las tablas compartidas (como `appcore_tenant` y `appcore_domain`).

3. **Cada tenant tiene su propio schema** (ej: `tenant_phoenix`, `tenant_client2`), y las migraciones deben aplicarse a cada uno.

4. **Las migraciones de SHARED_APPS** (como `appcore`) solo se aplican al schema `public`.

5. **Las migraciones de TENANT_APPS** (como `appinventory`, `ctrctsapp`) se aplican a cada schema de tenant.

## Referencias

- [Django Tenants Documentation](https://django-tenants.readthedocs.io/)
- [Docker Compose Networking](https://docs.docker.com/compose/networking/)

