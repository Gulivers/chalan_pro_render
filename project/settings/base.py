"""
Base settings for Chalan-Pro Multi-tenant
Configuración base compartida entre todos los ambientes
"""
from corsheaders.defaults import default_headers
from pathlib import Path
import os
import logging
import dj_database_url

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent.parent

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = os.environ.get('DJANGO_SECRET_KEY', 'django-insecure-zf^1c+5%cj8m5k%^1(5c06e79xo81tgsapvcp1y6n7o74_q_$#')

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = os.environ.get('DEBUG', 'False') == 'True'

# Parse ALLOWED_HOSTS from environment variable or use defaults
allowed_hosts_env = os.environ.get(
    'ALLOWED_HOSTS',
    'localhost,127.0.0.1,192.168.0.248'
)
ALLOWED_HOSTS = [host.strip() for host in allowed_hosts_env.split(',')]

MEDIA_URL = '/media/'
MEDIA_ROOT = BASE_DIR / 'media'

# ============================================
# Multi-tenant Configuration (django-tenants)
# ============================================
SHARED_APPS = [
    'django_tenants',  # Debe ir primero
    'daphne',  # Daphne debe ir antes de django.contrib.staticfiles
    'django.contrib.contenttypes',
    'django.contrib.auth',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.admin',
    'django.contrib.staticfiles',
    'channels',
    'rest_framework',
    'rest_framework.authtoken',
    'django_filters',
    'corsheaders',
    'appcore',  # App compartida con modelo Tenant
]

TENANT_APPS = [
    'daphne',  # Daphne debe ir antes de django.contrib.staticfiles
    'django.contrib.contenttypes',
    'django.contrib.auth',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.admin',
    'django.contrib.staticfiles',
    'channels',
    'rest_framework',
    'rest_framework.authtoken',
    'django_filters',
    'corsheaders',
    'auditapp',
    'ctrctsapp',
    'crewsapp',
    'appschedule',
    'appinventory',
    'apptransactions',
]

INSTALLED_APPS = list(SHARED_APPS) + [app for app in TENANT_APPS if app not in SHARED_APPS]

# Configuración de django-tenants
TENANT_MODEL = "appcore.Tenant"  # Modelo de tenant
TENANT_DOMAIN_MODEL = "appcore.Domain"  # Modelo de dominio

# Middleware multi-tenant - debe ir primero
MIDDLEWARE = [
    'django_tenants.middleware.main.TenantMainMiddleware',  # Debe ir primero
    'project.DisableCSRF.DisableCSRF',
    'corsheaders.middleware.CorsMiddleware',
    'django.middleware.security.SecurityMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

# CSRF Trusted Origins
csrf_origins_env = os.environ.get('CSRF_TRUSTED_ORIGINS', 'http://localhost:8080,http://192.168.0.248:8080,http://192.168.0.248:3000')
CSRF_TRUSTED_ORIGINS = [origin.strip() for origin in csrf_origins_env.split(',')]

# CORS Configuration
CORS_ALLOW_ALL_ORIGINS = os.environ.get('CORS_ALLOW_ALL_ORIGINS', 'True') == 'True'
CORS_ALLOW_CREDENTIALS = True
CORS_ALLOW_WEBSOCKETS = True
CORS_ALLOW_HEADERS = list(default_headers) + [
    'access-control-allow-origin',
    'X-Custom-Header',
    'X-Requested-With',
    'Authorization',
    'Content-Type'
]
CORS_ALLOW_METHODS = (
    'DELETE',
    'GET',
    'OPTIONS',
    'PATCH',
    'POST',
    'PUT',
)

# REST Framework
REST_FRAMEWORK = {
    'DEFAULT_AUTHENTICATION_CLASSES': [
        'rest_framework.authentication.TokenAuthentication',
    ],
    'DEFAULT_PERMISSION_CLASSES': [
        'rest_framework.permissions.IsAuthenticated',
    ],
    "EXCEPTION_HANDLER": "project.api.exception_handler.custom_exception_handler",
}

AUTH_USER_MODEL = 'auth.User'
AUTHENTICATION_BACKENDS = [
    'django.contrib.auth.backends.ModelBackend',
]

ROOT_URLCONF = 'project.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [os.path.join(BASE_DIR, 'appinventory', 'templates')],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'project.wsgi.application'
ASGI_APPLICATION = "project.asgi.application"

# Database configuration - Multi-tenant PostgreSQL
DATABASE_URL = os.environ.get('DATABASE_URL')

if DATABASE_URL:
    # PostgreSQL con django-tenants
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
else:
    # Fallback para desarrollo local
    DATABASES = {
        'default': {
            'ENGINE': 'django_tenants.postgresql_backend',
            'NAME': os.environ.get('POSTGRES_DB', 'chalan_tenant_db'),
            'USER': os.environ.get('POSTGRES_USER', 'chalan_user'),
            'PASSWORD': os.environ.get('POSTGRES_PASSWORD', 'chalan_password'),
            'HOST': os.environ.get('POSTGRES_HOST', 'localhost'),
            'PORT': os.environ.get('POSTGRES_PORT', '5432'),
        }
    }

# Database Router para multi-tenant
DATABASE_ROUTERS = (
    'django_tenants.routers.TenantSyncRouter',
)

# Password validation
AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

# Internationalization
LANGUAGE_CODE = 'en-us'
TIME_ZONE = 'UTC'
USE_I18N = True
USE_TZ = True

# Static files
STATIC_URL = 'static/'
STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')
STATICFILES_STORAGE = 'whitenoise.storage.CompressedManifestStaticFilesStorage'
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static'),
]

