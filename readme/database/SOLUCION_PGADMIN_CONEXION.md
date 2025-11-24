# Solución: Conexión a PostgreSQL desde pgAdmin

## Problema Identificado

Al intentar conectarse a PostgreSQL desde pgAdmin (`http://localhost:5050`), se mostraba el error:

```
Could not connect to server(#3) - 'chalan_postgres'
Error: [Errno -2] Name does not resolve
```

## Causa

Los contenedores `chalan-pgadmin` y `chalan_postgres` estaban en redes Docker diferentes:
- `chalan-pgadmin` estaba en `chalan_inv_txn_chalan-network`
- `chalan_postgres` estaba en `chalan_inv_txn_default`

Por eso pgAdmin no podía resolver el nombre del host `chalan_postgres`.

## Solución Aplicada

Se actualizó `docker-compose.local.yml` para asegurar que todos los servicios estén en la misma red Docker (`chalan-network`):

```yaml
networks:
  chalan-network:
    driver: bridge

services:
  postgres:
    # ...
    networks:
      - chalan-network
  
  pgadmin:
    # ...
    networks:
      - chalan-network
  
  backend:
    # ...
    networks:
      - chalan-network
  
  frontend:
    # ...
    networks:
      - chalan-network
  
  redis:
    # ...
    networks:
      - chalan-network
```

## Configuración de Conexión en pgAdmin

### Credenciales de Acceso a pgAdmin

- **URL:** `http://localhost:5050`
- **Email:** `admin@chalan.com`
- **Contraseña:** `chalan_password` (o la que tengas en tu archivo `.env` como `POSTGRES_PASSWORD`)

### Configuración del Servidor PostgreSQL

Una vez dentro de pgAdmin, para agregar el servidor PostgreSQL:

1. **Clic derecho en "Servers"** → **Register** → **Server**

2. **Pestaña "General":**
   - **Name:** `Chalan PostgreSQL` (o cualquier nombre que prefieras)

3. **Pestaña "Connection":**
   - **Host name/address:** `chalan_postgres` (nombre del servicio Docker)
   - **Port:** `5432`
   - **Maintenance database:** `chalan_sch_txn` (o el nombre de tu base de datos)
   - **Username:** `chalan_user` (o el usuario configurado en `.env`)
   - **Password:** `chalan2024` (o la contraseña configurada en `.env`)
   - ✅ **Save password:** Marca esta opción para guardar la contraseña

4. **Clic en "Save"**

### Verificación de Conexión

Después de guardar, deberías poder:
- Expandir el servidor en el panel izquierdo
- Ver la base de datos `chalan_sch_txn`
- Ver los schemas (incluyendo `public` y los schemas de tenants)
- Ejecutar consultas SQL

## Credenciales por Defecto

Según la configuración actual:

| Campo | Valor |
|-------|-------|
| **pgAdmin Email** | `admin@chalan.com` |
| **pgAdmin Password** | `chalan_password` (o `POSTGRES_PASSWORD` del `.env`) |
| **PostgreSQL Host** | `chalan_postgres` |
| **PostgreSQL Port** | `5432` |
| **PostgreSQL Database** | `chalan_sch_txn` |
| **PostgreSQL User** | `chalan_user` |
| **PostgreSQL Password** | `chalan_password` (o `POSTGRES_PASSWORD` del `.env`) |

## Verificación de la Red Docker

Para verificar que los contenedores están en la misma red:

```powershell
# Ver la red de pgAdmin
docker inspect chalan-pgadmin --format='{{range $key, $value := .NetworkSettings.Networks}}{{$key}} {{end}}'

# Ver la red de PostgreSQL
docker inspect chalan_postgres --format='{{range $key, $value := .NetworkSettings.Networks}}{{$key}} {{end}}'

# Probar resolución de nombres desde pgAdmin
docker exec chalan-pgadmin ping -c 2 chalan_postgres
```

**Salida esperada:** Ambos deberían estar en `chalan_inv_txn_chalan-network` y el ping debería funcionar.

## Troubleshooting

### Error: "Name does not resolve"

**Causa:** Los contenedores están en redes diferentes.

**Solución:**
1. Detén todos los contenedores: `docker compose -f docker-compose.local.yml down`
2. Inicia nuevamente: `docker compose -f docker-compose.local.yml up -d`
3. Verifica que estén en la misma red

### Error: "Connection refused"

**Causa:** PostgreSQL no está escuchando o el puerto está incorrecto.

**Solución:**
1. Verifica que PostgreSQL esté corriendo: `docker ps | Select-String "chalan_postgres"`
2. Verifica el puerto: Debe ser `5432` dentro del contenedor
3. Verifica los logs: `docker logs chalan_postgres`

### Error: "Authentication failed"

**Causa:** Credenciales incorrectas.

**Solución:**
1. Verifica las credenciales en tu archivo `.env`
2. Verifica que `POSTGRES_USER` y `POSTGRES_PASSWORD` estén correctos
3. Usa las mismas credenciales en pgAdmin

### Error: "Database does not exist"

**Causa:** El nombre de la base de datos es incorrecto.

**Solución:**
1. Verifica el nombre de la base de datos en `.env` (`POSTGRES_DB`)
2. Lista las bases de datos: `docker exec chalan_postgres psql -U chalan_user -l`
3. Usa el nombre correcto en pgAdmin

## Comandos Útiles

### Verificar conexión desde pgAdmin

```powershell
docker exec chalan-pgadmin ping -c 2 chalan_postgres
```

### Verificar conexión a PostgreSQL

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

### Ver tablas en el schema public

```powershell
docker exec chalan_postgres psql -U chalan_user -d chalan_sch_txn -c "\dt public.*"
```

## Referencias

- [pgAdmin Documentation](https://www.pgadmin.org/docs/)
- [Docker Compose Networking](https://docs.docker.com/compose/networking/)
- [PostgreSQL Connection Strings](https://www.postgresql.org/docs/current/libpq-connect.html)

