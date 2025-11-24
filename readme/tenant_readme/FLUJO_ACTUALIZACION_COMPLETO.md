# 🔄 Flujo Completo de Actualización Multi-tenant

Este documento describe el proceso completo de actualización del sistema Chalan-Pro multi-tenant, incluyendo backend, frontend y despliegue.

---

## 📊 Arquitectura de Actualización

```
┌─────────────────────────────────────────────────────────┐
│              Proceso de Actualización                   │
└─────────────────────────────────────────────────────────┘
                        │
        ┌───────────────┴───────────────┐
        │                               │
   ┌────▼────┐                    ┌────▼────┐
   │ Backend │                    │Frontend │
   │  Build  │                    │  Build  │
   └────┬────┘                    └────┬────┘
        │                               │
        └───────────────┬───────────────┘
                        │
                ┌───────▼───────┐
                │  Imagen Docker│
                │ chalanpro:2.X │
                └───────┬───────┘
                        │
        ┌───────────────┴───────────────┐
        │                               │
   ┌────▼────┐                    ┌────▼────┐
   │  Web   │                    │  Nginx  │
   │Services│                    │Services │
   └────────┘                    └─────────┘
```

---

## 🚀 Flujo de Actualización Global

### Paso 1: Preparación

```bash
# 1. Asegurarse de estar en la rama correcta
git checkout main
git pull origin main

# 2. Verificar cambios
git log --oneline -10

# 3. Actualizar dependencias si es necesario
pip install -r requirements.txt
cd vuefrontend && npm install && cd ..
```

### Paso 2: Construcción

```bash
# Construir imagen del backend (una sola vez para todos los tenants)
docker build -t chalanpro:2.1.0 .

# Compilar frontend Vue.js (una sola vez, compartido por todos)
cd vuefrontend
npm run build
cd ..
```

**Nota importante:** 
- ✅ Se construye **UNA SOLA** imagen `chalanpro:2.1.0` que será usada por todos los tenants
- ✅ El frontend se compila **UNA SOLA VEZ** y se monta en todos los contenedores nginx

### Paso 3: Actualización de Servicios

#### Opción A: Actualización Global (Todos a la vez)

```bash
# Actualizar todos los servicios backend
docker-compose -f docker-compose.multitenant.yml up -d --force-recreate \
    web-phoenix \
    web-client2 \
    web-client3

# Actualizar todos los servicios frontend
docker-compose -f docker-compose.multitenant.yml up -d --force-recreate \
    nginx-phoenix \
    nginx-client2 \
    nginx-client3
```

#### Opción B: Rollout Progresivo (Recomendado para Producción)

```bash
# Actualizar tenant por tenant, validando entre cada uno
./scripts/rollout-progressive.sh 2.1.0
```

### Paso 4: Migraciones

```bash
# Ejecutar migraciones para cada tenant
docker-compose -f docker-compose.multitenant.yml exec web-phoenix \
    python manage.py migrate_schemas --schema=tenant_phoenix

docker-compose -f docker-compose.multitenant.yml exec web-client2 \
    python manage.py migrate_schemas --schema=tenant_client2
```

### Paso 5: Verificación

```bash
# Verificar estado de servicios
docker-compose -f docker-compose.multitenant.yml ps

# Ver logs
docker-compose -f docker-compose.multitenant.yml logs -f web-phoenix

# Probar endpoints
curl http://phoenix.localhost/api/
curl http://client2.localhost/api/
```

---

## 📝 Scripts Automatizados

### Actualización Global Completa

```bash
./scripts/update-all-tenants.sh 2.1.0
```

Este script ejecuta automáticamente:
1. ✅ Construcción de imagen `chalanpro:2.1.0`
2. ✅ Compilación del frontend Vue.js
3. ✅ Actualización de todos los servicios web
4. ✅ Actualización de todos los servicios nginx
5. ✅ Ejecución de migraciones por tenant
6. ✅ Verificación de estado

### Rollout Progresivo

```bash
./scripts/rollout-progressive.sh 2.1.0
```

Este script:
1. ✅ Construye imagen y frontend una sola vez
2. ✅ Actualiza tenant por tenant
3. ✅ Pausa entre cada tenant para validación
4. ✅ Permite cancelar si hay problemas

---

## 🔍 Detalles Técnicos

### ¿Por qué una sola imagen?

```yaml
# docker-compose.multitenant.yml
web-phoenix:
  image: chalanpro:2.1.0  # ← Misma imagen
  environment:
    - TENANT_SCHEMA=tenant_phoenix  # ← Diferencia por variable

web-client2:
  image: chalanpro:2.1.0  # ← Misma imagen
  environment:
    - TENANT_SCHEMA=tenant_client2  # ← Diferencia por variable
```

**Ventajas:**
- ✅ Construcción más rápida (una sola vez)
- ✅ Consistencia entre tenants
- ✅ Menor uso de espacio en disco
- ✅ Actualización sincronizada

### ¿Por qué un solo build del frontend?

