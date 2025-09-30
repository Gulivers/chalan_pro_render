# 📏 Unidades de Medida para Empresas Eléctricas

## 📁 Archivos Generados

### Archivos Principales:
1. **`unit_categories.csv`** - Categorías de unidades de medida
2. **`units_of_measure.csv`** - Unidades de medida específicas
3. **`insert_electrical_units.sql`** - Script SQL para insertar en base de datos

## 🏗️ Estructura del Sistema

### Categorías de Unidades (6 categorías):
1. **Length** - Unidades de longitud para cables, tuberías y materiales eléctricos
2. **Weight** - Unidades de peso para materiales y equipos
3. **Volume** - Unidades de volumen para líquidos y gases
4. **Area** - Unidades de área para superficies y coberturas
5. **Count** - Unidades de conteo para piezas individuales y conjuntos
6. **Electrical** - Unidades específicas eléctricas (amperios, voltios, etc.)

### Total de Unidades: 29 unidades

## 📏 Unidades por Categoría

### 🔧 LENGTH (Longitud) - 10 unidades
| Código | Nombre | Factor | Descripción |
|--------|--------|--------|-------------|
| **FT** | Foot | 1.0 (REF) | Unidad base de longitud |
| IN | Inch | /12.0 | 1 pie = 12 pulgadas |
| YD | Yard | *3.0 | 1 yarda = 3 pies |
| M | Meter | *3.2808 | 1 metro = 3.2808 pies |
| **100FT** | 100 Foot Roll | *100.0 | Rollo de 100 pies |
| **250FT** | 250 Foot Roll | *250.0 | Rollo de 250 pies |
| 500FT | 500 Foot Roll | *500.0 | Rollo de 500 pies |
| 1000FT | 1000 Foot Roll | *1000.0 | Rollo de 1000 pies |
| 10FT | 10 Foot Stick | *10.0 | Palo de 10 pies |
| 20FT | 20 Foot Stick | *20.0 | Palo de 20 pies |

### ⚖️ WEIGHT (Peso) - 3 unidades
| Código | Nombre | Factor | Descripción |
|--------|--------|--------|-------------|
| **LB** | Pound | 1.0 (REF) | Unidad base de peso |
| OZ | Ounce | /16.0 | 1 libra = 16 onzas |
| KG | Kilogram | *2.2046 | 1 kg = 2.2046 libras |

### 🥤 VOLUME (Volumen) - 4 unidades
| Código | Nombre | Factor | Descripción |
|--------|--------|--------|-------------|
| **GAL** | Gallon | 1.0 (REF) | Unidad base de volumen |
| QT | Quart | /4.0 | 1 galón = 4 cuartos |
| PT | Pint | /8.0 | 1 galón = 8 pintas |
| L | Liter | *3.7854 | 1 galón = 3.7854 litros |

### 📐 AREA (Área) - 2 unidades
| Código | Nombre | Factor | Descripción |
|--------|--------|--------|-------------|
| **SQFT** | Square Foot | 1.0 (REF) | Unidad base de área |
| SQIN | Square Inch | /144.0 | 1 pie² = 144 pulgadas² |

### 🔢 COUNT (Conteo) - 7 unidades
| Código | Nombre | Factor | Descripción |
|--------|--------|--------|-------------|
| **EA** | Each | 1.0 (REF) | Unidad base de conteo |
| BOX | Box | *1.0 | Caja |
| PK | Pack | *1.0 | Paquete |
| SET | Set | *1.0 | Conjunto |
| KIT | Kit | *1.0 | Kit |
| ROLL | Roll | *1.0 | Rollo |
| STK | Stick | *1.0 | Palo |

### ⚡ ELECTRICAL (Eléctrico) - 3 unidades
| Código | Nombre | Factor | Descripción |
|--------|--------|--------|-------------|
| **A** | Ampere | 1.0 (REF) | Unidad base eléctrica |
| V | Volt | 1.0 | Voltio |
| W | Watt | 1.0 | Vatio |

## 🔌 Unidades Específicas para Cables THHN

### Rollos de Cable Estándar:
- **100FT** - Rollo de 100 pies (ideal para trabajos pequeños)
- **250FT** - Rollo de 250 pies (tamaño estándar comercial)
- **500FT** - Rollo de 500 pies (para proyectos medianos)
- **1000FT** - Rollo de 1000 pies (para proyectos grandes)

### Tuberías y Conduit:
- **10FT** - Palo de 10 pies (PVC, EMT)
- **20FT** - Palo de 20 pies (PVC, EMT)

## 🚀 Implementación en Django

### Modelos Django:
```python
# Categorías de Unidades
class UnitCategory(models.Model):
    name = models.CharField(max_length=50, unique=True)
    description = models.TextField(blank=True)
    is_active = models.BooleanField(default=True)

# Unidades de Medida
class UnitOfMeasure(models.Model):
    name = models.CharField(max_length=50, unique=True)
    code = models.CharField(max_length=10, unique=True)
    category = models.ForeignKey(UnitCategory, on_delete=models.PROTECT)
    reference_unit = models.BooleanField(default=False)
    conversion_sign = models.CharField(max_length=4, choices=SIGN_CHOICES)
    conversion_factor = models.DecimalField(max_digits=10, decimal_places=4)
    is_active = models.BooleanField(default=True)
```

## 📊 Casos de Uso Comunes

### 1. Cables THHN:
- **Compra**: Rollos de 250FT o 1000FT
- **Venta**: Por pie (FT) o rollo completo
- **Inventario**: En pies totales

### 2. Tuberías PVC:
- **Compra**: Sticks de 10FT o 20FT
- **Venta**: Por pie (FT) o stick completo
- **Inventario**: En pies totales

### 3. Cajas Eléctricas:
- **Compra**: Por caja (BOX) - 25-50 unidades
- **Venta**: Individual (EA)
- **Inventario**: Por pieza

### 4. Interruptores y Tomas:
- **Compra**: Por caja (BOX) - 10-25 unidades
- **Venta**: Individual (EA)
- **Inventario**: Por pieza

## 🔄 Sistema de Conversiones

### Factores de Conversión:
- **`ref`**: Unidad de referencia (factor = 1.0)
- **`*`**: Multiplicación (unidad mayor que referencia)
- **`/`**: División (unidad menor que referencia)

### Ejemplos de Conversión:
```
100FT roll → FT: 100FT * 1 = 100 pies
250FT roll → FT: 250FT * 1 = 250 pies
1 Yard → FT: 1 * 3 = 3 pies
12 Inches → FT: 12 / 12 = 1 pie
```

## ✅ Ventajas del Sistema

1. **Flexibilidad**: Maneja diferentes formatos de venta
2. **Precisión**: Conversiones exactas entre unidades
3. **Escalabilidad**: Fácil agregar nuevas unidades
4. **Estándar**: Basado en unidades industriales comunes
5. **Integración**: Compatible con sistemas de inventario
6. **Reportes**: Permite análisis por diferentes unidades

## 🔧 Instalación

1. **Ejecutar script SQL**:
   ```sql
   SOURCE db/insert_electrical_units.sql;
   ```

2. **Verificar instalación**:
   ```sql
   SELECT COUNT(*) FROM appinventory_unitofmeasure;
   -- Debe retornar: 29
   
   SELECT COUNT(*) FROM appinventory_unitcategory;
   -- Debe retornar: 6
   ```

3. **Probar conversiones**:
   ```sql
   SELECT * FROM appinventory_unitofmeasure 
   WHERE code IN ('100FT', '250FT', '500FT', '1000FT');
   ```

