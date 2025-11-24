"""
Production Settings for Chalan-Pro Multi-tenant
Configuración para producción en VPS/Render
"""
from .base import *

DEBUG = False

# Security settings para producción
SECURE_SSL_REDIRECT = os.environ.get('SECURE_SSL_REDIRECT', 'False') == 'True'
SESSION_COOKIE_SECURE = os.environ.get('SESSION_COOKIE_SECURE', 'False') == 'True'
CSRF_COOKIE_SECURE = os.environ.get('CSRF_COOKIE_SECURE', 'False') == 'True'
SECURE_BROWSER_XSS_FILTER = True
SECURE_CONTENT_TYPE_NOSNIFF = True
X_FRAME_OPTIONS = 'DENY'

# Database desde DATABASE_URL (Render/VPS)
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

# Redis desde REDIS_URL
REDIS_URL = os.environ.get('REDIS_URL')

# Allowed hosts desde variable de entorno
allowed_hosts_env = os.environ.get('ALLOWED_HOSTS', '')
if allowed_hosts_env:
    ALLOWED_HOSTS = [host.strip() for host in allowed_hosts_env.split(',')]

# CORS restrictivo en producción
CORS_ALLOW_ALL_ORIGINS = False
CORS_ALLOWED_ORIGINS = [
    origin.strip() for origin in os.environ.get('CORS_ALLOWED_ORIGINS', '').split(',')
    if origin.strip()
]

CSRF_TRUSTED_ORIGINS = [
    origin.strip() for origin in os.environ.get('CSRF_TRUSTED_ORIGINS', '').split(',')
    if origin.strip()
]

# Logging para producción
LOGGING['handlers']['app_file']['filename'] = os.path.join(
    LOG_DIR, 
    os.environ.get('TENANT_SCHEMA', 'public'),
    'app.log'
)
LOGGING['loggers']['django.request']['level'] = 'WARNING'

