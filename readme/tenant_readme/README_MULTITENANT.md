# 🏗️ Chalan-Pro Multi-tenant - Documentación Principal

Sistema ERP multi-tenant desarrollado con Django, Vue.js, PostgreSQL y Docker.

---

## 🚀 Inicio Rápido

```bash
# 1. Configurar variables de entorno
cp .env.multitenant.example .env

# 2. Configurar dominios locales (ver MULTITENANT_QUICKSTART.md)

# 3. Desplegar
chmod +x scripts/*.sh
./scripts/deploy.sh 2.0.0 local
```

**Acceso:**
- Phoenix: http://phoenix.localhost
- Client2: http://client2.localhost
- PgAdmin: http://localhost:5050

---

## 📚 Documentación Completa

### Para Empezar
- **[MULTITENANT_QUICKSTART.md](MULTITENANT_QUICKSTART.md)**: Inicio rápido en 5 minutos
- **[MULTITENANT_SETUP.md](MULTITENANT_SETUP.md)**: Guía completa de configuración

### Gestión y Operaciones
- **[FLUJO_ACTUALIZACION_COMPLETO.md](FLUJO_ACTUALIZACION_COMPLETO.md)**: Cómo actualizar el sistema
- **[IMPLEMENTACION_MULTITENANT.md](IMPLEMENTACION_MULTITENANT.md)**: Resumen técnico de implementación

### Planes y Arquitectura
- **[PLAN_ESTRUCTURAL_MULTITENANT.md](PLAN_ESTRUCTURAL_MULTITENANT.md)**: Arquitectura completa
- **[flujo_actualizacion_multitenant.md](flujo_actualizacion_multitenant.md)**: Flujo de actualización original

---

## 🏗️ Arquitectura

```
┌─────────────────────────────────────────┐
│      nginx-proxy + Let's Encrypt        │
└─────────────────────────────────────────┘
              │
    ┌─────────┴─────────┐
    │                   │
┌───▼───┐         ┌─────▼─────┐
│Phoenix│         │  Client2  │
│Tenant │         │  Tenant   │
└───┬───┘         └─────┬─────┘
    │                   │
    └─────────┬─────────┘
              │
    ┌─────────▼─────────┐
    │   PostgreSQL       │
    │  (Schemas por      │
    │   tenant)          │
    └────────────────────┘
```

---

## 📦 Componentes Principales

### Backend
- **Django 5.0** con `django-tenants`
- **PostgreSQL 15** con schemas por tenant
- **Redis** para cache y sesiones
- **Celery** (opcional) para tareas asíncronas

### Frontend
- **Vue.js** compilado y servido por Nginx
- **Una sola build** compartida por todos los tenants

### Infraestructura
- **Docker Compose** para orquestación
- **nginx-proxy** para reverse proxy automático
- **Let's Encrypt** para SSL automático

---

## 🔧 Comandos Principales

### Despliegue
```bash
# Despliegue completo
./scripts/deploy.sh 2.0.0 local

# Actualizar todos los tenants
./scripts/update-all-tenants.sh 2.1.0

# Rollout progresivo
./scripts/rollout-progressive.sh 2.1.0
```

### Gestión de Tenants
```bash
# Crear nuevo tenant
./scripts/create-tenant.sh "Nombre" tenant_nuevo nuevo.localhost nuevo_001

# Backup de tenant
./scripts/backup-tenant.sh tenant_phoenix

# Migraciones por tenant
./scripts/migrate-tenant.sh tenant_phoenix chalan-phoenix-web
```

### Operaciones Docker
```bash
# Ver servicios
docker-compose -f docker-compose.multitenant.yml ps

# Ver logs
docker-compose -f docker-compose.multitenant.yml logs -f

# Reiniciar servicio
docker-compose -f docker-compose.multitenant.yml restart web-phoenix
```

---

## 📋 Características

✅ **Multi-tenant**: Múltiples clientes en una sola infraestructura  
✅ **Aislamiento de datos**: Schemas separados en PostgreSQL  
✅ **SSL automático**: Let's Encrypt gestiona certificados  
✅ **Escalable**: Fácil agregar nuevos tenants  
✅ **Automatizado**: Scripts para todas las operaciones  
✅ **Portable**: Funciona igual en local y producción  

---

## 🎯 Flujo de Actualización

### Actualización Global (Recomendado)

```bash
# 1. Construir imagen (una vez)
docker build -t chalanpro:2.1.0 .

# 2. Compilar frontend (una vez)
cd vuefrontend && npm run build && cd ..

# 3. Actualizar servicios
docker-compose -f docker-compose.multitenant.yml up -d --force-recreate \
    web-phoenix web-client2 nginx-phoenix nginx-client2

# 4. Migraciones
docker-compose -f docker-compose.multitenant.yml exec web-phoenix \
    python manage.py migrate_schemas --schema=tenant_phoenix
```

**O usar el script automatizado:**
```bash
./scripts/update-all-tenants.sh 2.1.0
```

### Rollout Progresivo (Producción)

```bash
./scripts/rollout-progressive.sh 2.1.0
```

---

## 🔐 Seguridad

- ✅ Datos aislados por schema PostgreSQL
- ✅ SSL/TLS automático con Let's Encrypt
- ✅ Variables de entorno para secretos
- ✅ Configuración de seguridad por ambiente

---

## 📊 Estructura de Archivos

```
chalan_inv_txn/
├── docker-compose.multitenant.yml  # Configuración multi-tenant
├── Dockerfile                       # Imagen backend
├── requirements.txt                 # Dependencias Python
├── project/
│   └── settings/                    # Settings por ambiente
├── appcore/
│   └── models.py                    # Modelos Tenant/Domain
├── docker/
│   └── postgres/
│       └── init-tenant-schemas.sql  # Inicialización schemas
├── scripts/                         # Scripts de gestión
└── readme/                          # Documentación completa
```

---

## 🆘 Soporte

### Problemas Comunes

**Servicios no inician:**
```bash
docker-compose -f docker-compose.multitenant.yml logs
```

**Dominios no funcionan:**
- Verificar `/etc/hosts` (Linux/Mac) o `C:\Windows\System32\drivers\etc\hosts` (Windows)

**Base de datos no conecta:**
```bash
docker exec chalan-multitenant-db pg_isready -U chalan_user
```

Ver [MULTITENANT_SETUP.md](MULTITENANT_SETUP.md) para más troubleshooting.

---

## 📝 Checklist de Despliegue

- [ ] Docker y Docker Compose instalados
- [ ] Variables de entorno configuradas (.env)
- [ ] Dominios locales configurados
- [ ] Frontend compilado
- [ ] Servicios levantados
- [ ] Migraciones ejecutadas
- [ ] Tenants accesibles

---

## 🎉 Estado del Proyecto

**✅ IMPLEMENTACIÓN COMPLETA**

El sistema multi-tenant está completamente configurado y listo para:
- Desarrollo local
- Ambiente de pruebas (QA)
- Producción en VPS

---

## 📞 Contacto y Contribuciones

Para más información, consulta la documentación en `readme/` o los scripts en `scripts/`.

---

**Chalan-Pro Multi-tenant v2.0.0** 🚀

