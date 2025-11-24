# Solución: Editar Schema Name y Tenant ID desde Django Admin

## Funcionalidad Implementada

Se ha implementado la capacidad de editar `schema_name` y `tenant_id` desde el admin de Django, con las siguientes características:

### 1. Edición de Schema Name

- **Permitido:** Sí, puedes editar el `schema_name` desde el admin
- **Renombrado automático:** Cuando cambias el `schema_name`, el sistema automáticamente renombra el schema en PostgreSQL usando `ALTER SCHEMA`
- **Validación:** Se valida que el nuevo nombre cumpla con las restricciones de PostgreSQL
- **Advertencias:** Se muestran advertencias visuales sobre el impacto de cambiar el schema_name

### 2. Edición de Tenant ID

- **Permitido:** Sí, puedes editar el `tenant_id` desde el admin
- **Validación inteligente:** El sistema verifica si hay dominios asociados antes de permitir el cambio
- **Advertencias:** Se muestran advertencias si hay dominios asociados

## Características de Seguridad

### Validaciones Implementadas

1. **Validación de Schema Name:**
   - Solo letras minúsculas, números y guiones bajos
   - Debe comenzar con letra o guion bajo
   - Máximo 63 caracteres
   - Debe ser único en la base de datos

2. **Verificación de Unicidad:**
   - Antes de renombrar, se verifica que el nuevo schema_name no exista
   - Antes de cambiar tenant_id, se verifica que el nuevo valor sea único

3. **Protección contra Cambios Peligrosos:**
   - Advertencias visuales cuando se intenta cambiar schema_name
   - Advertencias cuando se intenta cambiar tenant_id con dominios asociados

## Renombrado de Schema en PostgreSQL

### Proceso Automático

Cuando cambias el `schema_name` en el admin:

1. **Detección del cambio:** El sistema detecta que el `schema_name` cambió comparando con el valor anterior
2. **Validación:** Se valida que el nuevo nombre sea válido y único
3. **Renombrado:** Se ejecuta `ALTER SCHEMA` en PostgreSQL para renombrar el schema
4. **Logging:** Se registra la operación en los logs

### Código de Renombrado

```python
def _rename_postgres_schema(self, old_schema_name, new_schema_name):
    """
    Renombra un schema en PostgreSQL.
    IMPORTANTE: Esto es una operación crítica. Asegúrate de tener backups.
    """
    with connection.cursor() as cursor:
        # Verificar que el schema antiguo existe
        cursor.execute(
            "SELECT schema_name FROM information_schema.schemata WHERE schema_name = %s",
            [old_schema_name]
        )
        if not cursor.fetchone():
            logger.warning(f"Schema '{old_schema_name}' no existe.")
            return
        
        # Verificar que el nuevo schema no existe
        cursor.execute(
            "SELECT schema_name FROM information_schema.schemata WHERE schema_name = %s",
            [new_schema_name]
        )
        if cursor.fetchone():
            raise ValidationError(f"El schema '{new_schema_name}' ya existe.")
        
        # Renombrar el schema
        cursor.execute(
            f'ALTER SCHEMA "{old_schema_name}" RENAME TO "{new_schema_name}"'
        )
```

## Interfaz en el Admin

### Campos Editables

- **Schema Name:** Editable con advertencia visual
- **Tenant ID:** Editable con validación de dominios asociados

### Advertencias Visuales

1. **Al crear un nuevo tenant:**
   - Mensaje informativo: "El schema_name se generará automáticamente..."
   - Mensaje informativo: "El tenant_id se generará automáticamente..."

2. **Al editar un tenant existente:**
   - Advertencia sobre renombrar schema: "Cambiar el schema_name renombrará el schema en PostgreSQL..."
   - Estado de tenant_id: Muestra si se puede cambiar o no según los dominios asociados

### Ejemplo de Interfaz

