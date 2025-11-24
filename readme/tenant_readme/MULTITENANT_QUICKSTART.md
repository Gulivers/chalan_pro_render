# ⚡ Quick Start - Chalan-Pro Multi-tenant

Guía rápida para poner en marcha el sistema multi-tenant en 5 minutos.

---

## 🚀 Inicio Rápido

### 1. Configurar Variables de Entorno

```bash
cp .env.multitenant.example .env
# Editar .env con tus valores
```

### 2. Configurar Dominios Locales

**Windows:**
Editar `C:\Windows\System32\drivers\etc\hosts`:
```
127.0.0.1 phoenix.localhost
127.0.0.1 api.phoenix.localhost
127.0.0.1 client2.localhost
127.0.0.1 api.client2.localhost
```

**Linux/Mac:**
```bash
sudo nano /etc/hosts
# Agregar las mismas líneas
```

### 3. Desplegar

```bash
# Opción 1: Script automatizado (recomendado)
chmod +x scripts/*.sh
./scripts/deploy.sh 2.0.0 local

# Opción 2: Manual
docker build -t chalanpro:2.0.0 .
cd vuefrontend && npm install && npm run build && cd ..
docker network create chalan-nginx-proxy
docker-compose -f docker-compose.multitenant.yml up -d
```

### 4. Verificar

```bash
# Ver servicios
docker-compose -f docker-compose.multitenant.yml ps

# Acceder a:
# - Phoenix: http://phoenix.localhost
# - Client2: http://client2.localhost
# - PgAdmin: http://localhost:5050
```

---

## 📝 Comandos Útiles

### Actualizar Todos los Tenants

```bash
./scripts/update-all-tenants.sh 2.1.0
```

### Crear Nuevo Tenant

```bash
./scripts/create-tenant.sh "Nombre Cliente" tenant_nuevo nuevo.localhost nuevo_001
```

### Backup de Tenant

```bash
./scripts/backup-tenant.sh tenant_phoenix
```

### Ver Logs

```bash
docker-compose -f docker-compose.multitenant.yml logs -f web-phoenix
```

---

## 🆘 Problemas Comunes

### Servicios no inician
```bash
docker-compose -f docker-compose.multitenant.yml logs
```

### Dominios no funcionan
Verificar `/etc/hosts` o `C:\Windows\System32\drivers\etc\hosts`

### Base de datos no conecta
```bash
docker exec chalan-multitenant-db pg_isready -U chalan_user
```

---

## 📚 Documentación Completa

Ver [MULTITENANT_SETUP.md](./MULTITENANT_SETUP.md) para documentación detallada.

---

**¡Listo para empezar!** 🎉

