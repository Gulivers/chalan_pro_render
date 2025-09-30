-- =====================================================
-- SCRIPT DE CREACIÓN DE UNIDADES DE MEDIDA PARA EMPRESAS ELÉCTRICAS
-- =====================================================

-- Limpiar tablas existentes (opcional)
-- DELETE FROM appinventory_unitofmeasure;
-- DELETE FROM appinventory_unitcategory;

-- =====================================================
-- INSERTAR CATEGORÍAS DE UNIDADES
-- =====================================================
INSERT INTO appinventory_unitcategory (name, description, is_active) VALUES
('Length', 'Unidades de longitud para cables, tuberías y materiales eléctricos', TRUE);
INSERT INTO appinventory_unitcategory (name, description, is_active) VALUES
('Weight', 'Unidades de peso para materiales y equipos', TRUE);
INSERT INTO appinventory_unitcategory (name, description, is_active) VALUES
('Volume', 'Unidades de volumen para líquidos y gases', TRUE);
INSERT INTO appinventory_unitcategory (name, description, is_active) VALUES
('Area', 'Unidades de área para superficies y coberturas', TRUE);
INSERT INTO appinventory_unitcategory (name, description, is_active) VALUES
('Count', 'Unidades de conteo para piezas individuales y conjuntos', TRUE);
INSERT INTO appinventory_unitcategory (name, description, is_active) VALUES
('Electrical', 'Unidades específicas eléctricas (amperios, voltios, etc.)', TRUE);

-- =====================================================
-- INSERTAR UNIDADES DE MEDIDA
-- =====================================================
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Foot', 
    'FT', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Length'), 
    TRUE, 
    'ref', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Inch', 
    'IN', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Length'), 
    FALSE, 
    '/', 
    12.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Yard', 
    'YD', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Length'), 
    FALSE, 
    '*', 
    3.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Meter', 
    'M', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Length'), 
    FALSE, 
    '*', 
    3.2808, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Pound', 
    'LB', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Weight'), 
    TRUE, 
    'ref', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Ounce', 
    'OZ', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Weight'), 
    FALSE, 
    '/', 
    16.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Kilogram', 
    'KG', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Weight'), 
    FALSE, 
    '*', 
    2.2046, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Gallon', 
    'GAL', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Volume'), 
    TRUE, 
    'ref', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Quart', 
    'QT', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Volume'), 
    FALSE, 
    '/', 
    4.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Pint', 
    'PT', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Volume'), 
    FALSE, 
    '/', 
    8.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Liter', 
    'L', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Volume'), 
    FALSE, 
    '*', 
    3.7854, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Square Foot', 
    'SQFT', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Area'), 
    TRUE, 
    'ref', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Square Inch', 
    'SQIN', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Area'), 
    FALSE, 
    '/', 
    144.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Each', 
    'EA', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Count'), 
    TRUE, 
    'ref', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Box', 
    'BOX', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Count'), 
    FALSE, 
    '*', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Pack', 
    'PK', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Count'), 
    FALSE, 
    '*', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Set', 
    'SET', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Count'), 
    FALSE, 
    '*', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Kit', 
    'KIT', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Count'), 
    FALSE, 
    '*', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Roll', 
    'ROLL', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Count'), 
    FALSE, 
    '*', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Stick', 
    'STK', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Count'), 
    FALSE, 
    '*', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    '100 Foot Roll', 
    '100FT', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Length'), 
    FALSE, 
    '*', 
    100.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    '250 Foot Roll', 
    '250FT', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Length'), 
    FALSE, 
    '*', 
    250.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    '500 Foot Roll', 
    '500FT', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Length'), 
    FALSE, 
    '*', 
    500.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    '1000 Foot Roll', 
    '1000FT', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Length'), 
    FALSE, 
    '*', 
    1000.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    '10 Foot Stick', 
    '10FT', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Length'), 
    FALSE, 
    '*', 
    10.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    '20 Foot Stick', 
    '20FT', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Length'), 
    FALSE, 
    '*', 
    20.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Ampere', 
    'A', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Electrical'), 
    TRUE, 
    'ref', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Volt', 
    'V', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Electrical'), 
    FALSE, 
    'ref', 
    1.0, 
    TRUE
);
INSERT INTO appinventory_unitofmeasure (
    name, code, category_id, reference_unit, conversion_sign, conversion_factor, is_active
) VALUES (
    'Watt', 
    'W', 
    (SELECT id FROM appinventory_unitcategory WHERE name = 'Electrical'), 
    FALSE, 
    'ref', 
    1.0, 
    TRUE
);

-- =====================================================
-- CONSULTAS DE VERIFICACIÓN
-- =====================================================

-- Ver todas las categorías
SELECT * FROM appinventory_unitcategory ORDER BY name;

-- Ver todas las unidades por categoría
SELECT 
    c.name as category,
    u.code,
    u.name as unit_name,
    u.reference_unit,
    u.conversion_sign,
    u.conversion_factor
FROM appinventory_unitofmeasure u
JOIN appinventory_unitcategory c ON u.category_id = c.id
ORDER BY c.name, u.code;

-- Ver unidades de longitud
SELECT 
    u.code,
    u.name,
    u.conversion_sign,
    u.conversion_factor
FROM appinventory_unitofmeasure u
JOIN appinventory_unitcategory c ON u.category_id = c.id
WHERE c.name = 'Length'
ORDER BY u.conversion_factor;

-- Ver unidades específicas para cables
SELECT 
    u.code,
    u.name,
    u.conversion_factor
FROM appinventory_unitofmeasure u
WHERE u.code IN ('100FT', '250FT', '500FT', '1000FT', '10FT', '20FT')
ORDER BY u.conversion_factor;
