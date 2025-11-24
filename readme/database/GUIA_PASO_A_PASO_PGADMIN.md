# Guía Paso a Paso: Conectar PostgreSQL desde pgAdmin

## Paso 1: Acceder a pgAdmin

1. Abre tu navegador y ve a: `http://localhost:5050`
2. Deberías ver la pantalla de login de pgAdmin

## Paso 2: Iniciar Sesión en pgAdmin

**Credenciales:**
- **Email:** `admin@chalan.com`
- **Contraseña:** `chalan_password` (o la que tengas en tu archivo `.env` como `POSTGRES_PASSWORD`)

Si es la primera vez que accedes, pgAdmin puede pedirte configurar una "Master Password". Puedes usar la misma contraseña o dejarla en blanco si no quieres encriptar las contraseñas guardadas.

## Paso 3: Registrar el Servidor PostgreSQL

### Opción A: Desde el Panel Izquierdo

1. En el panel izquierdo, haz **clic derecho** en **"Servers"**
2. Selecciona **"Register"** → **"Server..."**

### Opción B: Desde el Menú

1. Ve al menú **"Object"** → **"Register"** → **"Server..."**

## Paso 4: Configurar la Conexión

### Pestaña "General"

1. **Name:** `Chalan PostgreSQL` (o cualquier nombre que prefieras)
   - Este es solo un nombre descriptivo para identificar el servidor en pgAdmin

### Pestaña "Connection" (IMPORTANTE)

Configura estos valores exactamente como se muestran:

| Campo | Valor |
|-------|-------|
| **Host name/address** | `chalan_postgres` |
| **Port** | `5432` |
| **Maintenance database** | `chalan_sch_txn` |
| **Username** | `chalan_user` |
| **Password** | `chalan_password` (o tu `POSTGRES_PASSWORD`) |
| **Save password?** | ✅ **Marcar esta casilla** |

**⚠️ IMPORTANTE:**
- **NO uses** `localhost` o `127.0.0.1` como host
- **USA** `chalan_postgres` (el nombre del servicio Docker)
- Esto es crítico porque pgAdmin está dentro de Docker y necesita usar el nombre del servicio

### Pestaña "Advanced" (Opcional)

Puedes dejar los valores por defecto o configurar:
- **DB restriction:** Dejar vacío para ver todas las bases de datos

### Pestaña "SSL" (Opcional)

Para desarrollo local, puedes dejar SSL deshabilitado.

## Paso 5: Guardar y Conectar

1. Haz clic en el botón **"Save"** (o "Save & Close")
2. Si la conexión es exitosa, verás el servidor aparecer en el panel izquierdo bajo "Servers"
3. Puedes expandir el servidor haciendo clic en la flecha ▶️

## Paso 6: Explorar las Bases de Datos

Una vez conectado, deberías poder:

1. **Expandir el servidor** haciendo clic en ▶️
2. **Ver "Databases"** → expandir para ver `chalan_sch_txn`
3. **Expandir la base de datos** `chalan_sch_txn`
4. **Ver "Schemas"** → expandir para ver:
   - `public` (schema compartido con tablas de Tenant, Domain, etc.)
   - Otros schemas de tenants si los hay (ej: `tenant_phoenix`, `tenant_client2`, etc.)

## Verificación de Conexión Exitosa

Si la conexión fue exitosa, deberías ver:

```
Servers (1)
  └─ Chalan PostgreSQL
      └─ Databases (1)
          └─ chalan_sch_txn
              ├─ Schemas
              │   ├─ public
              │   └─ [otros schemas de tenants]
              ├─ Tables
              ├─ Views
              └─ ...
```

## Problemas Comunes y Soluciones

### ❌ Error: "Could not connect to server - Name does not resolve"

**Causa:** Estás usando `localhost` en lugar de `chalan_postgres`

**Solución:**
- Usa `chalan_postgres` como Host name/address
- Verifica que los contenedores estén en la misma red Docker

### ❌ Error: "Connection refused"

**Causa:** PostgreSQL no está escuchando o el puerto es incorrecto

**Solución:**
```powershell
# Verificar que PostgreSQL esté corriendo
docker ps | Select-String "chalan_postgres"

# Verificar los logs
docker logs chalan_postgres --tail 20
```

### ❌ Error: "Authentication failed"

**Causa:** Credenciales incorrectas

**Solución:**
1. Verifica las credenciales en tu archivo `.env`:
   ```powershell
   docker exec chalan_postgres env | Select-String "POSTGRES"
   ```
2. Usa exactamente las mismas credenciales en pgAdmin

### ❌ Error: "Database does not exist"

**Causa:** El nombre de la base de datos es incorrecto

**Solución:**
1. Lista las bases de datos disponibles:
   ```powershell
   docker exec chalan_postgres psql -U chalan_user -l
   ```
2. Usa el nombre correcto en el campo "Maintenance database"

### ❌ No puedo expandir el servidor después de conectarlo

**Causa:** Puede ser un problema de permisos o la conexión no se estableció correctamente

**Solución:**
1. Elimina el servidor (clic derecho → Delete/Drop)
2. Vuelve a registrarlo con las credenciales correctas
3. Asegúrate de marcar "Save password"

## Comandos Útiles para Verificar

### Verificar que los contenedores están en la misma red

```powershell
docker inspect chalan-pgadmin --format='{{range $key, $value := .NetworkSettings.Networks}}{{$key}} {{end}}'
docker inspect chalan_postgres --format='{{range $key, $value := .NetworkSettings.Networks}}{{$key}} {{end}}'
```

Ambos deberían mostrar: `chalan_inv_txn_chalan-network`

### Probar resolución de nombres desde pgAdmin

```powershell
docker exec chalan-pgadmin ping -c 2 chalan_postgres
```

Debería responder con éxito.

### Verificar conexión directa a PostgreSQL

```powershell
docker exec chalan_postgres psql -U chalan_user -d chalan_sch_txn -c "\conninfo"
```

### Listar bases de datos

```powershell
docker exec chalan_postgres psql -U chalan_user -l
```

### Listar schemas

```powershell
docker exec chalan_postgres psql -U chalan_user -d chalan_sch_txn -c "\dn"
```

## Configuración Recomendada para Desarrollo

### Configuración de pgAdmin

1. **Preferences** → **Browser** → **Display**:
   - Marca "Show system objects?" si quieres ver objetos del sistema
   - Marca "Show system schemas?" si quieres ver schemas del sistema

2. **Preferences** → **Query Tool** → **Query History**:
   - Configura el historial de consultas según tus necesidades

## Próximos Pasos

Una vez conectado, puedes:

1. **Ejecutar consultas SQL:**
   - Clic derecho en la base de datos → **"Query Tool"**
   - Escribe tu consulta SQL
   - Ejecuta con F5 o el botón "Execute"

2. **Explorar tablas:**
   - Expandir Schemas → public → Tables
   - Ver la estructura de las tablas
   - Ver los datos con "View/Edit Data"

3. **Gestionar schemas de tenants:**
   - Cada tenant tiene su propio schema
   - Puedes explorar cada schema individualmente

## Referencias

- [pgAdmin Documentation](https://www.pgadmin.org/docs/)
- [PostgreSQL Connection Strings](https://www.postgresql.org/docs/current/libpq-connect.html)

