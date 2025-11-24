# 📚 Documentación Chalan-Pro ERP

Bienvenido a la documentación completa del sistema **Chalan-Pro ERP**, un sistema multi-tenant desarrollado con Django, Vue.js, PostgreSQL y Docker.

---

## 📂 Estructura de Documentación

Esta documentación está organizada en las siguientes categorías:

### 🎨 [Frontend](./frontend/)
Documentación relacionada con el desarrollo del frontend Vue.js.

- **[Desarrollo Frontend Local](./frontend/DESARROLLO_FRONTEND_LOCAL.md)** - Guía para ejecutar el frontend sin Docker
- **[DevServer y Render](./frontend/DEV_SERVER_RENDER.md)** - Configuración del devServer y despliegue en Render

### ⚙️ [Backend](./backend/)
Documentación relacionada con Django, migraciones y administración.

- **[Solución: Backend No Inicia](./backend/SOLUCION_BACKEND_NO_INICIA.md)** - Troubleshooting del backend
- **[Solución: Migraciones PostgreSQL](./backend/SOLUCION_MIGRACIONES_POSTGRESQL.md)** - Problemas con migraciones
- **[Solución: Admin Django Tenants](./backend/SOLUCION_ADMIN_DJANGO_TENANTS.md)** - Configuración del admin multi-tenant
- **[Solución: Validación Schema Name](./backend/SOLUCION_SCHEMA_NAME_VALIDATION.md)** - Validación de nombres de schema
- **[Solución: Editar Schema y Tenant ID](./backend/SOLUCION_EDITAR_SCHEMA_TENANT_ID.md)** - Edición de schemas desde admin
- **[Instrucciones de Migraciones](./backend/INSTRUCCIONES_MIGRACIONES.md)** - Guía completa de migraciones

### 🚀 [Render](./render/)
Documentación sobre despliegue y configuración en Render.com.

- **[Deploy en Render](./render/DEPLOY-RENDER.md)** - Guía completa de despliegue
- **[Variables de Render](./render/RENDER_VARIABLES.md)** - Configuración de variables de entorno
- **[Variables Listas](./render/VARIABLES_RENDER_LISTO.md)** - Variables pre-configuradas
- **[Configuración Final](./render/CONFIGURACION_FINAL.md)** - Configuración final para producción
- **[Solución: Error de Build](./render/SOLUCION_ERROR_BUILD.md)** - Troubleshooting de builds
- **[PostgreSQL en Render](./render/POSTGRESQL_RENDER.md)** - Configuración de base de datos
- **[SSH en Render](./render/SSH_RENDER_CONFIG.md)** - Configuración SSH
- **[Eliminar Tablas en Render](./render/ELIMINAR_TABLAS_RENDER.md)** - Limpieza de base de datos
- **[Conectar pgAdmin a Render](./render/CONECTAR_PGADMIN_RENDER.md)** - Conexión desde pgAdmin

### 🐳 [Docker](./docker/)
Documentación sobre Docker, contenedores y Docker Compose.

- **[README Docker](./docker/README-DOCKER.md)** - Guía principal de Docker
- **[Explicación Docker](./docker/EXPLICACION-DOCKER.md)** - Conceptos y explicaciones
- **[Docker Compose vs Scripts](./docker/DOCKER-COMPOSE-VS-SCRIPTS.md)** - Comparación de métodos
- **[Comandos Rápidos Docker](./docker/COMANDOS-RAPIDOS-DOCKER.md)** - Referencia rápida
- **[Resumen Rápido Docker](./docker/RESUMEN-RAPIDO_DOCKER.md)** - Resumen ejecutivo
- **[Compilar Local con Docker](./docker/Compila_local-Docker.md)** - Build local

### 🗄️ [Database](./database/)
Documentación sobre PostgreSQL, pgAdmin, DBeaver y conexiones.

- **[Guía Paso a Paso pgAdmin](./database/GUIA_PASO_A_PASO_PGADMIN.md)** - Tutorial completo
- **[Guía pgAdmin](./database/GUIA-PGADMIN.md)** - Guía de uso
- **[Inicio Rápido pgAdmin](./database/INICIO-RAPIDO-PGADMIN.md)** - Inicio rápido
- **[Solución: Conexión pgAdmin](./database/SOLUCION_PGADMIN_CONEXION.md)** - Troubleshooting
- **[Credenciales Correctas pgAdmin](./database/CREDENCIALES_CORRECTAS_PGADMIN.md)** - Credenciales
- **[Análisis Conexión pgAdmin/DBeaver](./database/ANALISIS_CONEXION_PGADMIN_DBEAVER.md)** - Análisis de conexiones
- **[Conexión Chalan DB](./database/CONEXION_CHALAN_DB.md)** - Configuración de conexión
- **[Instalar Driver PostgreSQL DBeaver](./database/INSTALAR_DRIVER_POSTGRESQL_DBEAVER.md)** - Instalación de drivers
- **[Solución: Driver SCRAM-SHA256](./database/SOLUCION_DRIVER_SCRAM_SHA256.md)** - Problemas de autenticación
- **[Solución: Problema Driver DBeaver](./database/SOLUCION_PROBLEMA_DRIVER_DBEAVER.md)** - Troubleshooting drivers
- **[Solución: Error Contraseña DBeaver](./database/SOLUCION_ERROR_CONTRASEÑA_DBEAVER.md)** - Problemas de contraseña
- **[Credenciales Confirmadas DBeaver](./database/CREDENCIALES_CONFIRMADAS_DBEAVER.md)** - Credenciales verificadas
- **[Comandos PSQL Credenciales](./database/COMANDOS_PSQL_CREDENCIALES.md)** - Comandos útiles
- **[Credenciales Migración](./database/CREDENCIALES_MIGRACION.md)** - Credenciales para migraciones
- **[Resumen: Gestión Switch PostgreSQL](./database/RESUMEN-GESTION-Switch-POSTGRES.md)** - Cambio de base de datos

