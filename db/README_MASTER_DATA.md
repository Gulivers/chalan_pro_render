# Master Data for Residential Electrical Company

## 📋 Overview
Este documento contiene todos los maestros de datos necesarios para una empresa de construcciones eléctricas residenciales.

## 🏢 A) WAREHOUSES (3 Almacenes)

| ID | Nombre | Ubicación | Descripción |
|----|--------|-----------|-------------|
| 1 | **Main Warehouse** | 123 Electric Ave, Miami, FL 33101 | Almacén principal (default) |
| 2 | **Installation Warehouse** | 456 Installation St, Miami, FL 33102 | Almacén para instalaciones |
| 3 | **Emergency Stock** | 789 Emergency Blvd, Miami, FL 33103 | Stock de emergencia |

### 🎯 Uso de Almacenes:
- **Main Warehouse**: Inventario general y productos estándar
- **Installation Warehouse**: Materiales específicos para proyectos de instalación
- **Emergency Stock**: Stock crítico para reparaciones urgentes

---

## 💰 B) PRICE TYPES (4 Tipos de Precio)

| ID | Código | Nombre | Descripción | Uso |
|----|--------|--------|-------------|-----|
| 1 | **COST** | Cost Price | Precio de costo interno | Cálculos internos, márgenes |
| 2 | **RETAIL** | Retail Price | Precio al público | Clientes residenciales |
| 3 | **CONTRACTOR** | Contractor Price | Precio con descuentos | Contratistas, volumen |
| 4 | **WHOLESALE** | Wholesale Price | Precio mayorista | Compras al por mayor |

### 🎯 Estrategia de Precios:
- **COST**: Base para cálculos de margen
- **RETAIL**: Precio estándar para hogares
- **CONTRACTOR**: Descuentos por volumen (10-15%)
- **WHOLESALE**: Precios especiales para grandes compras

---

## 👥 C) PARTY TYPES (3 Tipos de Partes)

| ID | Nombre | Descripción | Características |
|----|--------|-------------|-----------------|
| 1 | **Customer** | Clientes residenciales y comerciales | Compran servicios eléctricos |
| 2 | **Supplier** | Proveedores de equipo eléctrico | Venden materiales y equipos |
| 3 | **Subcontractor** | Subcontratistas eléctricos | Prestan servicios especializados |

### 🎯 Relaciones:
- **Customer** → **PartyCategory**: Residential/Commercial Customer
- **Supplier** → **PartyCategory**: Electrical Supplier  
- **Subcontractor** → **PartyCategory**: Electrical Contractor

---

## 🏷️ D) PARTY CATEGORIES (4 Categorías de Partes)

| ID | Nombre | Descripción | Customer Rank | Supplier Rank |
|----|--------|-------------|---------------|---------------|
| 1 | **Residential Customer** | Propietarios de viviendas | 1 | 0 |
| 2 | **Commercial Customer** | Empresas y propiedades comerciales | 2 | 0 |
| 3 | **Electrical Supplier** | Fabricantes y distribuidores | 0 | 1 |
| 4 | **Electrical Contractor** | Contratistas eléctricos licenciados | 1 | 1 |

### 🎯 Ranking System:
- **Customer Rank**: Prioridad como cliente (1=básico, 2=premium)
- **Supplier Rank**: Prioridad como proveedor (1=activo)
- **Both**: Pueden ser cliente Y proveedor

---

## 📊 E) EJEMPLOS DE PARTIES

### 🏠 Residential Customer
- **Name**: John Smith
- **Address**: 123 Main St, Miami, FL 33101
- **Phone**: 305-555-0101
- **Email**: john.smith@email.com
- **Category**: Residential Customer

### 🏢 Commercial Customer
- **Name**: ABC Office Building
- **RFC**: 12-3456789-0
- **Address**: 456 Business Ave, Miami, FL 33102
- **Phone**: 305-555-0202
- **Email**: office@abc.com
- **Category**: Commercial Customer

### 🔌 Electrical Supplier
- **Name**: Miami Electrical Supply
- **RFC**: 98-7654321-0
- **Address**: 789 Supply Blvd, Miami, FL 33103
- **Phone**: 305-555-0303
- **Email**: sales@miamielectrical.com
- **Category**: Electrical Supplier

### ⚡ Electrical Contractor
- **Name**: Pro Electric Services
- **RFC**: 11-2233445-6
- **Address**: 321 Service St, Miami, FL 33104
- **Phone**: 305-555-0404
- **Email**: info@proelectric.com
- **Category**: Electrical Contractor

---

## 🚀 F) DATOS ADICIONALES SUGERIDOS

### 📋 Job Statuses (Estados de Proyectos)
- Planning (Planificación)
- Material Order (Pedido de Materiales)
- Installation (Instalación)
- Inspection (Inspección)
- Completed (Completado)
- Warranty (Garantía)

### 🔧 Service Types (Tipos de Servicios)
- New Construction (Nueva Construcción)
- Remodeling (Remodelación)
- Maintenance (Mantenimiento)
- Emergency Repair (Reparación de Emergencia)
- Upgrade (Actualización)

---

## 📝 IMPLEMENTACIÓN

### 1. Ejecutar Script SQL
```bash
# Ejecutar en MySQL/MariaDB
mysql -u username -p database_name < db/master_data_electrical_company.sql
```

### 2. Verificar Datos
```sql
-- Verificar Warehouses
SELECT * FROM appinventory_warehouse;

-- Verificar Price Types
SELECT * FROM appinventory_pricetype;

-- Verificar Party Types
SELECT * FROM apptransactions_partytype;

-- Verificar Party Categories
SELECT * FROM apptransactions_partycategory;

-- Verificar Parties
SELECT * FROM apptransactions_party;
```

### 3. Configurar Permisos
- Asignar usuarios a warehouses específicos
- Configurar precios por defecto por categoría de cliente
- Establecer niveles de descuento por tipo de cliente

---

## 🎯 FLUJO DE TRABAJO TÍPICO

### 1. **Nuevo Cliente Residencial**
```
Party Type: Customer
Party Category: Residential Customer
Default Price Type: RETAIL
Customer Rank: 1
```

### 2. **Contratista Eléctrico**
```
Party Type: Customer + Subcontractor
Party Category: Electrical Contractor
Default Price Type: CONTRACTOR
Customer Rank: 2
Supplier Rank: 1
```

### 3. **Proveedor de Materiales**
```
Party Type: Supplier
Party Category: Electrical Supplier
Default Price Type: WHOLESALE
Supplier Rank: 1
```

---

## 📈 BENEFICIOS

✅ **Organización**: Estructura clara de clientes y proveedores
✅ **Precios**: Estrategia de precios diferenciada por segmento
✅ **Inventario**: Gestión eficiente por tipo de almacén
✅ **Relaciones**: Clasificación clara de tipos de partes
✅ **Escalabilidad**: Fácil agregar nuevos tipos y categorías
