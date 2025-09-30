-- =====================================================
-- INSERT TIPOS DE DOCUMENTOS PARA EMPRESA ELÉCTRICA RESIDENCIAL
-- Puerto Rico - Transacciones típicas del sector eléctrico
-- =====================================================

INSERT INTO apptransactions_documenttype (
    type_code,
    description,
    affects_physical,
    affects_logical,
    affects_accounting,
    is_taxable,
    is_purchase,
    is_sales,
    warehouse_required,
    stock_movement,
    is_active,
    is_operational,
    allow_negative_sales
) VALUES
-- =====================================================
-- DOCUMENTOS DE VENTAS (SALES)
-- =====================================================

-- Facturas de Venta
('FAC', 'Factura de Venta', 1, 1, 1, 1, 0, 1, 1, -1, 1, 1, 0),
('FAC-INT', 'Factura de Venta Internacional', 1, 1, 1, 1, 0, 1, 1, -1, 1, 1, 0),
('FAC-CONT', 'Factura de Venta a Contratistas', 1, 1, 1, 1, 0, 1, 1, -1, 1, 1, 0),

-- Notas de Crédito
('NC', 'Nota de Crédito', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0),
('NC-DEV', 'Nota de Crédito por Devolución', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0),
('NC-DESC', 'Nota de Crédito por Descuento', 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0),

-- Notas de Débito
('ND', 'Nota de Débito', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('ND-REC', 'Nota de Débito por Recargo', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),

-- Cotizaciones y Presupuestos
('COT', 'Cotización', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0),
('PRES', 'Presupuesto', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0),
('PROP', 'Propuesta Comercial', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0),

-- Órdenes de Venta
('OV', 'Orden de Venta', 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0),
('OV-INST', 'Orden de Venta con Instalación', 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0),

-- =====================================================
-- DOCUMENTOS DE COMPRAS (PURCHASES)
-- =====================================================

-- Facturas de Compra
('FAC-COMP', 'Factura de Compra', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0),
('FAC-COMP-INT', 'Factura de Compra Internacional', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0),

-- Órdenes de Compra
('OC', 'Orden de Compra', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0),
('OC-URG', 'Orden de Compra Urgente', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0),

-- Recepciones
('REC', 'Recepción de Mercancía', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0),
('REC-PAR', 'Recepción Parcial', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0),

-- Devoluciones a Proveedores
('DEV-PROV', 'Devolución a Proveedor', 1, 1, 1, 1, 1, 0, 1, -1, 1, 1, 0),

-- =====================================================
-- DOCUMENTOS DE INVENTARIO (INVENTORY)
-- =====================================================

-- Ajustes de Inventario
('AJ-INV', 'Ajuste de Inventario', 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0),
('AJ-INV-FIS', 'Ajuste de Inventario Físico', 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0),
('AJ-INV-NEG', 'Ajuste de Inventario Negativo', 1, 1, 1, 0, 0, 0, 1, -1, 1, 1, 1),

-- Transferencias entre Almacenes
('TRANS', 'Transferencia entre Almacenes', 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0),
('TRANS-EXT', 'Transferencia Externa', 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0),

-- Entregas de Material
('ENT-MAT', 'Entrega de Material', 1, 1, 0, 0, 0, 0, 1, -1, 1, 1, 0),
('ENT-OBRA', 'Entrega a Obra', 1, 1, 0, 0, 0, 0, 1, -1, 1, 1, 0),

-- =====================================================
-- DOCUMENTOS DE SERVICIOS ELÉCTRICOS
-- =====================================================

-- Servicios de Instalación
('SERV-INST', 'Servicio de Instalación', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('SERV-MANT', 'Servicio de Mantenimiento', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('SERV-REP', 'Servicio de Reparación', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),

-- Trabajos por Contrato
('CONTR-INST', 'Contrato de Instalación', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('CONTR-MANT', 'Contrato de Mantenimiento', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),

-- =====================================================
-- DOCUMENTOS DE PROYECTOS
-- =====================================================

-- Proyectos Residenciales
('PROJ-RES', 'Proyecto Residencial', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('PROJ-COM', 'Proyecto Comercial', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('PROJ-IND', 'Proyecto Industrial', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),

-- =====================================================
-- DOCUMENTOS DE CONTROL INTERNO
-- =====================================================

-- Inventarios Físicos
('INV-FIS', 'Inventario Físico', 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0),
('INV-CIC', 'Inventario Cíclico', 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0),

-- Reclamos y Reclasificaciones
('RECLAMO', 'Reclamo de Mercancía', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0),
('RECLAS', 'Reclasificación de Inventario', 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0),

-- =====================================================
-- DOCUMENTOS ESPECIALES PUERTO RICO
-- =====================================================

-- Documentos Fiscales PR
('FAC-IVU', 'Factura con IVU', 1, 1, 1, 1, 0, 1, 1, -1, 1, 1, 0),
('COMP-EXENT', 'Compra Exenta', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0),

-- Documentos de Aduana
('FAC-ADU', 'Factura de Aduana', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0),
('ENT-ADU', 'Entrada de Aduana', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0);

-- =====================================================
-- VERIFICACIÓN DE INSERCIÓN
-- =====================================================

-- Contar documentos insertados
SELECT 
    'Documentos insertados' as resultado,
    COUNT(*) as total_documentos
FROM apptransactions_documenttype;

-- Verificar distribución por tipo
SELECT 
    CASE 
        WHEN is_sales = 1 AND is_purchase = 0 THEN 'VENTAS'
        WHEN is_sales = 0 AND is_purchase = 1 THEN 'COMPRAS'
        WHEN is_sales = 1 AND is_purchase = 1 THEN 'MIXTO'
        ELSE 'CONTROL'
    END as categoria,
    COUNT(*) as cantidad,
    SUM(CASE WHEN is_active = 1 THEN 1 ELSE 0 END) as activos
FROM apptransactions_documenttype
GROUP BY 
    CASE 
        WHEN is_sales = 1 AND is_purchase = 0 THEN 'VENTAS'
        WHEN is_sales = 0 AND is_purchase = 1 THEN 'COMPRAS'
        WHEN is_sales = 1 AND is_purchase = 1 THEN 'MIXTO'
        ELSE 'CONTROL'
    END;

-- Ejemplos de documentos por categoría
SELECT 
    type_code,
    description,
    CASE 
        WHEN is_sales = 1 AND is_purchase = 0 THEN 'VENTA'
        WHEN is_sales = 0 AND is_purchase = 1 THEN 'COMPRA'
        WHEN is_sales = 1 AND is_purchase = 1 THEN 'MIXTO'
        ELSE 'CONTROL'
    END as tipo,
    CASE 
        WHEN stock_movement > 0 THEN 'ENTRADA'
        WHEN stock_movement < 0 THEN 'SALIDA'
        ELSE 'SIN MOVIMIENTO'
    END as movimiento_stock,
    CASE WHEN is_taxable = 1 THEN 'SÍ' ELSE 'NO' END as gravable
FROM apptransactions_documenttype
WHERE is_active = 1
ORDER BY tipo, type_code;
