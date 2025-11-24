from django.db import models, connection
from django.core.exceptions import ValidationError
from django.utils.text import slugify
from django_tenants.models import TenantMixin, DomainMixin
from django_tenants.utils import schema_context
import re
import logging

logger = logging.getLogger(__name__)


class Tenant(TenantMixin):
    """
    Modelo de Tenant para multi-tenancy
    Cada tenant tiene su propio schema en PostgreSQL
    """
    # Información básica
    name = models.CharField(max_length=100, verbose_name="Nombre del Cliente")
    schema_name = models.CharField(max_length=63, unique=True, db_index=True, verbose_name="Schema Name", blank=True)
    tenant_id = models.CharField(max_length=100, unique=True, verbose_name="Tenant ID", blank=True)
    
    # Información de contacto
    email = models.EmailField(max_length=255, verbose_name="Correo Electrónico", blank=True, null=True)
    
    # Tipo de cliente (para personalización)
    CLIENT_TYPE_CHOICES = [
        ('electric', 'Electric'),
        ('air_conditioning', 'Air Conditioning'),
        ('solar', 'Solar'),
        ('plumbing', 'Plumbing'),
        ('hvac', 'HVAC'),
        ('general', 'General'),
    ]
    client_type = models.CharField(
        max_length=50,
        choices=CLIENT_TYPE_CHOICES,
        default='general',
        verbose_name="Tipo de Cliente"
    )
    
    # Logo del cliente
    logo = models.ImageField(
        upload_to='tenant_logos/',
        blank=True,
        null=True,
        verbose_name="Logo del Cliente"
    )
    
    # Configuración del tenant
    paid_until = models.DateField(null=True, blank=True, verbose_name="Pagado hasta")
    on_trial = models.BooleanField(default=True, verbose_name="En período de prueba")
    
    # Metadata
    created_on = models.DateField(auto_now_add=True, verbose_name="Creado el")
    is_active = models.BooleanField(default=True, verbose_name="Activo")
    
    # Configuración automática
    auto_create_schema = True
    auto_drop_schema = False  # No eliminar schema automáticamente
    
    class Meta:
        verbose_name = "Tenant"
        verbose_name_plural = "Tenants"
        ordering = ['name']
    
    def clean(self):
        """Valida el schema_name según las restricciones de PostgreSQL"""
        super().clean()
        
        # Si no hay schema_name, se generará en save()
        if self.schema_name:
            # Validar formato: solo letras minúsculas, números y guiones bajos
            # Debe comenzar con letra o guion bajo
            if not re.match(r'^[a-z_][a-z0-9_]*$', self.schema_name):
                raise ValidationError({
                    'schema_name': 'El schema name solo puede contener letras minúsculas, números y guiones bajos, y debe comenzar con letra o guion bajo.'
                })
            
            # Validar longitud máxima
            if len(self.schema_name) > 63:
                raise ValidationError({
                    'schema_name': 'El schema name no puede exceder 63 caracteres.'
                })
    
    def _generate_schema_name(self):
        """Genera un nombre de schema válido basado en el nombre del tenant"""
        if not self.name:
            return None
        
        # Convertir a slug y reemplazar guiones por guiones bajos
        # slugify convierte a minúsculas y reemplaza espacios con guiones
        base_name = slugify(self.name).replace('-', '_')
        
        # Limpiar: solo letras minúsculas, números y guiones bajos
        base_name = re.sub(r'[^a-z0-9_]', '', base_name.lower())
        
        # Si está vacío o comienza con número, agregar prefijo
        if not base_name or base_name[0].isdigit():
            base_name = f"tenant_{base_name}" if base_name else "tenant_unnamed"
        else:
            # Asegurar que siempre tenga el prefijo "tenant_"
            if not base_name.startswith('tenant_'):
                base_name = f"tenant_{base_name}"
        
        # Limitar longitud a 63 caracteres (máximo de PostgreSQL)
        # Dejar espacio para el contador si es necesario
        max_len = 50  # Dejar espacio para "_9999"
        if len(base_name) > max_len:
            base_name = base_name[:max_len]
        
        schema_name = base_name
        
        # Verificar unicidad y agregar número si es necesario
        counter = 1
        original_schema = schema_name
        while Tenant.objects.filter(schema_name=schema_name).exclude(pk=self.pk if self.pk else None).exists():
            # Truncar para dejar espacio para el contador
            counter_str = f"_{counter}"
            max_base_len = 63 - len(counter_str)
            schema_name = f"{original_schema[:max_base_len]}{counter_str}"
            counter += 1
            if counter > 9999:  # Prevenir loops infinitos
                raise ValidationError("No se pudo generar un schema_name único. Intenta con un nombre diferente.")
        
        return schema_name
    
    def _generate_tenant_id(self):
        """Genera un tenant_id único basado en el nombre del tenant"""
        if not self.name:
            return None
        
        # Convertir a slug y reemplazar guiones por guiones bajos
        base_id = slugify(self.name).replace('-', '_')[:30]
        
        # Asegurar que comience con letra
        if base_id and base_id[0].isdigit():
            base_id = f"t_{base_id}"
        elif not base_id:
            base_id = "tenant_unnamed"
        
        tenant_id = f"{base_id}_001"
        
        # Verificar unicidad y agregar número si es necesario
        counter = 1
        original_id = tenant_id
        while Tenant.objects.filter(tenant_id=tenant_id).exclude(pk=self.pk if self.pk else None).exists():
            tenant_id = f"{original_id.rsplit('_', 1)[0]}_{counter:03d}"
            counter += 1
            if counter > 9999:  # Prevenir loops infinitos
                raise ValidationError("No se pudo generar un tenant_id único. Intenta con un nombre diferente.")
        
        return tenant_id
    
    def save(self, *args, **kwargs):
        """
        Genera automáticamente schema_name y tenant_id si no están proporcionados.
        Si el schema_name cambia, renombra el schema en PostgreSQL.
        """
        # Detectar si es una actualización y si el schema_name cambió
        old_schema_name = None
        if self.pk:
            try:
                old_instance = Tenant.objects.get(pk=self.pk)
                old_schema_name = old_instance.schema_name
            except Tenant.DoesNotExist:
                pass
        
        # Generar schema_name si está vacío
        if not self.schema_name:
            self.schema_name = self._generate_schema_name()
        
        # Generar tenant_id si está vacío
        if not self.tenant_id:
            self.tenant_id = self._generate_tenant_id()
        
        # Validar antes de guardar
        self.full_clean()
        
        # Si el schema_name cambió y el tenant ya existe, renombrar el schema en PostgreSQL
        if old_schema_name and old_schema_name != self.schema_name:
            self._rename_postgres_schema(old_schema_name, self.schema_name)
        
        super().save(*args, **kwargs)
    
    def _rename_postgres_schema(self, old_schema_name, new_schema_name):
        """
        Renombra un schema en PostgreSQL.
        IMPORTANTE: Esto es una operación crítica. Asegúrate de tener backups.
        """
        try:
            with connection.cursor() as cursor:
                # Verificar que el schema antiguo existe
                cursor.execute(
                    "SELECT schema_name FROM information_schema.schemata WHERE schema_name = %s",
                    [old_schema_name]
                )
                if not cursor.fetchone():
                    logger.warning(f"Schema '{old_schema_name}' no existe. No se puede renombrar.")
                    return
                
                # Verificar que el nuevo schema no existe
                cursor.execute(
                    "SELECT schema_name FROM information_schema.schemata WHERE schema_name = %s",
                    [new_schema_name]
                )
                if cursor.fetchone():
                    raise ValidationError(
                        f"El schema '{new_schema_name}' ya existe en PostgreSQL. "
                        "No se puede renombrar."
                    )
                
                # Renombrar el schema
                # IMPORTANTE: ALTER SCHEMA requiere que no haya conexiones activas al schema
                cursor.execute(
                    f'ALTER SCHEMA "{old_schema_name}" RENAME TO "{new_schema_name}"'
                )
                
                logger.info(
                    f"Schema renombrado exitosamente de '{old_schema_name}' a '{new_schema_name}'"
                )
        except Exception as e:
            logger.error(f"Error al renombrar schema de '{old_schema_name}' a '{new_schema_name}': {e}")
            raise ValidationError(
                f"Error al renombrar el schema en PostgreSQL: {str(e)}. "
                "Asegúrate de que no haya conexiones activas al schema y que tengas permisos suficientes."
            )
    
    def can_change_tenant_id(self):
        """
        Verifica si el tenant_id puede ser cambiado.
        Retorna True si no hay dominios asociados o si el tenant_id no se usa en configuraciones críticas.
        """
        # Si el objeto no está guardado aún, permitir cambio
        if not self.pk:
            return True
        
        # Por ahora, permitimos cambiar tenant_id si no hay dominios asociados
        # Puedes agregar más validaciones aquí según tus necesidades
        domain_count = Domain.objects.filter(tenant=self).count()
        return domain_count == 0
    
    def __str__(self):
        return f"{self.name} ({self.schema_name})"
    
    def get_logo_url(self):
        """Retorna la URL del logo o None"""
        if self.logo:
            return self.logo.url
        return None


