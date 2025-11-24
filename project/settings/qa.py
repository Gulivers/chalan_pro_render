"""
QA/Staging Settings for Chalan-Pro Multi-tenant
Configuración para ambiente de pruebas/staging
"""
from .base import *

DEBUG = True  # Mantener debug para QA

# Database QA desde DATABASE_URL
DATABASE_URL = os.environ.get('DATABASE_URL')
if DATABASE_URL:
    DATABASES = {
        'default': {
            **dj_database_url.config(
                default=DATABASE_URL,
                conn_max_age=600,
                conn_health_checks=True,
            ),
            'ENGINE': 'django_tenants.postgresql_backend',
        }
    }

# Redis QA
REDIS_URL = os.environ.get('REDIS_URL', 'redis://redis:6379/0')

# Allowed hosts para QA
ALLOWED_HOSTS = ['localhost', '127.0.0.1', '*.onrender.com', 'stage.*']

# CORS más permisivo para QA
CORS_ALLOW_ALL_ORIGINS = True
CSRF_TRUSTED_ORIGINS = [
    'http://localhost:3000',
    'http://localhost:8080',
    'https://*.onrender.com',
]

# Logging detallado para QA
LOGGING['loggers']['django.request']['level'] = 'INFO'
LOGGING['loggers']['django.db.backends'] = {
    'handlers': ['console'],
    'level': 'INFO',
    'propagate': False,
}

