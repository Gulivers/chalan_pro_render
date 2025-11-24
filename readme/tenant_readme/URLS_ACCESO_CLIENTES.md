# URLs de Acceso para Clientes - Chalan-Pro Multi-Tenant

## Cliente 1: Manual Test 20251123134533

### Información del Tenant
- **Nombre**: Manual Test 20251123134533
- **Schema**: `tenant_manual_test_20251123134533`
- **Domain**: `manual-test-20251123134533.localhost`

### URLs de Acceso

#### Frontend (Nginx)
- **URL Principal**: `http://localhost:8081/`
- **URL por Dominio**: `http://manual-test-20251123134533.localhost` (requiere configuración de hosts)

#### Backend API y Admin
- **Django Admin**: `http://localhost:8001/admin/`
- **API Base**: `http://localhost:8001/api/`

---

## Cliente 2: Samuel Constructos

### Información del Tenant
- **Nombre**: Samuel Constructos
- **Schema**: `tenant_samuel_constructos_2`
- **Domain**: `samuel-constructos-2.localhost`

### URLs de Acceso

#### Frontend (Nginx)
- **URL Principal**: `http://localhost:8082/`
- **URL por Dominio**: `http://samuel-constructos-2.localhost` (requiere configuración de hosts)

#### Backend API y Admin
- **Django Admin**: `http://localhost:8002/admin/`
- **API Base**: `http://localhost:8002/api/`

---

## Resumen Rápido de URLs

### Cliente 1 (Manual Test)
- Frontend: `http://localhost:8081/`
- Admin: `http://localhost:8001/admin/`
- API: `http://localhost:8001/api/`

### Cliente 2 (Samuel Constructos)
- Frontend: `http://localhost:8082/`
- Admin: `http://localhost:8002/admin/`
- API: `http://localhost:8002/api/`

---

## Configuración de Hosts (Windows) - Opcional

Para acceder usando los dominios `.localhost` en lugar de puertos, agrega estas líneas al archivo `C:\Windows\System32\drivers\etc\hosts`:

```
127.0.0.1 manual-test-20251123134533.localhost
127.0.0.1 api.manual-test-20251123134533.localhost
127.0.0.1 samuel-constructos-2.localhost
127.0.0.1 api.samuel-constructos-2.localhost
```

**Nota**: Necesitas permisos de administrador para editar el archivo hosts.

### Pasos para editar hosts en Windows:

1. Abre PowerShell como Administrador
2. Ejecuta: `notepad C:\Windows\System32\drivers\etc\hosts`
3. Agrega las líneas anteriores
4. Guarda el archivo

---

## Verificación de Contenedores

Para verificar qué contenedores están corriendo y sus puertos:

```powershell
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}" | Select-String -Pattern "chalan"
```

---

## Credenciales de Admin

Las credenciales de Django Admin dependen de cómo se haya configurado cada tenant. Por defecto, puedes crear un superusuario con:

```powershell
docker exec chalan-backend python manage.py createsuperuser --schema=<schema_name>
```

O acceder al admin público en: `http://localhost:8000/admin/` (schema público)

---

## Notas Importantes

1. **Frontend**: El frontend Vue.js debe estar compilado en `vuefrontend/dist` antes de que el contenedor nginx pueda servirlo.

2. **Puertos**: Los puertos se asignan automáticamente cuando se crean los contenedores usando docker-py:
   - Primer tenant: Backend 8001, Frontend 8081
   - Segundo tenant: Backend 8002, Frontend 8082
   - Y así sucesivamente...

3. **Compilación del Frontend**: Si haces cambios en el frontend, debes recompilarlo:
   ```powershell
   cd vuefrontend
   npm run build
   cd ..
   ```

4. **Creación Automática**: Los contenedores se crean automáticamente cuando se crea un tenant desde la API `/api/onboarding/create-tenant/` gracias a la implementación del socket de Docker.

---

**Última actualización**: 2025-11-23