class Domain(DomainMixin):
    """
    Modelo de Dominio para asociar dominios a tenants
    """
    pass


class ManualCategory(models.Model):
    name = models.CharField(max_length=100, unique=True, verbose_name="Nombre de la Categoría")
    description = models.TextField(blank=True, verbose_name="Descripción")
    created_at = models.DateTimeField(auto_now_add=True, verbose_name="Creado el")
    updated_at = models.DateTimeField(auto_now=True, verbose_name="Actualizado el")

    class Meta:
        verbose_name = "Categoría de Manual"
        verbose_name_plural = "Categorías de Manual"

    def __str__(self):
        return self.name

class ManualEntry(models.Model):
    title = models.CharField(max_length=200)
    slug = models.SlugField(unique=True, blank=True)
    module = models.CharField(max_length=100, help_text="Ej: Inventario, ERP, Contratos")
    summary = models.TextField(blank=True, help_text="Resumen corto para vista previa o meta descripción.")
    content = models.TextField()
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    category = models.ForeignKey(
        ManualCategory,
        on_delete=models.PROTECT,
        related_name="manuals",
        verbose_name="Categoría"
    )

    class Meta:
        ordering = ['-created_at']
        verbose_name = "Manual Entry"
        verbose_name_plural = "Manual Entries"

    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.title)
        super().save(*args, **kwargs)

    def __str__(self):
        return f"{self.title} ({self.module})"
