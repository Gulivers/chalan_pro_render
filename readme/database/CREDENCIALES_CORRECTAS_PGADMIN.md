# Credenciales Correctas para pgAdmin y PostgreSQL

## ⚠️ IMPORTANTE: Credenciales Actuales

Según la configuración actual de tus contenedores Docker, las credenciales son:

### pgAdmin (Interfaz Web)

| Campo | Valor |
|-------|-------|
| **URL** | `http://localhost:5050` |
| **Email** | `admin@chalan.com` |
| **Contraseña** | `chalan_password` |

### PostgreSQL (Servidor de Base de Datos)

| Campo | Valor |
|-------|-------|
| **Host name/address** | `chalan_postgres` |
| **Port** | `5432` |
| **Maintenance database** | `chalan_sch_txn` |
| **Username** | `chalan_user` |
| **Password** | `chalan_password` |

## Verificación de Credenciales

Para verificar las credenciales actuales en tus contenedores:

```powershell
# Ver credenciales de PostgreSQL
docker exec chalan_postgres env | Select-String "POSTGRES"

# Ver credenciales de pgAdmin
docker exec chalan-pgadmin env | Select-String "PGADMIN|POSTGRES"
```

**Salida esperada:**
```
POSTGRES_PASSWORD=chalan_password
POSTGRES_DB=chalan_sch_txn
POSTGRES_USER=chalan_user
PGADMIN_DEFAULT_PASSWORD=chalan_password
```

## Configuración en pgAdmin

### Paso 1: Login en pgAdmin

1. Accede a `http://localhost:5050`
2. Email: `admin@chalan.com`
3. Password: `chalan_password`

### Paso 2: Registrar Servidor PostgreSQL

1. Clic derecho en "Servers" → Register → Server...

2. **Pestaña "General":**
   - Name: `Chalan PostgreSQL`

3. **Pestaña "Connection":**
   - Host name/address: `chalan_postgres`
   - Port: `5432`
   - Maintenance database: `chalan_sch_txn`
   - Username: `chalan_user`
   - Password: `chalan_password` ⚠️ **USA ESTA CONTRASEÑA**
   - ✅ Save password: Marcar

4. Clic en "Save"

## Si las Credenciales Son Diferentes

Si tu archivo `.env` tiene credenciales diferentes, puedes:

### Opción 1: Verificar tu archivo .env

```powershell
# Si tienes un archivo .env, verifica las variables:
Get-Content .env | Select-String "POSTGRES"
```

### Opción 2: Cambiar las Credenciales

Si necesitas cambiar las credenciales:

1. **Edita tu archivo `.env`** (o créalo si no existe):
   ```env
   POSTGRES_USER=chalan_user
   POSTGRES_PASSWORD=tu_nueva_contraseña
   POSTGRES_DB=chalan_sch_txn
   ```

2. **Reinicia los contenedores:**
   ```powershell
   docker compose -f docker-compose.local.yml down
   docker compose -f docker-compose.local.yml up -d
   ```

3. **Usa las nuevas credenciales en pgAdmin**

## Solución al Error de Autenticación

Si recibes el error:
```
FATAL: password authentication failed for user "chalan_user"
```

**Solución:**
1. Verifica que estés usando `chalan_password` (no `chalan2024`)
2. Asegúrate de que el campo "Save password" esté marcado
3. Verifica que el usuario sea `chalan_user` (no `postgres` u otro)
4. Verifica que el host sea `chalan_postgres` (no `localhost`)

## Comandos de Verificación

### Probar conexión directa con las credenciales

```powershell
docker exec chalan_postgres psql -U chalan_user -d chalan_sch_txn -c "SELECT current_user, current_database();"
```

**Salida esperada:**
```
 current_user | current_database 
--------------+------------------
 chalan_user  | chalan_sch_txn
```

### Verificar que el usuario existe

```powershell
docker exec chalan_postgres psql -U postgres -c "\du chalan_user"
```

**Salida esperada:**
```
 Role name  |      Attributes      
-------------+----------------------
 chalan_user | Superuser, Create DB
```

## Notas Importantes

1. **La contraseña es:** `chalan_password` (no `chalan2024`)
2. **El usuario es:** `chalan_user` (no `postgres`)
3. **El host es:** `chalan_postgres` (no `localhost` o `127.0.0.1`)
4. **La base de datos es:** `chalan_sch_txn`

## Referencias

- Ver `readme/GUIA_PASO_A_PASO_PGADMIN.md` para instrucciones detalladas
- Ver `readme/SOLUCION_PGADMIN_CONEXION.md` para troubleshooting