```
┌─────────────────────────────────────────────────────────┐
│ Identificadores                                         │
├─────────────────────────────────────────────────────────┤
│ ⚠️ Advertencia: Cambiar el schema_name renombrará el    │
│   schema en PostgreSQL. Asegúrate de tener backups... │
│                                                         │
│ Schema Name: [tenant_test_company]                     │
│                                                         │
│ ✅ Puedes cambiar el tenant_id. No hay dominios        │
│    asociados.                                          │
│                                                         │
│ Tenant ID: [test_company_001]                          │
└─────────────────────────────────────────────────────────┘
```

## Uso en el Admin

### Cambiar Schema Name

1. Accede a `/admin/appcore/tenant/{id}/change/`
2. Edita el campo **Schema Name**
3. Lee la advertencia sobre el impacto
4. Guarda el formulario
5. El sistema renombrará automáticamente el schema en PostgreSQL

### Cambiar Tenant ID

1. Accede a `/admin/appcore/tenant/{id}/change/`
2. Verifica el estado del campo **Tenant ID** (si muestra advertencia)
3. Si no hay dominios asociados, puedes cambiarlo libremente
4. Si hay dominios asociados, se mostrará una advertencia pero aún puedes cambiarlo
5. Guarda el formulario

## Consideraciones Importantes

### ⚠️ Advertencias sobre Schema Name

1. **Backups:** Siempre haz un backup antes de renombrar un schema
2. **Conexiones activas:** Asegúrate de que no haya conexiones activas al schema antes de renombrarlo
3. **Aplicaciones en ejecución:** Si hay aplicaciones usando el schema, pueden fallar durante el renombrado
4. **Tiempo de inactividad:** El renombrado puede causar un breve tiempo de inactividad

### ⚠️ Advertencias sobre Tenant ID

1. **Dominios asociados:** Si hay dominios asociados, cambiar el tenant_id puede causar problemas
2. **Referencias externas:** Si el tenant_id se usa en configuraciones externas (Docker, scripts, etc.), deberás actualizarlas manualmente
3. **Integridad de datos:** Asegúrate de actualizar todas las referencias al tenant_id antiguo

## Ejemplos de Uso

### Ejemplo 1: Renombrar Schema

**Antes:**
- Schema Name: `tenant_test_company`
- Schema en PostgreSQL: `tenant_test_company`

**Después de editar:**
- Schema Name: `tenant_test_company_new`
- Schema en PostgreSQL: `tenant_test_company_new` (renombrado automáticamente)

### Ejemplo 2: Cambiar Tenant ID sin Dominios

**Antes:**
- Tenant ID: `test_company_001`
- Dominios asociados: 0

**Después de editar:**
- Tenant ID: `test_company_new_001`
- ✅ Cambio permitido (no hay dominios asociados)

### Ejemplo 3: Cambiar Tenant ID con Dominios

**Antes:**
- Tenant ID: `test_company_001`
- Dominios asociados: 2

**Después de editar:**
- Tenant ID: `test_company_new_001`
- ⚠️ Advertencia mostrada, pero cambio permitido

## Logging y Monitoreo

Todas las operaciones de renombrado se registran en los logs:

```
INFO: Schema renombrado exitosamente de 'tenant_old' a 'tenant_new'
WARNING: Schema 'tenant_old' no existe. No se puede renombrar.
ERROR: Error al renombrar schema de 'tenant_old' a 'tenant_new': [error]
```

## Troubleshooting

### Error: "El schema ya existe"

**Causa:** Intentas renombrar a un schema que ya existe.

**Solución:** Elige un nombre diferente o elimina el schema existente primero.

### Error: "No se puede renombrar - conexiones activas"

**Causa:** Hay conexiones activas al schema que intentas renombrar.

**Solución:** 
1. Cierra todas las conexiones al schema
2. Espera unos segundos
3. Intenta nuevamente

### Error: "Permisos insuficientes"

**Causa:** El usuario de la base de datos no tiene permisos para renombrar schemas.

**Solución:** Asegúrate de que el usuario tenga permisos `ALTER SCHEMA` en PostgreSQL.

## Referencias

- [PostgreSQL ALTER SCHEMA](https://www.postgresql.org/docs/current/sql-alterschema.html)
- [Django Tenants Documentation](https://django-tenants.readthedocs.io/)
- [Django Admin Customization](https://docs.djangoproject.com/en/stable/ref/contrib/admin/)

