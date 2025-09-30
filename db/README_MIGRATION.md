# 📦 Migración de Productos con Códigos de Marca y Clasificación

## 📁 Archivos Generados

### Archivos Principales:
1. **`List of cleaned products_with_codes.csv`** - Productos con códigos de marca y clasificación
2. **`brands_reference.csv`** - Tabla de referencia de marcas
3. **`classifications_reference.csv`** - Tabla de referencia de clasificaciones
4. **`create_tables_example.sql`** - Script SQL para crear las tablas

## 🏗️ Estructura de Base de Datos

### Tabla: `productos`
```sql
- id (INT, AUTO_INCREMENT, PRIMARY KEY)
- codigo (VARCHAR(100), UNIQUE)
- descripcion (TEXT)
- precio (DECIMAL(10,5))
- codigo_marca (VARCHAR(10), FOREIGN KEY)
- codigo_clasificacion (VARCHAR(10), FOREIGN KEY)
- stock_disponible (INT, DEFAULT 0)
- stock_minimo (INT, DEFAULT 0)
- activo (BOOLEAN, DEFAULT TRUE)
- fecha_creacion (TIMESTAMP)
- fecha_actualizacion (TIMESTAMP)
```

### Tabla: `marcas`
```sql
- codigo_marca (VARCHAR(10), PRIMARY KEY)
- nombre_marca (VARCHAR(100))
- descripcion (TEXT)
- codigo_clasificacion (VARCHAR(10), FOREIGN KEY)
- fecha_creacion (TIMESTAMP)
- fecha_actualizacion (TIMESTAMP)
```

### Tabla: `clasificaciones`
```sql
- codigo_clasificacion (VARCHAR(10), PRIMARY KEY)
- nombre_clasificacion (VARCHAR(100))
- descripcion (TEXT)
- fecha_creacion (TIMESTAMP)
- fecha_actualizacion (TIMESTAMP)
```

## 🔢 Sistema de Códigos

### Códigos de Marca (BRD000 - BRD066)
- **BRD000**: Sin Marca
- **BRD001**: ABB
- **BRD002**: American Lighting
- **BRD003**: Arlington
- ... (66 marcas en total)

### Códigos de Clasificación (CLS001 - CLS011)
- **CLS001**: Equipos Eléctricos
- **CLS002**: Iluminación
- **CLS003**: Cajas y Conectores
- **CLS004**: Herramientas
- **CLS005**: Materiales de Construcción
- **CLS006**: Equipos Especializados
- **CLS007**: Productos Generales
- **CLS008**: Tuberías y Conduit
- **CLS009**: Cables y Alambres
- **CLS010**: Cajas y Cubiertas
- **CLS011**: Hardware General

## 📊 Estadísticas

### Total de Productos: 890
- **Sin Marca (BRD000)**: 439 productos
- **Siemens (BRD048)**: 63 productos
- **Square D (BRD049)**: 54 productos
- **Leviton (BRD028)**: 50 productos
- **Legrand (BRD027)**: 49 productos

### Clasificaciones:
- **Equipos Eléctricos (CLS001)**: 247 productos
- **Productos Generales (CLS007)**: 199 productos
- **Iluminación (CLS002)**: 98 productos
- **Tuberías y Conduit (CLS008)**: 93 productos
- **Cables y Alambres (CLS009)**: 57 productos

## 🚀 Pasos para la Migración

1. **Ejecutar el script SQL**:
   ```sql
   SOURCE db/create_tables_example.sql;
   ```

2. **Importar datos de clasificaciones**:
   ```sql
   LOAD DATA INFILE 'classifications_reference.csv'
   INTO TABLE clasificaciones
   FIELDS TERMINATED BY ','
   ENCLOSED BY '"'
   LINES TERMINATED BY '\n'
   IGNORE 1 ROWS;
   ```

3. **Importar datos de marcas**:
   ```sql
   LOAD DATA INFILE 'brands_reference.csv'
   INTO TABLE marcas
   FIELDS TERMINATED BY ','
   ENCLOSED BY '"'
   LINES TERMINATED BY '\n'
   IGNORE 1 ROWS;
   ```

4. **Importar productos**:
   ```sql
   LOAD DATA INFILE 'List of cleaned products_with_codes.csv'
   INTO TABLE productos
   FIELDS TERMINATED BY ','
   ENCLOSED BY '"'
   LINES TERMINATED BY '\n'
   IGNORE 1 ROWS
   (codigo, descripcion, precio, codigo_marca, codigo_clasificacion);
   ```

## 🔍 Consultas Útiles

### Obtener productos con información completa:
```sql
SELECT 
    p.codigo,
    p.descripcion,
    p.precio,
    m.nombre_marca,
    c.nombre_clasificacion
FROM productos p
LEFT JOIN marcas m ON p.codigo_marca = m.codigo_marca
LEFT JOIN clasificaciones c ON p.codigo_clasificacion = c.codigo_clasificacion
WHERE p.activo = TRUE;
```

### Estadísticas por clasificación:
```sql
SELECT 
    c.nombre_clasificacion,
    COUNT(p.id) as total_productos,
    AVG(p.precio) as precio_promedio
FROM clasificaciones c
LEFT JOIN productos p ON c.codigo_clasificacion = p.codigo_clasificacion
GROUP BY c.codigo_clasificacion
ORDER BY total_productos DESC;
```

### Productos por marca:
```sql
SELECT 
    m.nombre_marca,
    COUNT(p.id) as total_productos,
    AVG(p.precio) as precio_promedio
FROM marcas m
LEFT JOIN productos p ON m.codigo_marca = p.codigo_marca
WHERE p.activo = TRUE
GROUP BY m.codigo_marca
ORDER BY total_productos DESC;
```

## ✅ Ventajas del Sistema de Códigos

1. **Normalización**: Evita duplicación de datos
2. **Integridad**: Referencias consistentes entre tablas
3. **Rendimiento**: Búsquedas más rápidas con índices
4. **Escalabilidad**: Fácil agregar nuevas marcas/clasificaciones
5. **Mantenimiento**: Cambios centralizados en tablas de referencia
6. **Relaciones**: Foreign keys garantizan consistencia de datos

## 🔧 Personalización

Para agregar nuevas marcas o clasificaciones:

1. **Agregar a la tabla de referencia**:
   ```sql
   INSERT INTO marcas (codigo_marca, nombre_marca, descripcion, codigo_clasificacion) 
   VALUES ('BRD067', 'NUEVA MARCA', 'Descripción', 'CLS001');
   ```

2. **Actualizar productos existentes**:
   ```sql
   UPDATE productos 
   SET codigo_marca = 'BRD067' 
   WHERE codigo IN ('PRODUCTO1', 'PRODUCTO2');
   ```