### ⚙️ [Settings](./settings/)
Documentación sobre configuración y variables de entorno.

*(Por ahora vacío - se pueden agregar documentos de configuración aquí)*

### 🎯 [Features](./features/)
Documentación sobre funcionalidades específicas del sistema.

- **[Análisis Stock Inventario](./features/ANALISIS_STOCK_INVENTARIO.md)** - Análisis del módulo de inventario
- **[Resumen Cambios Stock](./features/RESUMEN_CAMBIOS_STOCK.md)** - Cambios en el módulo de stock
- **[Implementación Stock V2](./features/IMPLEMENTACION_STOCK_V2.md)** - Nueva versión del stock
- **[Manual Creación Productos](./features/Manual_Creacion_Productos_ChalanPro.md)** - Guía de productos
- **[README Schedule](./features/Readme_schedule.md)** - Documentación del módulo de schedule

### 🏢 [Multi-Tenant](./tenant_readme/)
Documentación específica sobre la arquitectura multi-tenant.

- **[Plan Estructural Multi-tenant](./tenant_readme/PLAN_ESTRUCTURAL_MULTITENANT.md)** - Arquitectura completa
- **[Flujo Tenant: Local vs Render](./tenant_readme/FLUJO_TENANT_LOCAL_VS_RENDER.md)** ✨ - Comparación de arquitecturas
- **[Guía Creación Tenant Local](./tenant_readme/GUIA_CREACION_TENANT_LOCAL.md)** ✨ - Guía paso a paso para crear tenants
- **[Onboarding Automático](./tenant_readme/ONBOARDING_AUTOMATICO.md)** - Sistema de onboarding
- **[Resumen Onboarding](./tenant_readme/RESUMEN_ONBOARDING.md)** - Resumen ejecutivo
- **[Implementación Multi-tenant](./tenant_readme/IMPLEMENTACION_MULTITENANT.md)** - Guía de implementación
- **[Multi-tenant Quickstart](./tenant_readme/MULTITENANT_QUICKSTART.md)** - Inicio rápido
- **[Multi-tenant Setup](./tenant_readme/MULTITENANT_SETUP.md)** - Configuración inicial
- **[README Multi-tenant](./tenant_readme/README_MULTITENANT.md)** - Documentación principal
- **[Flujo Actualización Completo](./tenant_readme/FLUJO_ACTUALIZACION_COMPLETO.md)** - Actualización de tenants
- **[Flujo Actualización Multi-tenant](./tenant_readme/flujo_actualizacion_multitenant.md)** - Actualización por tenant

---

## 🚀 Inicio Rápido

### Desarrollo Local

1. **Backend (Docker)**:
   ```bash
   docker-compose -f docker-compose.local.yml up -d
   ```

2. **Frontend (Local)**:
   ```bash
   cd vuefrontend
   npm install
   npm run serve
   ```

### Despliegue en Render

Ver la guía completa en [Deploy en Render](./render/DEPLOY-RENDER.md).

---

## 📖 Guías por Tarea

### Quiero...

- **Desarrollar el frontend localmente** → [Desarrollo Frontend Local](./frontend/DESARROLLO_FRONTEND_LOCAL.md)
- **Desplegar en Render** → [Deploy en Render](./render/DEPLOY-RENDER.md)
- **Conectar a la base de datos** → [Guía pgAdmin](./database/GUIA_PASO_A_PASO_PGADMIN.md)
- **Configurar multi-tenant** → [Plan Estructural Multi-tenant](./tenant_readme/PLAN_ESTRUCTURAL_MULTITENANT.md)
- **Resolver problemas del backend** → [Solución: Backend No Inicia](./backend/SOLUCION_BACKEND_NO_INICIA.md)
- **Entender Docker** → [README Docker](./docker/README-DOCKER.md)

---

## 🔍 Búsqueda Rápida

### Por Problema

- **Backend no inicia** → [Backend](./backend/SOLUCION_BACKEND_NO_INICIA.md)
- **Error de build** → [Render](./render/SOLUCION_ERROR_BUILD.md)
- **Problemas de conexión DB** → [Database](./database/)
- **Error de migraciones** → [Backend](./backend/SOLUCION_MIGRACIONES_POSTGRESQL.md)

### Por Tecnología

- **Vue.js** → [Frontend](./frontend/)
- **Django** → [Backend](./backend/)
- **PostgreSQL** → [Database](./database/)
- **Docker** → [Docker](./docker/)
- **Render** → [Render](./render/)

---

## 📝 Notas

- Esta documentación se actualiza constantemente
- Si encuentras información desactualizada, por favor reporta el problema
- Los archivos están organizados por categoría para facilitar la navegación

---

**Última actualización**: 2025-01-XX
