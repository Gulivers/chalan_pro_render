"""
Serializers para appcore - Multi-tenant Onboarding
"""
from rest_framework import serializers
from .models import Tenant, Domain


class TenantOnboardingSerializer(serializers.Serializer):
    """
    Serializer para el proceso de onboarding de nuevos tenants
    """
    company_name = serializers.CharField(
        max_length=100,
        required=True,
        help_text="Nombre del negocio/cliente"
    )
    email = serializers.EmailField(
        required=True,
        help_text="Correo electrónico del cliente"
    )
    client_type = serializers.ChoiceField(
        choices=Tenant.CLIENT_TYPE_CHOICES,
        required=True,
        help_text="Tipo de cliente (Electric, Air Conditioning, etc.)"
    )
    logo = serializers.ImageField(
        required=False,
        allow_null=True,
        help_text="Logo del cliente (imagen)"
    )
    
    def validate_company_name(self, value):
        """Validar que el nombre no esté vacío"""
        if not value or not value.strip():
            raise serializers.ValidationError("El nombre del negocio es requerido")
        return value.strip()
    
    def validate_email(self, value):
        """Validar formato de email"""
        if not value or '@' not in value:
            raise serializers.ValidationError("Email inválido")
        return value.lower().strip()


class TenantSerializer(serializers.ModelSerializer):
    """
    Serializer para el modelo Tenant completo
    """
    logo_url = serializers.SerializerMethodField()
    domain = serializers.SerializerMethodField()
    
    class Meta:
        model = Tenant
        fields = [
            'id', 'name', 'schema_name', 'tenant_id',
            'email', 'client_type', 'logo', 'logo_url',
            'paid_until', 'on_trial', 'created_on', 'is_active',
            'domain'
        ]
        read_only_fields = ['id', 'schema_name', 'tenant_id', 'created_on']
    
    def get_logo_url(self, obj):
        """Retorna la URL del logo"""
        if obj.logo:
            request = self.context.get('request')
            if request:
                return request.build_absolute_uri(obj.logo.url)
            return obj.logo.url
        return None
    
    def get_domain(self, obj):
        """Retorna el dominio principal del tenant"""
        domain = Domain.objects.filter(tenant=obj, is_primary=True).first()
        if domain:
            return domain.domain
        return None


class TenantCreateResponseSerializer(serializers.Serializer):
    """
    Serializer para la respuesta de creación de tenant
    """
    success = serializers.BooleanField()
    message = serializers.CharField()
    tenant_id = serializers.IntegerField(required=False)
    schema_name = serializers.CharField(required=False)
    domain = serializers.CharField(required=False)
    url = serializers.CharField(required=False)
    error = serializers.CharField(required=False)