```yaml
nginx-phoenix:
  volumes:
    - ./vuefrontend/dist:/usr/share/nginx/html:ro  # ← Mismo dist

nginx-client2:
  volumes:
    - ./vuefrontend/dist:/usr/share/nginx/html:ro  # ← Mismo dist
```

**Ventajas:**
- ✅ Compilación más rápida
- ✅ Consistencia de UI entre tenants
- ✅ Fácil mantenimiento

**Nota:** Si necesitas personalización por tenant, puedes:
1. Usar variables de entorno en el build
2. Crear builds separados con diferentes configuraciones
3. Usar un sistema de temas/configuración dinámica

---

## 🎯 Estrategias de Despliegue

### 1. Blue-Green Deployment

```bash
# Construir nueva versión
docker build -t chalanpro:2.1.0-green .

# Actualizar servicios uno por uno
docker-compose -f docker-compose.multitenant.yml up -d --force-recreate web-phoenix

# Si todo está bien, continuar con el resto
docker-compose -f docker-compose.multitenant.yml up -d --force-recreate web-client2
```

### 2. Canary Deployment

```bash
# Actualizar solo un tenant primero (canary)
docker-compose -f docker-compose.multitenant.yml up -d --force-recreate web-phoenix

# Monitorear por 24 horas
# Si todo está bien, actualizar el resto
docker-compose -f docker-compose.multitenant.yml up -d --force-recreate web-client2 web-client3
```

### 3. Rolling Update

```bash
# Actualizar servicios con delay entre cada uno
for tenant in phoenix client2 client3; do
    docker-compose -f docker-compose.multitenant.yml up -d --force-recreate web-$tenant
    sleep 30  # Esperar 30 segundos entre cada actualización
done
```

---

## 📊 Monitoreo Post-Actualización

### Verificar Logs

```bash
# Logs de todos los servicios
docker-compose -f docker-compose.multitenant.yml logs -f

# Logs de un tenant específico
docker-compose -f docker-compose.multitenant.yml logs -f web-phoenix

# Logs de errores únicamente
docker-compose -f docker-compose.multitenant.yml logs | grep -i error
```

### Verificar Salud de Servicios

```bash
# Estado de contenedores
docker-compose -f docker-compose.multitenant.yml ps

# Uso de recursos
docker stats

# Conectividad a base de datos
docker exec chalan-multitenant-db pg_isready -U chalan_user
```

### Verificar Endpoints

```bash
# Health check
curl http://phoenix.localhost/api/health/
curl http://client2.localhost/api/health/

# API endpoints
curl -H "Authorization: Token <token>" http://phoenix.localhost/api/contracts/
```

---

## 🔄 Rollback (Revertir Actualización)

Si algo sale mal, puedes revertir fácilmente:

```bash
# 1. Reconstruir imagen anterior
docker build -t chalanpro:2.0.0 .

# 2. Revertir servicios
docker-compose -f docker-compose.multitenant.yml up -d --force-recreate \
    web-phoenix \
    web-client2

# 3. Verificar
docker-compose -f docker-compose.multitenant.yml ps
```

---

## ✅ Checklist de Actualización

### Pre-actualización
- [ ] Backup de base de datos de todos los tenants
- [ ] Verificar que no hay migraciones pendientes
- [ ] Comunicar mantenimiento a usuarios (si es producción)
- [ ] Verificar que el código está en la rama correcta

### Durante Actualización
- [ ] Construir nueva imagen
- [ ] Compilar frontend
- [ ] Actualizar servicios (global o progresivo)
- [ ] Ejecutar migraciones
- [ ] Verificar logs

### Post-actualización
- [ ] Verificar que todos los servicios están corriendo
- [ ] Probar endpoints principales
- [ ] Verificar que no hay errores en logs
- [ ] Monitorear por al menos 1 hora
- [ ] Documentar cambios y versión desplegada

---

## 🚨 Troubleshooting

### Problema: Servicio no inicia después de actualización

```bash
# Ver logs detallados
docker-compose -f docker-compose.multitenant.yml logs web-phoenix

# Verificar imagen
docker images | grep chalanpro

# Reconstruir si es necesario
docker build -t chalanpro:2.1.0 .
```

### Problema: Frontend no se actualiza

```bash
# Verificar que dist existe
ls -la vuefrontend/dist/

# Recompilar
cd vuefrontend && npm run build && cd ..

# Reiniciar nginx
docker-compose -f docker-compose.multitenant.yml restart nginx-phoenix
```

### Problema: Migraciones fallan

```bash
# Ver migraciones pendientes
docker exec chalan-phoenix-web python manage.py showmigrations --schema=tenant_phoenix

# Ejecutar migraciones manualmente
docker exec chalan-phoenix-web python manage.py migrate_schemas --schema=tenant_phoenix
```

---

## 📚 Referencias

- [Docker Compose Documentation](https://docs.docker.com/compose/)
- [Django Tenants Migrations](https://django-tenants.readthedocs.io/en/latest/migrations.html)
- [nginx-proxy Documentation](https://github.com/nginx-proxy/nginx-proxy)

---

**¡Actualización completada exitosamente!** 🎉

