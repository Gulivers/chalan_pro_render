# 📦 INSERTs de Productos para Empresas Eléctricas

## 📁 Archivos Generados

### Archivos Principales:
1. **`insert_product_references.sql`** - INSERTs para tablas de referencia (categorías y marcas)
2. **`insert_products.sql`** - INSERTs para la tabla de productos
3. **`README_PRODUCTS.md`** - Esta documentación

## 🏗️ Estructura de los INSERTs

### Tabla: `appinventory_product`
```sql
INSERT INTO appinventory_product (
    name, 
    sku, 
    category_id, 
    brand_id, 
    unit_default_id, 
    reorder_level, 
    created_at, 
    is_active
) VALUES (
    'Nombre del Producto',
    'SKU-CODE',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Categoria'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'Marca'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'UNIDAD'),
    nivel_reorden,
    NOW(),
    TRUE
);
```

## 📊 Estadísticas Generadas

### Total de Productos: 883

### Distribución por Categoría:
| Categoría | Cantidad | Porcentaje |
|-----------|----------|------------|
| **Electrical Equipment** | 247 | 28.0% |
| **General Products** | 199 | 22.5% |
| **Lighting** | 96 | 10.9% |
| **Pipes and Conduit** | 93 | 10.5% |
| **Cables and Wires** | 57 | 6.5% |
| **Boxes and Connectors** | 46 | 5.2% |
| **Specialized Equipment** | 44 | 5.0% |
| **Boxes and Covers** | 41 | 4.6% |
| **Construction Materials** | 25 | 2.8% |
| **General Hardware** | 22 | 2.5% |
| **Tools** | 13 | 1.5% |

### Top 10 Marcas:
| Marca | Cantidad | Porcentaje |
|-------|----------|------------|
| **SIN MARCA** | 439 | 49.7% |
| **SIEMENS** | 63 | 7.1% |
| **SQUARE D** | 54 | 6.1% |
| **LEVITON** | 50 | 5.7% |
| **LEGRAND** | 49 | 5.5% |
| **GENERATION LIGHTING** | 28 | 3.2% |
| **EATON** | 16 | 1.8% |
| **PROGRESS** | 13 | 1.5% |
| **ABB** | 12 | 1.4% |
| **RACO** | 11 | 1.2% |

### Distribución por Unidad de Medida:
| Unidad | Cantidad | Descripción |
|--------|----------|-------------|
| **EA** | 669 | Individual/Pieza |
| **FT** | 199 | Por pie |
| **BOX** | 7 | Por caja/paquete |
| **GAL** | 4 | Por galón |
| **10FT** | 2 | Palo de 10 pies |
| **20FT** | 2 | Palo de 20 pies |

## 🔧 Lógica de Asignación de Unidades

### Cables y Alambres:
- **THHN, XHHW, Romex, MC, SER**: Por pie (FT) o rollo específico
- **Rollos de 100, 250, 500, 1000 pies**: Unidades específicas (100FT, 250FT, etc.)

### Tuberías y Conduit:
- **PVC, EMT, ENT**: Por pie (FT) o palo (10FT, 20FT)

### Cajas Eléctricas:
- **Con cantidades en descripción**: Por caja (BOX)
- **Individuales**: Por pieza (EA)

### Equipos Eléctricos:
- **Interruptores, tomas, placas**: Individual (EA)
- **Paneles, breakers**: Individual (EA)

### Herramientas y Hardware:
- **Con cantidades**: Por caja/paquete (BOX)
- **Individuales**: Por pieza (EA)

### Líquidos:
- **Selladores, adhesivos**: Por galón (GAL)

## 🚀 Instrucciones de Instalación

### 1. Ejecutar Tablas de Referencia:
```sql
SOURCE db/insert_product_references.sql;
```

### 2. Ejecutar INSERTs de Productos:
```sql
SOURCE db/insert_products.sql;
```

### 3. Verificar Instalación:
```sql
-- Contar productos insertados
SELECT COUNT(*) as total_productos FROM appinventory_product;

-- Verificar por categoría
SELECT 
    c.name as categoria,
    COUNT(p.id) as total_productos
FROM appinventory_product p
LEFT JOIN appinventory_productcategory c ON p.category_id = c.id
GROUP BY c.name
ORDER BY total_productos DESC;
```

## 🔍 Consultas de Verificación

### Productos por Marca:
```sql
SELECT 
    b.name as marca,
    COUNT(p.id) as total_productos
FROM appinventory_product p
LEFT JOIN appinventory_productbrand b ON p.brand_id = b.id
GROUP BY b.name
ORDER BY total_productos DESC
LIMIT 10;
```

### Productos por Unidad:
```sql
SELECT 
    u.code as unidad,
    u.name as nombre_unidad,
    COUNT(p.id) as total_productos
FROM appinventory_product p
LEFT JOIN appinventory_unitofmeasure u ON p.unit_default_id = u.id
GROUP BY u.code, u.name
ORDER BY total_productos DESC;
```

### Cables THHN Específicos:
```sql
SELECT 
    p.sku,
    p.name,
    u.code as unidad
FROM appinventory_product p
JOIN appinventory_unitofmeasure u ON p.unit_default_id = u.id
WHERE p.name LIKE '%THHN%'
ORDER BY u.code;
```

### Productos con Niveles de Reorden:
```sql
SELECT 
    p.sku,
    p.name,
    p.reorder_level,
    u.code as unidad
FROM appinventory_product p
JOIN appinventory_unitofmeasure u ON p.unit_default_id = u.id
WHERE p.reorder_level > 0
ORDER BY p.reorder_level DESC;
```

## ⚙️ Configuración de Niveles de Reorden

### Lógica Aplicada:
- **Rollos de cable**: 5 unidades (100FT, 250FT, 500FT, 1000FT)
- **Equipos críticos**: 3 unidades (breakers, paneles)
- **Paquetes**: 2 unidades (BOX, PK)
- **Cajas individuales**: 10 unidades
- **Por defecto**: 10 unidades

### Personalización:
Los niveles de reorden se pueden ajustar ejecutando:
```sql
UPDATE appinventory_product 
SET reorder_level = [NUEVO_VALOR] 
WHERE [CONDICION];
```

## ✅ Características del Sistema

1. **Integridad Referencial**: Todas las FK apuntan a registros válidos
2. **SKUs Únicos**: Cada producto tiene un SKU único
3. **Niveles Inteligentes**: Reorden automático según tipo de producto
4. **Unidades Apropiadas**: Mapeo inteligente de unidades por tipo
5. **Marcas Mapeadas**: Relación correcta con tabla de marcas
6. **Categorías Clasificadas**: Productos organizados por tipo

## 🔄 Mantenimiento

### Agregar Nuevos Productos:
1. Insertar en `appinventory_productcategory` si es nueva categoría
2. Insertar en `appinventory_productbrand` si es nueva marca
3. Insertar en `appinventory_product` con las FK correctas

### Actualizar Productos Existentes:
```sql
UPDATE appinventory_product 
SET 
    name = 'Nuevo Nombre',
    reorder_level = 15.0
WHERE sku = 'SKU-CODE';
```

El sistema está listo para ser implementado en tu base de datos Django con todas las relaciones y validaciones necesarias.
