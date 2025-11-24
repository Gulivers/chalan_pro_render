"""
Settings module for Chalan-Pro Multi-tenant
Carga la configuración según el ambiente especificado en DJANGO_SETTINGS_MODULE
o en la variable de entorno ENVIRONMENT
"""
import os

# Determinar qué configuración cargar
environment = os.environ.get('ENVIRONMENT', 'local').lower()

if environment == 'production':
    from .production import *
elif environment == 'qa' or environment == 'staging':
    from .qa import *
else:
    from .local import *

