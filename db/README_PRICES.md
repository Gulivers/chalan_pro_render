# 💰 Sistema de Precios para Empresas Eléctricas

## 📁 Archivo Generado

- **`db/insert_product_prices.sql`** - INSERTs completos para tipos de precio y precios de productos

## 🏗️ Estructura de Precios

### Tabla: `appinventory_pricetype`
```sql
- id (bigint, AUTO_INCREMENT, PRIMARY KEY)
- name (varchar(15), UNIQUE)
- description (text)
- is_active (boolean)
```

### Tabla: `appinventory_productprice`
```sql
- id (bigint, AUTO_INCREMENT, PRIMARY KEY)
- product_id (bigint, FOREIGN KEY)
- price_type_id (bigint, FOREIGN KEY)
- unit_id (bigint, FOREIGN KEY)
- price (decimal(10,2))
- is_default (boolean)
- is_sale (boolean)
- is_purchase (boolean)
- valid_from (date)
- valid_until (date)
- is_active (boolean)
```

## 📊 Tipos de Precio Implementados

| Tipo | Descripción | Uso |
|------|-------------|-----|
| **LIST** | Lista de precios estándar | Precio base de referencia |
| **COST** | Costo de compra | Para calcular márgenes |
| **SALE** | Precio de venta | Precio al público |
| **WHOLESALE** | Precio al mayoreo | Para compradores grandes |
| **CONTRACTOR** | Precio para contratistas | Descuento especializado |

## 💡 Lógica de Precios Aplicada

### **Estructura de Precios por Producto:**

1. **LIST** (Precio Base)
   - Precio original del producto
   - `is_default = TRUE`
   - `is_sale = TRUE`
   - `is_purchase = FALSE`

2. **COST** (Costo de Compra)
   - 65% del precio de lista
   - `is_default = FALSE`
   - `is_sale = FALSE`
   - `is_purchase = TRUE`

3. **WHOLESALE** (Mayoreo)
   - 80% del precio de lista
   - `is_default = FALSE`
   - `is_sale = TRUE`
   - `is_purchase = FALSE`

4. **CONTRACTOR** (Contratistas)
   - 85% del precio de lista
   - `is_default = FALSE`
   - `is_sale = TRUE`
   - `is_purchase = FALSE`

## 📈 Estadísticas Generadas

### **Total de Datos:**
- **Productos procesados**: 699 productos
- **Precios creados**: 2,796 precios
- **Tipos de precio**: 5 tipos
- **Promedio por producto**: 4 precios por producto

### **Distribución de Precios:**
- **LIST**: 699 precios (precio base)
- **COST**: 699 precios (65% del base)
- **WHOLESALE**: 699 precios (80% del base)
- **CONTRACTOR**: 699 precios (85% del base)

## 🚀 Instrucciones de Instalación

### **1. Ejecutar el Script SQL:**
```sql
SOURCE db/insert_product_prices.sql;
```

### **2. Verificar Instalación:**
```sql
-- Contar tipos de precio
SELECT COUNT(*) FROM appinventory_pricetype;

-- Contar precios insertados
SELECT COUNT(*) FROM appinventory_productprice;

-- Verificar distribución por tipo
SELECT 
    pt.name as tipo_precio,
    COUNT(pp.id) as total_precios
FROM appinventory_productprice pp
JOIN appinventory_pricetype pt ON pp.price_type_id = pt.id
GROUP BY pt.name;
```

## 🔍 Consultas Útiles

### **Precios por Producto:**
```sql
SELECT 
    p.sku,
    p.name,
    pt.name as tipo_precio,
    pp.price,
    u.code as unidad,
    pp.is_default
FROM appinventory_product p
JOIN appinventory_productprice pp ON p.id = pp.product_id
JOIN appinventory_pricetype pt ON pp.price_type_id = pt.id
JOIN appinventory_unitofmeasure u ON pp.unit_id = u.id
WHERE p.sku = 'THHN-1-STR-BLK'
ORDER BY pt.name;
```

### **Productos por Rango de Precio:**
```sql
SELECT 
    p.sku,
    p.name,
    pp.price
FROM appinventory_product p
JOIN appinventory_productprice pp ON p.id = pp.product_id
JOIN appinventory_pricetype pt ON pp.price_type_id = pt.id
WHERE pt.name = 'LIST'
AND pp.price BETWEEN 1.00 AND 5.00
ORDER BY pp.price;
```

