from django.contrib import admin
from django.utils.html import format_html
from django.contrib import messages
import logging
from .models import ManualEntry, ManualCategory, Tenant, Domain

logger = logging.getLogger(__name__)


# ============================================
# Admin para modelos Multi-tenant
# ============================================

@admin.register(Tenant)
class TenantAdmin(admin.ModelAdmin):
    """
    Administración de Tenants en Django Admin
    """
    list_display = (
        'name', 
        'schema_name', 
        'tenant_id', 
        'email', 
        'client_type', 
        'logo_preview',
        'is_active', 
        'on_trial', 
        'paid_until', 
        'created_on'
    )
    list_filter = (
        'is_active', 
        'on_trial', 
        'client_type', 
        'created_on'
    )
    search_fields = (
        'name', 
        'schema_name', 
        'tenant_id', 
        'email'
    )
    readonly_fields = (
        'created_on',
        'logo_preview',
        'schema_change_warning',
        'tenant_id_change_warning'
    )
    
    def schema_change_warning(self, obj):
        """
        Muestra una advertencia sobre cambiar el schema_name
        """
        if obj.pk:
            return format_html(
                '<div style="background-color: #fff3cd; padding: 10px; border: 1px solid #ffc107; border-radius: 4px; margin-bottom: 10px;">'
                '<strong>⚠️ Advertencia:</strong> Cambiar el schema_name renombrará el schema en PostgreSQL. '
                'Asegúrate de tener backups y de que no haya conexiones activas al schema.'
                '</div>'
            )
        return format_html(
            '<div style="background-color: #d1ecf1; padding: 10px; border: 1px solid #bee5eb; border-radius: 4px; margin-bottom: 10px;">'
            'El schema_name se generará automáticamente basándose en el nombre del cliente.'
            '</div>'
        )
    schema_change_warning.short_description = "Información sobre Schema Name"
    
    def tenant_id_change_warning(self, obj):
        """
        Muestra información sobre cambiar el tenant_id
        """
        if obj.pk:
            can_change = obj.can_change_tenant_id()
            if can_change:
                return format_html(
                    '<div style="background-color: #d4edda; padding: 10px; border: 1px solid #c3e6cb; border-radius: 4px; margin-bottom: 10px;">'
                    '✅ Puedes cambiar el tenant_id. No hay dominios asociados.'
                    '</div>'
                )
            else:
                domain_count = Domain.objects.filter(tenant=obj).count()
                return format_html(
                    '<div style="background-color: #f8d7da; padding: 10px; border: 1px solid #f5c6cb; border-radius: 4px; margin-bottom: 10px;">'
                    f'⚠️ No se recomienda cambiar el tenant_id. Hay {domain_count} dominio(s) asociado(s).'
                    '</div>'
                )
        return format_html(
            '<div style="background-color: #d1ecf1; padding: 10px; border: 1px solid #bee5eb; border-radius: 4px; margin-bottom: 10px;">'
            'El tenant_id se generará automáticamente basándose en el nombre del cliente.'
            '</div>'
        )
    tenant_id_change_warning.short_description = "Información sobre Tenant ID"
    
    def save_model(self, request, obj, form, change):
        """
        Guarda el modelo y maneja cambios en schema_name y tenant_id
        """
        if change:
            # Si es una edición, verificar cambios
            old_obj = Tenant.objects.get(pk=obj.pk)
            
            # Si el schema_name cambió, se renombrará automáticamente en save()
            if old_obj.schema_name != obj.schema_name:
                logger.info(
                    f"Cambio de schema_name detectado: '{old_obj.schema_name}' -> '{obj.schema_name}'"
                )
            
            # Si el tenant_id cambió y no se puede cambiar, mostrar advertencia
            if old_obj.tenant_id != obj.tenant_id and not obj.can_change_tenant_id():
                messages.warning(
                    request,
                    f"Se cambió el tenant_id de '{old_obj.tenant_id}' a '{obj.tenant_id}', "
                    "pero hay dominios asociados. Esto puede causar problemas."
                )
        
        obj.save()
    fieldsets = (
        ('Información Básica', {
            'fields': ('name', 'email'),
            'description': 'El schema_name y tenant_id se generarán automáticamente basándose en el nombre si están vacíos.'
        }),
        ('Identificadores', {
            'fields': ('schema_change_warning', 'schema_name', 'tenant_id_change_warning', 'tenant_id'),
            'description': 'Puedes editar estos campos. Cambiar el schema_name renombrará el schema en PostgreSQL.'
        }),
        ('Configuración del Cliente', {
            'fields': ('client_type', 'logo', 'logo_preview')
        }),
        ('Estado y Suscripción', {
            'fields': ('is_active', 'on_trial', 'paid_until')
        }),
        ('Metadata', {
            'fields': ('created_on',),
            'classes': ('collapse',)
        }),
    )
    ordering = ('-created_on',)
    
    def logo_preview(self, obj):
        """
        Muestra una vista previa del logo en el admin
        """
        if obj.logo:
            return format_html(
                '<img src="{}" style="max-height: 50px; max-width: 100px;" />',
                obj.logo.url
            )
        return "Sin logo"
    logo_preview.short_description = "Vista Previa del Logo"


@admin.register(Domain)
class DomainAdmin(admin.ModelAdmin):
    """
    Administración de Dominios en Django Admin
    """
    list_display = (
        'domain', 
        'tenant', 
        'is_primary', 
        'tenant_status'
    )
    list_filter = (
        'is_primary', 
        'tenant__is_active'
    )
    search_fields = (
        'domain', 
        'tenant__name', 
        'tenant__schema_name'
    )
    autocomplete_fields = ['tenant']
    ordering = ('domain',)
    
    def tenant_status(self, obj):
        """
        Muestra el estado del tenant asociado
        """
        if obj.tenant:
            status_color = 'green' if obj.tenant.is_active else 'red'
            status_text = 'Activo' if obj.tenant.is_active else 'Inactivo'
            return format_html(
                '<span style="color: {};">{}</span>',
                status_color,
                status_text
            )
        return "-"
    tenant_status.short_description = "Estado del Tenant"


# ============================================
# Admin para modelos de Manual
# ============================================

@admin.register(ManualCategory)
class ManualCategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'description', 'created_at', 'updated_at')
    search_fields = ('name',)

@admin.register(ManualEntry)
class ManualEntryAdmin(admin.ModelAdmin):
    list_display = ('title', 'module', 'category', 'is_active', 'created_at', 'updated_at')  # Agrega aquí otros campos relevantes
    list_filter = ('category',)
    search_fields = ('id','title', 'summary', 'content',)  # O el campo que uses como identificador
    ordering = ('-created_at',)
    
