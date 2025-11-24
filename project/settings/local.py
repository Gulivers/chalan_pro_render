"""
Local Development Settings for Chalan-Pro Multi-tenant
Configuración para desarrollo local en Windows/Linux
"""
from .base import *

DEBUG = True

# Database local
# En Docker, usar el nombre del servicio; fuera de Docker, usar localhost
POSTGRES_HOST = os.environ.get('POSTGRES_HOST')
if not POSTGRES_HOST:
    # Detectar si estamos en Docker
    import socket
    try:
        socket.gethostbyname('chalan_postgres')
        POSTGRES_HOST = 'chalan_postgres'  # Nombre del servicio Docker
    except socket.gaierror:
        POSTGRES_HOST = 'localhost'  # Fuera de Docker

DATABASES = {
    'default': {
        'ENGINE': 'django_tenants.postgresql_backend',
        'NAME': os.environ.get('POSTGRES_DB', 'chalan_tenant_db'),
        'USER': os.environ.get('POSTGRES_USER', 'chalan_user'),
        'PASSWORD': os.environ.get('POSTGRES_PASSWORD', 'chalan_password'),
        'HOST': POSTGRES_HOST,
        'PORT': os.environ.get('POSTGRES_PORT', '5432'),
    }
}

# Redis local
# En Docker, usar el nombre del servicio; fuera de Docker, usar localhost
REDIS_HOST = os.environ.get('REDIS_HOST', 'redis')
REDIS_URL = os.environ.get('REDIS_URL', f'redis://{REDIS_HOST}:6379/0')

# Allowed hosts para desarrollo local
# Incluir todos los dominios .localhost para multi-tenant
ALLOWED_HOSTS = ['localhost', '127.0.0.1', '192.168.0.248', '*.localhost', '.localhost']

# CORS para desarrollo
CORS_ALLOW_ALL_ORIGINS = True
CSRF_TRUSTED_ORIGINS = [
    'http://localhost:3000',
    'http://localhost:8080',
    'http://127.0.0.1:3000',
    'http://127.0.0.1:8080',
    'http://192.168.0.248:3000',
    'http://192.168.0.248:8080',
]

# Configuración de django-tenants para desarrollo local
# Permite acceso al schema público cuando no se encuentra un tenant
# Esto es necesario para acceder al admin desde IPs locales (192.168.0.248, localhost, etc.)
SHOW_PUBLIC_IF_NO_TENANT_FOUND = True

# Logging más detallado en desarrollo
LOGGING['loggers']['django.db.backends'] = {
    'handlers': ['console'],
    'level': 'DEBUG',
    'propagate': False,
}