### **Márgenes de Ganancia:**
```sql
SELECT 
    p.sku,
    p.name,
    sale_price.price as precio_venta,
    cost_price.price as precio_costo,
    ROUND(sale_price.price - cost_price.price, 2) as margen_absoluto,
    ROUND(((sale_price.price - cost_price.price) / sale_price.price) * 100, 2) as margen_porcentaje
FROM appinventory_product p
JOIN appinventory_productprice sale_price ON p.id = sale_price.product_id
JOIN appinventory_pricetype sale_type ON sale_price.price_type_id = sale_type.id
JOIN appinventory_productprice cost_price ON p.id = cost_price.product_id
JOIN appinventory_pricetype cost_type ON cost_price.price_type_id = cost_type.id
WHERE sale_type.name = 'LIST'
AND cost_type.name = 'COST'
ORDER BY margen_porcentaje DESC;
```

### **Productos sin Precios:**
```sql
SELECT 
    p.sku,
    p.name
FROM appinventory_product p
LEFT JOIN appinventory_productprice pp ON p.id = pp.product_id
WHERE pp.product_id IS NULL;
```

## ⚙️ Personalización de Precios

### **Actualizar Márgenes:**
```sql
-- Cambiar margen de costo a 70%
UPDATE appinventory_productprice pp
JOIN appinventory_pricetype pt ON pp.price_type_id = pt.id
SET pp.price = (
    SELECT base_price.price * 0.70
    FROM appinventory_productprice base_price
    JOIN appinventory_pricetype base_type ON base_price.price_type_id = base_type.id
    WHERE base_type.name = 'LIST'
    AND base_price.product_id = pp.product_id
)
WHERE pt.name = 'COST';
```

### **Agregar Nuevo Tipo de Precio:**
```sql
-- Insertar nuevo tipo
INSERT INTO appinventory_pricetype (name, description, is_active) VALUES
('PROMOTION', 'Precio promocional', TRUE);

-- Crear precios promocionales (90% del precio de lista)
INSERT INTO appinventory_productprice (
    product_id, price_type_id, unit_id, price, is_default, 
    valid_from, valid_until, is_active, is_sale, is_purchase
)
SELECT 
    p.id,
    pt.id,
    pp.unit_id,
    pp.price * 0.90,
    FALSE,
    CURDATE(),
    DATE_ADD(CURDATE(), INTERVAL 30 DAY),
    TRUE,
    TRUE,
    FALSE
FROM appinventory_product p
JOIN appinventory_productprice pp ON p.id = pp.product_id
JOIN appinventory_pricetype pt ON pp.price_type_id = pt.id
JOIN appinventory_pricetype list_type ON list_type.name = 'LIST'
WHERE list_type.id = pp.price_type_id;
```

## ✅ Características del Sistema

1. **Múltiples Tipos**: 5 tipos de precio diferentes
2. **Flexibilidad**: Fácil agregar nuevos tipos
3. **Márgenes Automáticos**: Cálculo automático de costos
4. **Validación**: Campos is_sale e is_purchase obligatorios
5. **Fechas**: Soporte para precios con vigencia
6. **Unidades**: Precios por unidad de medida específica
7. **Escalabilidad**: Sistema preparado para miles de productos

## 🔄 Mantenimiento

### **Actualizar Precios Masivamente:**
```sql
-- Aumentar todos los precios LIST en 5%
UPDATE appinventory_productprice pp
JOIN appinventory_pricetype pt ON pp.price_type_id = pt.id
SET pp.price = pp.price * 1.05
WHERE pt.name = 'LIST';
```

### **Desactivar Precios:**
```sql
-- Desactivar precios promocionales vencidos
UPDATE appinventory_productprice pp
JOIN appinventory_pricetype pt ON pp.price_type_id = pt.id
SET pp.is_active = FALSE
WHERE pt.name = 'PROMOTION'
AND pp.valid_until < CURDATE();
```

El sistema está completamente funcional y listo para manejar precios complejos en tu empresa eléctrica.
