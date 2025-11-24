# 🏗️ Guía de Configuración Multi-tenant Chalan-Pro

Esta guía te ayudará a configurar y desplegar el sistema multi-tenant de Chalan-Pro usando Django Tenants, PostgreSQL, Docker y nginx-proxy.

---

## 📋 Tabla de Contenidos

1. [Requisitos Previos](#requisitos-previos)
2. [Estructura del Proyecto](#estructura-del-proyecto)
3. [Configuración Inicial](#configuración-inicial)
4. [Despliegue Local](#despliegue-local)
5. [Gestión de Tenants](#gestión-de-tenants)
6. [Actualización del Sistema](#actualización-del-sistema)
7. [Despliegue en Producción](#despliegue-en-producción)
8. [Troubleshooting](#troubleshooting)

---

## 🔧 Requisitos Previos

- **Docker** y **Docker Compose** instalados
- **Node.js** y **npm** (para compilar el frontend)
- **Git** (para clonar el repositorio)
- **PostgreSQL** (opcional, se usa el contenedor Docker)

### Verificar Instalación

```bash
docker --version
docker-compose --version
node --version
npm --version
```

---

## 📁 Estructura del Proyecto

```
chalan_inv_txn/
├── docker-compose.multitenant.yml  # Configuración multi-tenant
├── Dockerfile                        # Imagen del backend
├── requirements.txt                 # Dependencias Python
├── .env.multitenant.example         # Variables de entorno ejemplo
├── project/
│   ├── settings/
│   │   ├── base.py                  # Configuración base
│   │   ├── local.py                 # Desarrollo local
│   │   ├── production.py            # Producción
│   │   └── qa.py                    # QA/Staging
├── appcore/
│   └── models.py                    # Modelos Tenant y Domain
├── docker/
│   └── postgres/
│       └── init-tenant-schemas.sql  # Inicialización de schemas
├── scripts/
│   ├── create-tenant.sh            # Crear nuevo tenant
│   ├── backup-tenant.sh            # Backup de tenant
│   ├── migrate-tenant.sh           # Migraciones por tenant
│   ├── deploy.sh                   # Despliegue completo
│   ├── update-all-tenants.sh       # Actualización global
│   └── rollout-progressive.sh      # Rollout progresivo
└── vuefrontend/
    └── dist/                        # Frontend compilado
```

---

## ⚙️ Configuración Inicial

### 1. Clonar y Configurar Variables de Entorno

```bash
# Copiar archivo de ejemplo
cp .env.multitenant.example .env

# Editar .env con tus valores
nano .env  # o usa tu editor preferido
```

### 2. Configurar Dominios Locales (Windows)

Edita `C:\Windows\System32\drivers\etc\hosts` y agrega:

```
127.0.0.1 phoenix.localhost
127.0.0.1 api.phoenix.localhost
127.0.0.1 client2.localhost
127.0.0.1 api.client2.localhost
```

### 3. Configurar Dominios Locales (Linux/Mac)

Edita `/etc/hosts` y agrega:

```
127.0.0.1 phoenix.localhost
127.0.0.1 api.phoenix.localhost
127.0.0.1 client2.localhost
127.0.0.1 api.client2.localhost
```

---

## 🚀 Despliegue Local

### Opción 1: Script Automatizado (Recomendado)

```bash
# Dar permisos de ejecución (Linux/Mac)
chmod +x scripts/*.sh

# Ejecutar despliegue completo
./scripts/deploy.sh 2.0.0 local
```

### Opción 2: Manual

```bash
# 1. Construir imagen del backend
docker build -t chalanpro:2.0.0 .

# 2. Compilar frontend
cd vuefrontend
npm install
npm run build
cd ..

# 3. Crear red Docker
docker network create chalan-nginx-proxy

# 4. Levantar servicios
docker-compose -f docker-compose.multitenant.yml up -d

# 5. Ejecutar migraciones
docker-compose -f docker-compose.multitenant.yml exec web-phoenix python manage.py migrate_schemas
```

### Verificar Despliegue

```bash
# Ver estado de servicios
docker-compose -f docker-compose.multitenant.yml ps

# Ver logs
docker-compose -f docker-compose.multitenant.yml logs -f

# Acceder a los tenants
# - Phoenix: http://phoenix.localhost
# - Client2: http://client2.localhost
# - PgAdmin: http://localhost:5050
```

---

## 👥 Gestión de Tenants

### Crear un Nuevo Tenant

```bash
# Ejecutar script de creación
./scripts/create-tenant.sh "Nombre Cliente" tenant_nuevo nuevo.localhost nuevo_001

# O manualmente:
# 1. Crear schema en PostgreSQL
docker exec chalan-multitenant-db psql -U chalan_user -d chalan_tenant_db -c "CREATE SCHEMA tenant_nuevo;"

# 2. Crear tenant en Django
docker exec chalan-phoenix-web python manage.py shell
# En el shell:
from appcore.models import Tenant, Domain
tenant = Tenant.objects.create(name="Nombre Cliente", schema_name="tenant_nuevo", tenant_id="nuevo_001")
Domain.objects.create(domain="nuevo.localhost", tenant=tenant, is_primary=True)

# 3. Ejecutar migraciones
docker exec chalan-phoenix-web python manage.py migrate_schemas --schema=tenant_nuevo
```

### Agregar Servicios al docker-compose

Agrega al `docker-compose.multitenant.yml`:

```yaml
web-nuevo:
  build:
    context: .
    dockerfile: Dockerfile
  image: chalanpro:${VERSION:-2.0.0}
  container_name: chalan-nuevo-web
  environment:
    - VIRTUAL_HOST=api.nuevo.localhost
    - TENANT_SCHEMA=tenant_nuevo
    - TENANT_ID=nuevo_001
    # ... resto de configuración

nginx-nuevo:
  image: nginx:1.19.0-alpine
  container_name: chalan-nuevo-nginx
  environment:
    - VIRTUAL_HOST=nuevo.localhost
    - TENANT_SCHEMA=tenant_nuevo
  # ... resto de configuración
```

### Backup de Tenant

```bash
# Backup de un tenant específico
./scripts/backup-tenant.sh tenant_phoenix

# Los backups se guardan en: ./backups/<schema_name>/
```

### Restaurar Backup

```bash
# Restaurar desde backup
docker exec -i chalan-multitenant-db psql -U chalan_user -d chalan_tenant_db < backups/tenant_phoenix/tenant_phoenix_20240101_120000.sql
```

### Migraciones por Tenant

```bash
# Ejecutar migraciones en un tenant específico
./scripts/migrate-tenant.sh tenant_phoenix chalan-phoenix-web

# O manualmente:
docker exec chalan-phoenix-web python manage.py migrate_schemas --schema=tenant_phoenix
```

---

## 🔄 Actualización del Sistema

### Actualización Global (Todos los Tenants)

```bash
# Usar script automatizado
./scripts/update-all-tenants.sh 2.1.0

# Esto:
# 1. Construye nueva imagen chalanpro:2.1.0
# 2. Compila frontend Vue.js
# 3. Actualiza todos los servicios web y nginx
# 4. Ejecuta migraciones para cada tenant
```

### Rollout Progresivo (Recomendado para Producción)

```bash
# Actualiza un tenant a la vez, pausando entre cada uno
./scripts/rollout-progressive.sh 2.1.0

# Esto permite validar cada tenant antes de continuar
```

### Actualización Manual

```bash
# 1. Construir nueva imagen
docker build -t chalanpro:2.1.0 .

# 2. Compilar frontend
cd vuefrontend && npm run build && cd ..

# 3. Actualizar servicios específicos
docker-compose -f docker-compose.multitenant.yml up -d --force-recreate web-phoenix nginx-phoenix

# 4. Ejecutar migraciones
docker-compose -f docker-compose.multitenant.yml exec web-phoenix python manage.py migrate_schemas --schema=tenant_phoenix
```

---

## 🌐 Despliegue en Producción (VPS)

### Preparación del Servidor

```bash
# 1. Instalar Docker y Docker Compose
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# 2. Instalar Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# 3. Configurar firewall (si es necesario)
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 22/tcp
```

### Configuración de Producción

```bash
# 1. Clonar repositorio
git clone <tu-repo> /opt/chalan-pro
cd /opt/chalan-pro

# 2. Copiar variables de producción
cp .env.production.example .env
nano .env  # Configurar con valores reales

# 3. Configurar DNS
# Apuntar tus dominios al IP del VPS:
# - phoenixelectricandair.net → IP_VPS
# - api.phoenixelectricandair.net → IP_VPS
# - client2.example.com → IP_VPS
# - api.client2.example.com → IP_VPS

# 4. Desplegar
./scripts/deploy.sh 2.0.0 production
```

### SSL Automático con Let's Encrypt

El contenedor `nginx-proxy-letsencrypt` gestiona automáticamente los certificados SSL cuando:

1. Los dominios apuntan correctamente al servidor
2. Las variables `LETSENCRYPT_HOST` están configuradas
3. Los puertos 80 y 443 están abiertos

Los certificados se renuevan automáticamente.

---

## 🐛 Troubleshooting

### Problema: Los servicios no inician

```bash
# Ver logs detallados
docker-compose -f docker-compose.multitenant.yml logs

# Verificar estado de contenedores
docker ps -a

# Reiniciar servicios
docker-compose -f docker-compose.multitenant.yml restart
```

### Problema: Error de conexión a base de datos

```bash
# Verificar que PostgreSQL está corriendo
docker exec chalan-multitenant-db pg_isready -U chalan_user

# Verificar conexión
docker exec chalan-multitenant-db psql -U chalan_user -d chalan_tenant_db -c "SELECT version();"
```

### Problema: Dominios no resuelven

```bash
# Verificar configuración de hosts
cat /etc/hosts  # Linux/Mac
# o
type C:\Windows\System32\drivers\etc\hosts  # Windows

# Verificar nginx-proxy
docker logs chalan-nginx-proxy
```

### Problema: Migraciones fallan

```bash
# Ejecutar migraciones manualmente
docker exec chalan-phoenix-web python manage.py migrate_schemas --schema=public
docker exec chalan-phoenix-web python manage.py migrate_schemas --schema=tenant_phoenix

# Verificar schemas en PostgreSQL
docker exec chalan-multitenant-db psql -U chalan_user -d chalan_tenant_db -c "\dn"
```

### Problema: Frontend no se actualiza

```bash
# Verificar que dist está compilado
ls -la vuefrontend/dist/

# Recompilar frontend
cd vuefrontend
rm -rf dist node_modules
npm install
npm run build
cd ..

# Reiniciar nginx
docker-compose -f docker-compose.multitenant.yml restart nginx-phoenix
```

---

## 📚 Recursos Adicionales

- [Django Tenants Documentation](https://django-tenants.readthedocs.io/)
- [nginx-proxy Documentation](https://github.com/nginx-proxy/nginx-proxy)
- [Let's Encrypt Companion](https://github.com/nginx-proxy/docker-letsencrypt-nginx-proxy-companion)

---

## ✅ Checklist de Despliegue

- [ ] Docker y Docker Compose instalados
- [ ] Variables de entorno configuradas (.env)
- [ ] Dominios locales configurados (hosts)
- [ ] Frontend compilado (npm run build)
- [ ] Imagen del backend construida
- [ ] Servicios levantados correctamente
- [ ] Migraciones ejecutadas
- [ ] Tenants accesibles vía navegador
- [ ] SSL funcionando (producción)
- [ ] Backups configurados

---

**¡Listo! Tu sistema multi-tenant está configurado y funcionando.** 🎉

