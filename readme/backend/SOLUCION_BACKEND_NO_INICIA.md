# 🔧 Solución: Contenedor chalan-backend No Inicia

## ❌ Problema Identificado

El contenedor `chalan-backend` no iniciaba debido a varios problemas:

1. **Falta de dependencia**: `django-tenants` no estaba instalado en la imagen Docker
2. **Conflicto de versiones**: `django-tenants 3.5.0` requiere Django < 4.3, pero el proyecto usaba Django 5.0.3
3. **Configuración incorrecta**: `DJANGO_SETTINGS_MODULE` apuntaba a `project.settings` en lugar de `project.settings.local`
4. **Orden de INSTALLED_APPS**: `daphne` debe ir antes de `django.contrib.staticfiles`
5. **Conexión a base de datos**: El HOST estaba configurado como `localhost` en lugar del nombre del servicio Docker

---

## ✅ Soluciones Aplicadas

### 1. Ajustar Versión de Django

**Archivo:** `requirements.txt`

```diff
- Django==5.0.3
+ Django>=4.2,<4.3
```

**Razón:** `django-tenants 3.5.0` solo es compatible con Django < 4.3

### 2. Actualizar docker-compose.local.yml

**Archivo:** `docker-compose.local.yml`

```yaml
environment:
  DJANGO_SETTINGS_MODULE: project.settings.local  # ← Cambiado
  ENVIRONMENT: local  # ← Agregado
  POSTGRES_HOST: chalan_postgres  # ← Agregado
```

### 3. Corregir Orden de INSTALLED_APPS

**Archivo:** `project/settings/base.py`

```python
SHARED_APPS = [
    'django_tenants',  # Debe ir primero
    'daphne',  # ← Movido antes de django.contrib.staticfiles
    'django.contrib.contenttypes',
    # ...
]
```

### 4. Detectar Automáticamente el HOST de PostgreSQL

**Archivo:** `project/settings/local.py`

```python
# Detectar si estamos en Docker
import socket
try:
    socket.gethostbyname('chalan_postgres')
    POSTGRES_HOST = 'chalan_postgres'  # Nombre del servicio Docker
except socket.gaierror:
    POSTGRES_HOST = 'localhost'  # Fuera de Docker
```

### 5. Actualizar Comando de Inicio

**Archivo:** `docker-compose.local.yml`

```yaml
command: sh -c "python manage.py migrate_schemas --schema=public && python manage.py runserver 0.0.0.0:8000"
```

---

## 🚀 Pasos para Resolver

### Paso 1: Reconstruir la Imagen

```bash
docker-compose -f docker-compose.local.yml build backend --no-cache
```

### Paso 2: Reiniciar el Contenedor

```bash
docker-compose -f docker-compose.local.yml up -d backend
```

### Paso 3: Verificar Logs

```bash
docker logs chalan-backend --tail 50
```

### Paso 4: Verificar Estado

```bash
docker ps | grep chalan-backend
```

---

## ✅ Verificación de Éxito

El contenedor está funcionando correctamente si:

1. ✅ El estado muestra `Up` en lugar de `Exited`
2. ✅ Los logs muestran: `Watching for file changes with StatReloader`
3. ✅ No hay errores de `ModuleNotFoundError`
4. ✅ No hay errores de conexión a base de datos
5. ✅ El servidor responde en `http://localhost:8000`

---

## 📋 Checklist de Verificación

- [x] `django-tenants` agregado a `requirements.txt`
- [x] Django ajustado a versión compatible (4.2.x)
- [x] `DJANGO_SETTINGS_MODULE` configurado correctamente
- [x] `daphne` antes de `django.contrib.staticfiles`
- [x] `POSTGRES_HOST` configurado para Docker
- [x] Comando de inicio actualizado para multi-tenant
- [x] Imagen Docker reconstruida
- [x] Contenedor iniciado exitosamente

---

## 🔍 Comandos Útiles

### Ver Logs en Tiempo Real

```bash
docker logs -f chalan-backend
```

### Reiniciar Solo el Backend

```bash
docker-compose -f docker-compose.local.yml restart backend
```

### Ejecutar Comandos Django

```bash
docker exec chalan-backend python manage.py migrate_schemas --schema=public
```

### Verificar Conexión a Base de Datos

```bash
docker exec chalan-backend python manage.py dbshell
```

---

## 🐛 Troubleshooting Adicional

### Si el contenedor sigue fallando:

1. **Verificar que PostgreSQL esté corriendo:**
   ```bash
   docker ps | grep chalan_postgres
   ```

2. **Verificar variables de entorno:**
   ```bash
   docker exec chalan-backend env | grep POSTGRES
   ```

3. **Verificar red Docker:**
   ```bash
   docker network inspect chalan_inv_txn_default
   ```

4. **Reconstruir desde cero:**
   ```bash
   docker-compose -f docker-compose.local.yml down
   docker-compose -f docker-compose.local.yml build --no-cache
   docker-compose -f docker-compose.local.yml up -d
   ```

---

## 📝 Notas Importantes

- **Django 4.2.x** es compatible con `django-tenants 3.5.0`
- En desarrollo local, el sistema detecta automáticamente si está en Docker
- Las migraciones multi-tenant deben ejecutarse con `migrate_schemas`
- El schema `public` debe migrarse primero antes de crear tenants

---

**✅ Problema Resuelto - Contenedor funcionando correctamente**

