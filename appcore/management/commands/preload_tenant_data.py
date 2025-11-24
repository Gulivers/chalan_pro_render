"""
Management command para precargar datos iniciales según el tipo de cliente
Uso: python manage.py preload_tenant_data --schema=tenant_phoenix --client_type=electric
"""
from django.core.management.base import BaseCommand
from django_tenants.utils import schema_context
from django.db import connection


class Command(BaseCommand):
    help = 'Precarga datos iniciales para un tenant según su tipo de cliente'

    def add_arguments(self, parser):
        parser.add_argument(
            '--schema',
            type=str,
            required=True,
            help='Nombre del schema del tenant'
        )
        parser.add_argument(
            '--client_type',
            type=str,
            required=True,
            choices=['electric', 'air_conditioning', 'solar', 'plumbing', 'hvac', 'general'],
            help='Tipo de cliente'
        )

    def handle(self, *args, **options):
        schema_name = options['schema']
        client_type = options['client_type']

        self.stdout.write(self.style.SUCCESS(f'Precargando datos para {schema_name} (tipo: {client_type})'))

        try:
            with schema_context(schema_name):
                self._preload_data_by_type(client_type)
                self.stdout.write(self.style.SUCCESS(f'✅ Datos precargados exitosamente para {schema_name}'))
        except Exception as e:
            self.stdout.write(self.style.ERROR(f'❌ Error al precargar datos: {str(e)}'))
            raise

    def _preload_data_by_type(self, client_type):
        """
        Precarga datos específicos según el tipo de cliente
        """
        if client_type == 'electric':
            self._preload_electric_data()
        elif client_type == 'air_conditioning':
            self._preload_ac_data()
        elif client_type == 'solar':
            self._preload_solar_data()
        elif client_type == 'plumbing':
            self._preload_plumbing_data()
        elif client_type == 'hvac':
            self._preload_hvac_data()
        else:
            self._preload_general_data()

    def _preload_electric_data(self):
        """Precarga datos para clientes eléctricos"""
        self.stdout.write('   📦 Precargando datos para Electric...')
        
        # Ejemplo: Crear categorías de productos eléctricos
        try:
            from appinventory.models import ProductCategory
            
            categories = [
                {'name': 'Electrical Wire', 'description': 'Electrical wiring and cables'},
                {'name': 'Circuit Breakers', 'description': 'Circuit breakers and fuses'},
                {'name': 'Outlets & Switches', 'description': 'Electrical outlets and switches'},
                {'name': 'Lighting', 'description': 'Lighting fixtures and bulbs'},
            ]
            
            for cat_data in categories:
                ProductCategory.objects.get_or_create(
                    name=cat_data['name'],
                    defaults={'description': cat_data['description']}
                )
            
            self.stdout.write('   ✅ Categorías eléctricas creadas')
        except Exception as e:
            self.stdout.write(f'   ⚠️  Error al crear categorías: {str(e)}')

    def _preload_ac_data(self):
        """Precarga datos para clientes de aire acondicionado"""
        self.stdout.write('   📦 Precargando datos para Air Conditioning...')
        
        try:
            from appinventory.models import ProductCategory
            
            categories = [
                {'name': 'AC Units', 'description': 'Air conditioning units'},
                {'name': 'Filters', 'description': 'AC filters and replacements'},
                {'name': 'Refrigerant', 'description': 'Refrigerant and coolant'},
                {'name': 'Ductwork', 'description': 'Ductwork and ventilation'},
            ]
            
            for cat_data in categories:
                ProductCategory.objects.get_or_create(
                    name=cat_data['name'],
                    defaults={'description': cat_data['description']}
                )
            
            self.stdout.write('   ✅ Categorías de AC creadas')
        except Exception as e:
            self.stdout.write(f'   ⚠️  Error al crear categorías: {str(e)}')

    def _preload_solar_data(self):
        """Precarga datos para clientes solares"""
        self.stdout.write('   📦 Precargando datos para Solar...')
        
        try:
            from appinventory.models import ProductCategory
            
            categories = [
                {'name': 'Solar Panels', 'description': 'Solar panels and modules'},
                {'name': 'Inverters', 'description': 'Solar inverters'},
                {'name': 'Batteries', 'description': 'Solar batteries and storage'},
                {'name': 'Mounting Hardware', 'description': 'Mounting and installation hardware'},
            ]
            
            for cat_data in categories:
                ProductCategory.objects.get_or_create(
                    name=cat_data['name'],
                    defaults={'description': cat_data['description']}
                )
            
            self.stdout.write('   ✅ Categorías solares creadas')
        except Exception as e:
            self.stdout.write(f'   ⚠️  Error al crear categorías: {str(e)}')

    def _preload_plumbing_data(self):
        """Precarga datos para clientes de plomería"""
        self.stdout.write('   📦 Precargando datos para Plumbing...')
        
        try:
            from appinventory.models import ProductCategory
            
            categories = [
                {'name': 'Pipes & Fittings', 'description': 'Pipes and pipe fittings'},
                {'name': 'Fixtures', 'description': 'Plumbing fixtures'},
                {'name': 'Valves', 'description': 'Valves and controls'},
                {'name': 'Tools', 'description': 'Plumbing tools and equipment'},
            ]
            
            for cat_data in categories:
                ProductCategory.objects.get_or_create(
                    name=cat_data['name'],
                    defaults={'description': cat_data['description']}
                )
            
            self.stdout.write('   ✅ Categorías de plomería creadas')
        except Exception as e:
            self.stdout.write(f'   ⚠️  Error al crear categorías: {str(e)}')

    def _preload_hvac_data(self):
        """Precarga datos para clientes HVAC"""
        self.stdout.write('   📦 Precargando datos para HVAC...')
        
        try:
            from appinventory.models import ProductCategory
            
            categories = [
                {'name': 'HVAC Systems', 'description': 'Complete HVAC systems'},
                {'name': 'Thermostats', 'description': 'Thermostats and controls'},
                {'name': 'Vents & Ducts', 'description': 'Ventilation and ductwork'},
                {'name': 'Maintenance Supplies', 'description': 'HVAC maintenance supplies'},
            ]
            
            for cat_data in categories:
                ProductCategory.objects.get_or_create(
                    name=cat_data['name'],
                    defaults={'description': cat_data['description']}
                )
            
            self.stdout.write('   ✅ Categorías HVAC creadas')
        except Exception as e:
            self.stdout.write(f'   ⚠️  Error al crear categorías: {str(e)}')

    def _preload_general_data(self):
        """Precarga datos generales para cualquier tipo de cliente"""
        self.stdout.write('   📦 Precargando datos generales...')
        
        try:
            from appinventory.models import ProductCategory
            
            categories = [
                {'name': 'General Supplies', 'description': 'General supplies and materials'},
                {'name': 'Tools & Equipment', 'description': 'Tools and equipment'},
                {'name': 'Safety Equipment', 'description': 'Safety equipment and supplies'},
            ]
            
            for cat_data in categories:
                ProductCategory.objects.get_or_create(
                    name=cat_data['name'],
                    defaults={'description': cat_data['description']}
                )
            
            self.stdout.write('   ✅ Categorías generales creadas')
        except Exception as e:
            self.stdout.write(f'   ⚠️  Error al crear categorías: {str(e)}')