X_FRAME_OPTIONS = 'SAMEORIGIN'
DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

# Email Configuration
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = os.environ.get('EMAIL_HOST', 'smtp.sendgrid.net')
EMAIL_PORT = os.environ.get('EMAIL_PORT', 587)
EMAIL_USE_TLS = True
EMAIL_HOST_USER = os.environ.get('EMAIL_HOST_USER', 'apikey')
EMAIL_HOST_PASSWORD = os.environ.get('EMAIL_HOST_PASSWORD', '')
DEFAULT_FROM_EMAIL = os.environ.get('EMAIL_DEFAULT_FROM', 'oliver@division16llc.com')

FRONT_URL = os.environ.get('FRONT_URL', 'http://192.168.0.248:8080')

# Channel Layers - Redis configuration
REDIS_URL = os.environ.get('REDIS_URL')

if REDIS_URL:
    CHANNEL_LAYERS = {
        "default": {
            "BACKEND": "channels_redis.core.RedisChannelLayer",
            "CONFIG": {
                "hosts": [REDIS_URL],
            },
        },
    }
else:
    CHANNEL_LAYERS = {
        "default": {
            "BACKEND": "channels.layers.InMemoryChannelLayer",
        },
    }

ENABLE_WEBSOCKET_NOTIFICATIONS = os.environ.get('ENABLE_WEBSOCKET_NOTIFICATIONS', 'True') == 'True'

# Logging Configuration
LOG_DIR = os.path.join(BASE_DIR, "logs")
os.makedirs(LOG_DIR, exist_ok=True)

LOGGING = {
    "version": 1,
    "disable_existing_loggers": False,
    "formatters": {
        "verbose": {"format": "%(asctime)s [%(levelname)s] %(name)s: %(message)s"}
    },
    "handlers": {
        "console": {"class": "logging.StreamHandler", "formatter": "verbose"},
        "app_file": {
            "class": "logging.handlers.RotatingFileHandler",
            "filename": os.path.join(LOG_DIR, "app.log"),
            "maxBytes": 10_000_000,
            "backupCount": 5,
            "formatter": "verbose",
        },
    },
    "loggers": {
        "django.request": {"handlers": ["console", "app_file"], "level": "INFO", "propagate": True},
        "appschedule": {"handlers": ["console", "app_file"], "level": "INFO", "propagate": False},
    },
}

# Public schema name (para datos compartidos)
PUBLIC_SCHEMA = 'public'

