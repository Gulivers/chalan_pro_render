-- ============================================
-- Script de Inicialización de Schemas Multi-tenant
-- ============================================
-- Este script crea los schemas iniciales para los tenants
-- Se ejecuta automáticamente al inicializar el contenedor PostgreSQL
-- ============================================

-- Crear extensiones necesarias para django-tenants
CREATE EXTENSION IF NOT EXISTS pg_trgm;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Crear schema público (ya existe por defecto, pero lo aseguramos)
-- El schema 'public' contiene las tablas compartidas (Tenant, Domain, etc.)

-- Crear schema para tenant_phoenix
CREATE SCHEMA IF NOT EXISTS tenant_phoenix;
GRANT ALL ON SCHEMA tenant_phoenix TO chalan_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA tenant_phoenix TO chalan_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA tenant_phoenix TO chalan_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA tenant_phoenix GRANT ALL ON TABLES TO chalan_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA tenant_phoenix GRANT ALL ON SEQUENCES TO chalan_user;

-- Crear schema para tenant_client2
CREATE SCHEMA IF NOT EXISTS tenant_client2;
GRANT ALL ON SCHEMA tenant_client2 TO chalan_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA tenant_client2 TO chalan_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA tenant_client2 TO chalan_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA tenant_client2 GRANT ALL ON TABLES TO chalan_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA tenant_client2 GRANT ALL ON SEQUENCES TO chalan_user;

-- Crear schema para tenant_client3 (ejemplo adicional)
CREATE SCHEMA IF NOT EXISTS tenant_client3;
GRANT ALL ON SCHEMA tenant_client3 TO chalan_user;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA tenant_client3 TO chalan_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA tenant_client3 TO chalan_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA tenant_client3 GRANT ALL ON TABLES TO chalan_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA tenant_client3 GRANT ALL ON SEQUENCES TO chalan_user;

-- Nota: Los schemas se crearán automáticamente cuando Django ejecute migrate_schemas
-- Este script solo asegura que los permisos estén correctos

