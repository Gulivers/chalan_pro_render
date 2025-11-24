# Solución: Error de Validación de Schema Name en Django Admin

## Problema

Al intentar crear un tenant desde el admin de Django (`/admin/appcore/tenant/add/`), se mostraba el error:

```
ValidationError: ['Invalid string used for the schema name.']
```

## Causa

El modelo `Tenant` requería que el campo `schema_name` fuera proporcionado manualmente, pero cuando se creaba desde el admin sin especificar este campo, Django intentaba guardar un valor vacío o inválido. PostgreSQL tiene restricciones estrictas para los nombres de schema:

- Debe comenzar con una letra o guion bajo (`_`)
- Solo puede contener letras minúsculas, números y guiones bajos
- No puede comenzar con números
- Máximo 63 caracteres
- No puede contener espacios ni caracteres especiales

## Solución Implementada

### 1. Generación Automática de Schema Name y Tenant ID

Se agregó un método `save()` al modelo `Tenant` que genera automáticamente estos campos si no están proporcionados:

```python
def save(self, *args, **kwargs):
    """Genera automáticamente schema_name y tenant_id si no están proporcionados"""
    # Generar schema_name si está vacío
    if not self.schema_name:
        self.schema_name = self._generate_schema_name()
    
    # Generar tenant_id si está vacío
    if not self.tenant_id:
        self.tenant_id = self._generate_tenant_id()
    
    # Validar antes de guardar
    self.full_clean()
    
    super().save(*args, **kwargs)
```

### 2. Validación de Schema Name

Se agregó un método `clean()` que valida el formato del schema_name según las restricciones de PostgreSQL:

```python
def clean(self):
    """Valida el schema_name según las restricciones de PostgreSQL"""
    super().clean()
    
    if self.schema_name:
        # Validar formato: solo letras minúsculas, números y guiones bajos
        if not re.match(r'^[a-z_][a-z0-9_]*$', self.schema_name):
            raise ValidationError({
                'schema_name': 'El schema name solo puede contener letras minúsculas, números y guiones bajos, y debe comenzar con letra o guion bajo.'
            })
        
        # Validar longitud máxima
        if len(self.schema_name) > 63:
            raise ValidationError({
                'schema_name': 'El schema name no puede exceder 63 caracteres.'
            })
```

### 3. Método de Generación de Schema Name

El método `_generate_schema_name()` genera un nombre válido basándose en el nombre del tenant:

```python
def _generate_schema_name(self):
    """Genera un nombre de schema válido basado en el nombre del tenant"""
    # Convertir a slug y limpiar caracteres especiales
    base_name = slugify(self.name).replace('-', '_')
    base_name = re.sub(r'[^a-z0-9_]', '', base_name.lower())
    
    # Asegurar prefijo "tenant_" y que comience con letra
    if not base_name or base_name[0].isdigit():
        base_name = f"tenant_{base_name}" if base_name else "tenant_unnamed"
    else:
        if not base_name.startswith('tenant_'):
            base_name = f"tenant_{base_name}"
    
    # Limitar longitud y verificar unicidad
    # ...
```

### 4. Campos Opcionales en el Admin

Los campos `schema_name` y `tenant_id` ahora son opcionales (`blank=True`) y se generan automáticamente. En el admin, están marcados como `readonly_fields` para mostrar los valores generados, pero permiten edición manual si es necesario.

## Ejemplos de Generación

### Ejemplo 1: Nombre Simple
- **Nombre del tenant:** "Test Company"
- **Schema name generado:** `tenant_test_company`
- **Tenant ID generado:** `test_company_001`

### Ejemplo 2: Nombre con Números
- **Nombre del tenant:** "Test Company 123"
- **Schema name generado:** `tenant_test_company_123`
- **Tenant ID generado:** `test_company_123_001`

### Ejemplo 3: Nombre con Caracteres Especiales
- **Nombre del tenant:** "Mi Empresa S.A."
- **Schema name generado:** `tenant_mi_empresa_sa`
- **Tenant ID generado:** `mi_empresa_sa_001`

### Ejemplo 4: Nombre que Comienza con Número
- **Nombre del tenant:** "123 Company"
- **Schema name generado:** `tenant_123_company`
- **Tenant ID generado:** `t_123_company_001`

## Uso en el Admin

### Crear un Nuevo Tenant

1. Accede a `/admin/appcore/tenant/add/`
2. Completa solo el campo **Nombre del Cliente**
3. Los campos **Schema Name** y **Tenant ID** se generarán automáticamente al guardar
4. Puedes editar manualmente estos campos si necesitas valores específicos (deben cumplir las restricciones de PostgreSQL)

### Editar un Tenant Existente

- Los campos `schema_name` y `tenant_id` son de solo lectura por defecto
- Si necesitas cambiarlos, puedes editarlos manualmente, pero asegúrate de que cumplan las restricciones

## Validaciones Aplicadas

### Schema Name
- ✅ Solo letras minúsculas, números y guiones bajos
- ✅ Debe comenzar con letra o guion bajo
- ✅ Máximo 63 caracteres
- ✅ Debe ser único en la base de datos

### Tenant ID
- ✅ Formato: `{base_name}_{counter:03d}`
- ✅ Debe ser único en la base de datos
- ✅ Máximo 100 caracteres

## Verificación

Para verificar que la generación funciona correctamente:

```powershell
docker exec chalan-backend python manage.py shell -c "from appcore.models import Tenant; t = Tenant(name='Test Company'); print('Schema generado:', t._generate_schema_name()); print('Tenant ID generado:', t._generate_tenant_id())"
```

**Salida esperada:**
```
Schema generado: tenant_test_company
Tenant ID generado: test_company_001
```

## Notas Importantes

1. **No cambiar schema_name después de crear:** Una vez creado un tenant y su schema en PostgreSQL, cambiar el `schema_name` puede causar problemas. Solo hazlo si realmente es necesario y sabes lo que estás haciendo.

2. **Unicidad:** El sistema verifica automáticamente la unicidad y agrega un contador si es necesario (ej: `tenant_test_company_1`, `tenant_test_company_2`).

3. **Prefijo "tenant_":** Todos los schemas generados automáticamente comienzan con `tenant_` para mantener consistencia y evitar conflictos con schemas del sistema.

4. **Validación en tiempo real:** Si editas manualmente el `schema_name` en el admin, se validará antes de guardar. Si el formato es inválido, verás un mensaje de error claro.

## Referencias

- [PostgreSQL Schema Naming Rules](https://www.postgresql.org/docs/current/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIERS)
- [Django Tenants Documentation](https://django-tenants.readthedocs.io/)
- [Django Model Validation](https://docs.djangoproject.com/en/stable/ref/models/instances/#validating-objects)

