# Guía: Conectar pgAdmin a PostgreSQL en Render

## 📋 Resumen

Esta guía te ayudará a obtener las credenciales de tu base de datos PostgreSQL en Render y conectarte desde pgAdmin local **sin modificar nada en Render**.

## 🔍 Paso 1: Obtener las Credenciales desde Render Dashboard

### 1.1 Acceder al Dashboard de Render

1. Ve a [Render Dashboard](https://dashboard.render.com)
2. Inicia sesión con tu cuenta
3. En el menú lateral, busca y haz clic en **"Databases"** o **"PostgreSQL"**

### 1.2 Seleccionar tu Base de Datos

1. En la lista de bases de datos, encuentra tu base de datos PostgreSQL (ej: `chalan-db` o `postgre_chalan_demo`)
2. Haz clic en el nombre de la base de datos para abrir sus detalles

### 1.3 Obtener la External Database URL

⚠️ **IMPORTANTE:** Para conectarte desde pgAdmin (fuera de Render), necesitas la **External Database URL**, NO la Internal.

1. En la página de detalles de la base de datos, busca la sección **"Connections"**
2. Busca el campo **"External Database URL"** (no "Internal Database URL")
3. Haz clic en el botón **"Copy"** o **"Show"** para revelar la URL completa
4. Copia la URL completa

**Formato de la URL:**
```
postgresql://usuario:password@host:5432/database_name
```

### 1.4 Extraer las Credenciales de la URL

La URL tiene este formato:
```
postgresql://[usuario]:[password]@[host]:[port]/[database]
```

**Ejemplo de URL de Render:**
```
postgresql://postgre_chalan_demo_user:3akCvVQLY2kOIlFKEcd1yfFbS6ErF1Rr@dpg-d41983e3jp1c73cnm4k0-a.oregon-postgres.render.com:5432/postgre_chalan_demo
```

**Credenciales extraídas del ejemplo:**
- **Host:** `dpg-d41983e3jp1c73cnm4k0-a.oregon-postgres.render.com`
- **Port:** `5432`
- **Database:** `postgre_chalan_demo`
- **Username:** `postgre_chalan_demo_user`
- **Password:** `3akCvVQLY2kOIlFKEcd1yfFbS6ErF1Rr`

⚠️ **NOTA:** Estas son credenciales de ejemplo. Usa las que aparecen en **TU** dashboard de Render.

## 🔧 Paso 2: Configurar pgAdmin para Conectarse a Render

### 2.1 Abrir pgAdmin

1. Abre pgAdmin en tu navegador: `http://localhost:5050`
2. Inicia sesión con tus credenciales locales:
   - Email: `admin@chalan.com`
   - Password: `chalan_password`

### 2.2 Registrar el Servidor de Render

1. En el panel izquierdo, haz **clic derecho** en **"Servers"**
2. Selecciona **"Register"** → **"Server..."**

### 2.3 Configurar la Conexión

#### Pestaña "General"

- **Name:** `Chalan Render (Producción)` o cualquier nombre descriptivo

#### Pestaña "Connection" ⚠️ IMPORTANTE

Usa las credenciales que extrajiste del paso anterior:

| Campo | Valor (ejemplo) | Tu Valor |
|-------|----------------|----------|
| **Host name/address** | `dpg-d41983e3jp1c73cnm4k0-a.oregon-postgres.render.com` | [Tu host de Render] |
| **Port** | `5432` | `5432` |
| **Maintenance database** | `postgre_chalan_demo` | [Tu database name] |
| **Username** | `postgre_chalan_demo_user` | [Tu username] |
| **Password** | `3akCvVQLY2kOIlFKEcd1yfFbS6ErF1Rr` | [Tu password] |
| **Save password?** | ✅ **Marcar esta casilla** | ✅ |

#### Pestaña "SSL" ⚠️ CRÍTICO PARA RENDER

Render **requiere SSL** para conexiones externas. Configura:

- **SSL mode:** `Require` o `Prefer`
  - `Require`: Fuerza SSL (recomendado para producción)
  - `Prefer`: Intenta SSL primero, luego sin SSL si falla

**Configuración recomendada:**
- ✅ **SSL mode:** `Require`
- Dejar los demás campos de SSL en blanco (pgAdmin los manejará automáticamente)

#### Pestaña "Advanced" (Opcional)

- Puedes dejar los valores por defecto
- O configurar un **DB restriction** si solo quieres ver una base de datos específica

### 2.4 Guardar y Conectar

1. Haz clic en el botón **"Save"** (o "Save & Close")
2. Si la configuración es correcta, verás el servidor aparecer en el panel izquierdo
3. Puedes expandir el servidor haciendo clic en la flecha ▶️

## ✅ Paso 3: Verificar la Conexión

Si la conexión fue exitosa, deberías poder:

1. **Expandir el servidor** haciendo clic en ▶️
2. **Ver "Databases"** → expandir para ver tu base de datos
3. **Expandir la base de datos** para ver:
   - **Schemas** (incluyendo `public` y schemas de tenants)
   - **Tables**
   - **Views**
   - Etc.

## 🔍 Dónde Encontrar las Credenciales en Render Dashboard

### Ubicación Exacta en el Dashboard

1. **Render Dashboard** → **"Databases"** (menú lateral izquierdo)
2. Haz clic en tu base de datos PostgreSQL
3. En la página de detalles, busca la sección **"Connections"**
4. Verás dos URLs:
   - **Internal Database URL:** Solo funciona dentro de Render (NO usar para pgAdmin)
   - **External Database URL:** Funciona desde fuera de Render (✅ USAR ESTA)

### Visualización en Render

```
┌─────────────────────────────────────────┐
│ PostgreSQL Database: chalan-db          │
├─────────────────────────────────────────┤
│                                         │
│ Connections                             │
│ ┌─────────────────────────────────────┐ │
│ │ Internal Database URL               │ │
│ │ postgresql://...                    │ │
│ │ [Copy]                              │ │
│ └─────────────────────────────────────┘ │
│                                         │
│ ┌─────────────────────────────────────┐ │
│ │ External Database URL              │ │
│ │ postgresql://...                   │ │ ← USAR ESTA
│ │ [Show] [Copy]                      │ │
│ └─────────────────────────────────────┘ │
│                                         │
└─────────────────────────────────────────┘
```

## ⚠️ Diferencias: Internal vs External URL

### Internal Database URL
- **Formato:** `postgresql://user:pass@host:5432/db`
- **Host:** Generalmente termina en `-a` (ej: `dpg-xxx-a`)
- **Uso:** Solo funciona dentro de los servicios de Render
- **Para pgAdmin:** ❌ NO usar

### External Database URL
- **Formato:** `postgresql://user:pass@host.region-postgres.render.com:5432/db`
- **Host:** Incluye el dominio completo de Render (ej: `dpg-xxx.oregon-postgres.render.com`)
- **Uso:** Funciona desde cualquier lugar (tu PC, pgAdmin, etc.)
- **Para pgAdmin:** ✅ USAR ESTA

## 🛠️ Troubleshooting

### Error: "Connection timeout" o "Could not connect"

**Causa:** El firewall de Render puede estar bloqueando tu IP.

**Solución:**
1. Ve a tu base de datos en Render Dashboard
2. Busca la sección **"Network Access"** o **"IP Whitelist"**
3. Agrega tu IP pública actual
4. Puedes obtener tu IP en: https://whatismyipaddress.com/

### Error: "SSL connection required"

**Causa:** No configuraste SSL en pgAdmin.

**Solución:**
1. Edita el servidor en pgAdmin (clic derecho → Properties)
2. Ve a la pestaña **"SSL"**
3. Cambia **SSL mode** a `Require`
4. Guarda y reconecta

### Error: "Password authentication failed"

**Causa:** Credenciales incorrectas.

**Solución:**
1. Verifica que estés usando la **External Database URL** (no Internal)
2. Asegúrate de copiar la contraseña completa (puede ser larga)
3. Verifica que no haya espacios extra al copiar/pegar

### Error: "Database does not exist"

**Causa:** Nombre de base de datos incorrecto.

**Solución:**
1. Verifica el nombre de la base de datos en la URL
2. En Render Dashboard, verifica el nombre exacto de la base de datos
3. Usa ese nombre exacto en pgAdmin

## 📝 Notas Importantes

1. **No modifiques nada en Render:** Esta guía solo te ayuda a obtener las credenciales, no modifica la configuración de Render.

2. **Seguridad:** Las credenciales de Render son sensibles. No las compartas ni las subas a Git.

3. **SSL requerido:** Render requiere SSL para conexiones externas. Asegúrate de configurarlo en pgAdmin.

4. **IP Whitelist:** Si Render tiene IP whitelist habilitada, necesitarás agregar tu IP pública.

5. **Límites de conexión:** Algunos planes de Render tienen límites en el número de conexiones simultáneas.

## 🔐 Seguridad

### Buenas Prácticas

- ✅ Usa SSL (`Require` mode)
- ✅ Guarda la contraseña en pgAdmin (está encriptada localmente)
- ✅ No compartas las credenciales
- ✅ Usa conexiones seguras (HTTPS para pgAdmin si es posible)

### Si Necesitas Cambiar la Contraseña

Si necesitas cambiar la contraseña de la base de datos en Render:

1. Ve a tu base de datos en Render Dashboard
2. Busca **"Reset Password"** o **"Change Password"**
3. Genera una nueva contraseña
4. Actualiza la configuración en pgAdmin con la nueva contraseña

## 📚 Referencias

- [Render PostgreSQL Documentation](https://render.com/docs/databases)
- [pgAdmin Documentation](https://www.pgadmin.org/docs/)
- [PostgreSQL Connection Strings](https://www.postgresql.org/docs/current/libpq-connect.html)

## 🎯 Resumen Rápido

1. ✅ Ve a Render Dashboard → Databases → Tu base de datos
2. ✅ Copia la **External Database URL**
3. ✅ Extrae las credenciales (host, port, database, username, password)
4. ✅ En pgAdmin, registra un nuevo servidor con esas credenciales
5. ✅ Configura SSL mode = `Require`
6. ✅ Guarda y conecta

¡Listo! Ahora puedes gestionar tu base de datos de Render desde pgAdmin local.

