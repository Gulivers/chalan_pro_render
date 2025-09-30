-- =====================================================
-- INSERT DE PRODUCTOS PARA EMPRESAS ELÉCTRICAS
-- Generado el: 2025-09-22 22:46:23
-- =====================================================

-- Limpiar tabla existente (opcional)
-- DELETE FROM appinventory_product;

-- =====================================================
-- INSERTAR PRODUCTOS
-- =====================================================
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
    '#1 THHN Stranded Black',
    'THHN-1-STR-BLK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#1 XHHW Stranded Aluminum Black',
    'XHHW-1-STR-BLK-AL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#10 THHN Stranded Black',
    'THHN-10-STR-BLK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#10 THHN Stranded Black Copper Clad',
    '10/1THHN-7/0-BK-NG-1000-SP-Copperweld',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#10 THHN Stranded Blue',
    'THHN-10-STR-BLU',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#10 THHN Stranded Blue Copper Clad',
    '10/1THHN-7/0-BL-NG-1000-SP-Copperweld',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#10 THHN Stranded Green',
    'THHN-10-STR-GRN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#10 THHN Stranded Green Copper Clad',
    '10/1THHN-7/0-GN-NG-1000-SP-Copperweld',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#10 THHN Stranded Red Copper Clad',
    '10/1THHN-7/0-RD-NG-1000-SP-Copperweld',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#10 THHN Stranded White',
    'THHN-10-STR-WHT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#10 THHN Stranded White Copper Clad',
    '10/1THHN-7/0-WT-NG-1000-SP-Copperweld',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#12 THHN Stranded Black',
    'THHN-12-STR-BLK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#12 THHN Stranded Blue',
    'THHN-12-STR-BLU',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#12 THHN Stranded Green',
    'THHN-12-STR-GRN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#12 THHN Stranded Red',
    'THHN-12-STR-RED',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#12 THHN Stranded White',
    'THHN-12-STR-WHT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#2 THHN Stranded Black',
    'THHN-2-STR-BLK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#2 XHHW Stranded Aluminum Black',
    'XHHW-2-STR-BLK-AL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#3 THHN Stranded Black',
    'THHN-3-STR-BLK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#3 x 2'' Rebar',
    'REBAR',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '#4 Butt Splice',
    'BS-4',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '#4 CU Split Bolt Connector',
    'SBC-CU-4',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '#4 Solid Bare Copper Wire',
    'SOLBARE-4',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#4 THHN Stranded Black',
    'THHN-4-STR-BLK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#4 THHN Stranded Green',
    'THHN-4-STR-GRN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#4 THHN Stranded Green Copper Clad',
    '4/1THHN-7/0-GN-NG-1000-SP-Copperweld',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#4 XHHW Stranded Aluminum Black',
    'XHHW-4-STR-BLK-AL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#6 THHN Stranded Black',
    'THHN-6-STR-BLK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#6 THHN Stranded Green',
    'THHN-6-STR-GRN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#6 THHN Stranded White',
    'THHN-6-STR-WHT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#6 X 1-1/4 Phillips Head Bugle Coarse Drywall Screw',
    'PHBCDWS-6X114',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '#8 CU Split Bolt Connector',
    'SBC-CU-8',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '#8 THHN Stranded Black',
    'THHN-8-STR-BLK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#8 THHN Stranded Green',
    'THHN-8-STR-GRN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '#8 THHN Stranded White',
    'THHN-8-STR-WHT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/2'' ENT'',
    'ENT-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/2'' ENT Male Adapter'',
    'ENT-MA-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/2'' Locknut (50)'',
    'LN-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'BOX'),
    2.0,
    NOW(),
    TRUE
);
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
    ''1 1/2'' Plastic Bushing (25)'',
    'PB-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/2'' PVC 90 (20)'',
    'PVC-90-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/2'' PVC Conduit Cap (40)'',
    'PVC-CC-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/2'' PVC Coupling (25)'',
    'PVC-CP-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/2'' PVC Female Adapter'',
    'PVC-FA-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/2'' PVC Male Adapter (30)'',
    'PVC-MA-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/2'' PVC SCH40'',
    'PVC-SCH40-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/2'' PVC SCH80'',
    'PVC-SCH80-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/2'' Strut Strap'',
    'SS-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/4'' KO Seal'',
    'KO-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/4'' Liquid Tight Straight Connector'',
    'LT-SC-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/4'' Locknut (50)'',
    'LN-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'BOX'),
    2.0,
    NOW(),
    TRUE
);
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
    ''1 1/4'' One Hole Rigid Strap'',
    'RS-1H-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/4'' Plastic Bushing (25)'',
    'PB-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/4'' PVC 2 Hole Strap'',
    'PVC-2HS-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/4'' PVC 90 (25)'',
    'PVC-90-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/4'' PVC Coupling (50)'',
    'PVC-CP-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/4'' PVC LB (20)'',
    'PVC-LB-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/4'' PVC Male Adapter (50)'',
    'PVC-MA-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/4'' PVC SCH40'',
    'PVC-SCH40-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 1/4'' Strut Strap'',
    'SS-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 Gang Bell Box 3 Hole 1/2'''',
    'BB-1G-3H-05',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 Gang Bell Box 3 Hole 3/4'''',
    'BB-1G-3H-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 Gang Bell Box 5 Hole 1/2'''',
    'BB-1G-5H-05',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1 Gang Bell Box 5 Hole 3/4'''',
    'BB-1G-5H-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '1 Gang Horizontal Mount Plastic Box 22 Cu In',
    'PHB-1G-22CI',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '1 Gang Weatherproof Blank Plate',
    'WPBP-1G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '1 Hole Terminal Lug 350 KCMIL (For use in Side-by-Side Meter Can)',
    'LUG-350-1HT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1-1/2'' DEEP'',
    'HANDY BOX',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '1-1/4 DEEP',
    'SHALLOW HANDY BOX',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1-5/8'' x 10'' Deep Strut'',
    'DS-158X10',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' EMT'',
    'EMT-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' EMT Bushing'',
    'EMT-B-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' EMT Coupling'',
    'EMT-CP-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' EMT Set Screw Connector'',
    'EMT-SSC-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' ENT'',
    'ENT-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' KO Seal'',
    'KO-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' Locknut (100)'',
    'LN-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'BOX'),
    2.0,
    NOW(),
    TRUE
);
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
    ''1'' One Hole Rigid Strap'',
    'RS-1H-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' Plastic Bushing (50)'',
    'PB-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' Pool Pack'',
    ''1'' Pool Pack'',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' PVC 90 (50)'',
    'PVC-90-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' PVC Coupling (50)'',
    'PVC-CP-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' PVC LB'',
    'PVC-LB-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' PVC Male Adapter (100)'',
    'PVC-MA-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' PVC SCH40'',
    'PVC-SCH40-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' Sheathed Cable Connector'',
    'SCC-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' Strut Strap'',
    'SS-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1'' Stud Bushing'',
    'SB-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '1/0 Stranded Aluminum',
    'XHHW-1/0-STR-BLK-AL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '1/14 POOL PVC B2B',
    '1/14 POOL PVC B2B',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' 90 Aluminum Flex Connector'',
    'AF-90-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' 90 Liquid Tight Connector'',
    'NMLT-90-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' Aluminum Flex Conduit'',
    'AF-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' EMT'',
    'EMT-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' EMT Bushing'',
    'EMT-B-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' EMT Coupling'',
    'EMT-CP-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' EMT Set Screw Connector'',
    'EMT-SSC-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' ENT'',
    'ENT-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' ENT Coupling (150)'',
    'ENT-CP-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' ENT Male Adapter (150)'',
    'ENT-MA-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' KO Seal'',
    'KO-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' Liquid Tight (100'')'',
    'NMLT-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' Locknut (100)'',
    'LN-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'BOX'),
    2.0,
    NOW(),
    TRUE
);
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
    ''1/2'' NM Cable Staples'',
    'NMCS-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' Offset Nipple'',
    'OFN-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' One Hole Rigid Strap'',
    'RS-1H-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' Plastic Bushing (100)'',
    'PB-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' PVC 90 (40)'',
    'PVC-90-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' PVC Coupling (150)'',
    'PVC-CP-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' PVC Female Adapter (150)'',
    'PVC-FA-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' PVC LB (25)'',
    'PVC-LB-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' PVC Male Adapter (200)'',
    'PVC-MA-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' PVC SCH40'',
    'PVC-SCH40-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' PVC T (30)'',
    'PVC-T-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' Straight Aluminum Flex Connector'',
    'AF-SC-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' Straight Liquid Tight Connector'',
    'NMLT-SC-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/2'' Strut Strap'',
    'SS-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/4'' x 1 1/4'' Fender Washer'',
    'FW-025X125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/4'' x 1'' Hex Cap Screw'',
    'HCS-025X1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/4''-20 Hex Nut'',
    'HN-025-20',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/4''-20 Spring Nut'',
    'SN-025-20',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''1/4''-20 x 1'' Bolt'',
    'B-025-20X1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '10'' Ladder',
    'LAD-10',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '10/2 Copper Clad',
    '10/2NMB-1/1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '10/2 Romex',
    'NM-B-10/2-CU-1000',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '10/3 Romex',
    'NM-B-10/3-CU-1000',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '10/32 x 3/8 Green Grounding Screw',
    'GGS-1032X038',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '12'' Ladder',
    'LAD-12',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''12'' Tape Light Interconnect Cable 2 Pin'',
    'TL-12IC-2P',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '12/2 Copper Clad',
    '12/2NMB-1/1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '12/2 MC',
    'MC-12/2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '12/2 Romex',
    'NM-B-12/2-CU-250C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '12/2 UF Direct Burial Cable',
    'UFDB-12/2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '12/3 100'' Extension Cord',
    'EC-12/3-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '12/3 25'' Extension Cord',
    'EC-12/3-25',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '12/3 50''  Extension Cord',
    'EC-12/3-50',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '12/3 Copper Clad',
    '12/3NMB-1/1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '12/3 MC',
    'MC-12/3',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '12v 30w Dimmable Driver',
    'DD-12V-30W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '13 sw 36th pl',
    '13 SW 36th PL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''13/16'' x 10'' Shallow Strut'',
    'SHS-1316X10',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''14'' Natural Cable Tie'',
    'BL14S9C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''14'' Natural Cable Tie'',
    'CT-14N',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '14/2 Romex',
    'NM-B-14/2-CU-250C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '14/2-12/2 MC Anti-Shorts',
    'MCAS',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '14/3 Romex',
    'NM-B-14/3-CU-250C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '16'' Extension Ladder',
    'EXTLAD-16',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '16418 CAPTIVA DRIVE',
    'REID RESIDENCE',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''16D x 3 1/2'' Common Nail'',
    'CN-16D-350',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '18/2 Thermostat Wire',
    'TW-18/2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '2 1/2 PVC SCH80',
    'PVC-SCH80-250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' 24'' PVC Radius Sweep'',
    'PVC-24RS-250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' Deep Gangable Box'',
    'DGB-250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' Galvanized Riser 10'''',
    'GR-250X10',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' Hub for Meter Can'',
    'A7518',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' Locknut (30)'',
    'LN-250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' Plastic Bushing (10)'',
    'PB-250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' PVC 90'',
    'PVC-90-250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' PVC Coupling'',
    'PVC-CP-250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' PVC Male Adapter (25)'',
    'PVC-MA-250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' PVC SCH40 10'' Stick'',
    'PVC-SCH40-250-10',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = '10FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' PVC SCH40 20'' Stick'',
    'PVC-SCH40-250-20',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = '20FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' Strut Strap'',
    'SS-250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' Two Hole Rigid Strap'',
    'RS-2H-250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 1/2'' Weatherhead'',
    'WH-250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2 Gang Bell Box 3 Hole 1/2'''',
    'BB-2G-3H-05',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '2 Gang Weatherproof Blank Plate',
    'WPBP-2G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '2 Hole Terminal Lug #6 AWG - 250 KCMIL',
    'LUG-6-250-2HT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '2 Pack End Caps For Tape Light Track (New)',
    'TL-EC2PK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '2 Pack Mounting Clips for Tape Light Track (New)',
    'TL-MCT2PK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '2 small boxes',
    '24745 marin',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '2 small brown box',
    '25008 surfh',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '2 small brown box 1 box got delivered on a later date 8/11/25',
    '24838 surfh',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '2'' Led Wrap Light Bulb',
    'FDK-LT8G-2-104',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '2'' Wrap Light Bulb',
    'FL17T8/841/ECO',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' 24'' PVC Radius Sweep'',
    'PVC-24RS-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' Conduit Hanger with Bolt'',
    'CHB-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' EMT'',
    'EMT-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' EMT Bushing'',
    'EMT-B-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' EMT Coupling'',
    'EMT-CP-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' EMT Set Screw Connector'',
    'EMT-SSC-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' Flash Guard'',
    'FG-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' Galvanized Riser 10'''',
    'GR-200-10',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' Hub for Meter Can'',
    'A7517',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' KO Seal'',
    'KO-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' Locknut (50)'',
    'LN-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'BOX'),
    2.0,
    NOW(),
    TRUE
);
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
    ''2'' Neoprene Roof Flashing'',
    'NRF-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' Plastic Bushing (25)'',
    'PB-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' PVC 45 (15)'',
    'PVC-45-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' PVC 90 (15)'',
    'PVC-90-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' PVC Coupling (40)'',
    'PVC-CP-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' PVC LB'',
    'PVC-LB-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' PVC Long Line Coupling (15)'',
    'PVC-LLCP-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' PVC LR'',
    'PVC-LR-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' PVC Male Adapter (50)'',
    'PVC-MA-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' PVC SCH40'',
    '2-IN-PVC-SCH40',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' PVC SCH40 10'' Stick'',
    'PVC-SCH40-200-10',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = '10FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' PVC SCH40 20'' Stick'',
    'PVC-SCH40-200-20',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = '20FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' PVC SCH80'',
    'PVC-SCH80-200-10',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' SER Cable Connector'',
    'SER-CC-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' Strut Strap'',
    'SS-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' Two Hole Rigid Strap'',
    'RS-2H-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' Weatherhead'',
    'WH-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''2'' x 12'' Chisel SDS Max'',
    'SDSCH-2X12',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '2/0 Stranded Aluminum',
    'XHHW-2/0-STR-BLK-AL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '200A 2 Position Meter Socket',
    'UA2716-ZGF',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '200A Meter Socket',
    'U7040-XL-TG-HSP',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '200A Side by Side Meter (Duplex Service)',
    '200A Side by Side Meter (Duplex Service)',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''24'' Heavy Duty Magnetic Sweep'',
    'EMP27060',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''24'' Tape Light Interconnect Cable 2 Pin'',
    'TL-24IC-2P',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '24v 200w Dimmable Driver',
    'DD-24V-200W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '24v 30w Dimmable Driver',
    'DD-24V-30W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '24v 60w Dimmable Driver',
    'DD-24V-60W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '24v 96w Dimmable Driver',
    'DD-24V-96W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '24v Tape Light',
    'STLWW100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '24v Tape Light',
    'TL-24V',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '250 KCMIL Black Stranded Aluminum',
    'XHHW-250-STR-BLK-AL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '3 boxes / large and 2 small',
    '24683 marin',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '3 Gang Metal Box',
    'MB-3G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '3 Gang Mudring',
    'MR-3G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '3'' Pigtail',
    'SW 9733SW8809',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3'' 24'' PVC Radius Sweep'',
    'PVC-24RS-300',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3'' Locknut (25)'',
    'LN-300',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'BOX'),
    2.0,
    NOW(),
    TRUE
);
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
    ''3'' Plastic Bushing (10)'',
    'PB-300',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3'' PVC 90'',
    'PVC-90-300',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3'' PVC Coupling'',
    'PVC-CP-300',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3'' PVC Male Adapter (15)'',
    'PVC-MA-300',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3'' PVC SCH40'',
    'PVC-SCH40-300',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3'' PVC SCH80'',
    'PVC-SCH80-300',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3'' Two Hole Rigid Strap'',
    'RS-2H-300',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '3/4 PVC SCH80',
    'PVC-SCH80-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' 90 Aluminum Flex Connector'',
    'AF-90-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' 90 Liquid Tight Connector'',
    'NMLT-90-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' Aluminum Flex Conduit'',
    'AF-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' EMT'',
    'EMT-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' EMT Bushing'',
    'EMT-B-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' EMT Coupling'',
    'EMT-CP-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' EMT Set Screw Connector'',
    'EMT-SSC-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' ENT'',
    'ENT-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' ENT Coupling (100)'',
    'ENT-CP-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' ENT Male Adapter (100)'',
    'ENT-MA-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' Ground Rod Driver SDS Max'',
    'SDSGRD-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' KO Seal'',
    'KO-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' Liquid Tight (100'')'',
    'NMLT-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' Locknut (100)'',
    'LN-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'BOX'),
    2.0,
    NOW(),
    TRUE
);
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
    ''3/4'' One Hole Rigid Strap'',
    'RS-1H-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' Plastic Bushing (100)'',
    'PB-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' Pool Pack'',
    ''3/4'' Pool Pack'',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' PVC 90 (40)'',
    'PVC-90-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' PVC Conduit Cap (150)'',
    'PVC-CC-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' PVC Coupling (100)'',
    'PVC-CP-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' PVC Female Adapter (100)'',
    'PVC-FA-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' PVC LB (25)'',
    'PVC-LB-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' PVC Male Adapter (150)'',
    'PVC-MA-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' PVC SCH40'',
    'PVC-SCH40-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' PVC T (20)'',
    'PVC-T-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' Sheathed Cable Connector'',
    'SCC-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' Straight Aluminum Flex Connector'',
    'AF-SC-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' Straight Liquid Tight Connector'',
    'NMLT-SC-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' Strut Strap'',
    'SS-075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' x 1/2'' Reducing Washer'',
    'RW-075X050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/4'' x 23'' Single Tipped SDS Max Drill Bit'',
    'SDSDB-075X23',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/8'' MC 90 Connector'',
    'MC-90-038',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/8'' MC Duplex Straight Connector'',
    'MC-DS-038',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/8'' MC Straight Connector'',
    'MC-SC-038',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''3/8'' One Hole MC Strap'',
    'MC-1H-038',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '320A Meter Socket',
    'UAP5864-X-HSP',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '350 KCMIL Black Stranded Aluminum',
    'XHHW-350-STR-BLK-AL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '4 AWG Crimp',
    'CTL4',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '4 Gang Metal Box',
    'MB-4G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '4 Gang Mudring',
    'MR-4G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '4'' Ladder',
    'LAD-4',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '4'' Led Wrap Light Bulb',
    'FDK-LT8G-F1-4-184',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '4'' Lighting Track with Frosted Lens and Endcaps',
    'TL-4FT-FL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '4'' Wrap Light Bulb',
    'FL32T8/841/ECO',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' IC Rated Remodel Housing'',
    'IC104RAT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Octagon 1 1/2'' Deep'',
    '4O-150D',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Plastic L-Shaped Fan Box'',
    '4P-LFB',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Round Ceiling Pan'',
    '4M-RCP',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Square 1 1/2'''',
    '4S-150D',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Square 1 1/2'' Box with Side Bracket'',
    '4S-SMBR150D',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Square 1 1/4'' Shallow Box'',
    '4S-125S',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Square 1 Gang Mudring'',
    'MR-1G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Square 2 1/8'' Deep Box'',
    '4S-218D',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Square 2 Gang Mudring'',
    'MR-2G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Square Blank Plate'',
    '4S-BP',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Square Decora RS Cover'',
    '4S-DRS',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Square Extension Ring'',
    '4S-ER',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Square RS 30/50A Cover'',
    '4S-3050RS',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Square Single 20A RS Cover'',
    '4S-S20RS',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''4'' Square with Bracket'',
    '4S-BR150D',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '4/0 Stranded Aluminum',
    'XHHW-4/0-STR-BLK-AL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '4/2 Copper Clad',
    '4/2NMB-7/1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '4/3 Copper Clad',
    '4/3NMB-7/1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '400A 250V RK5 TD Fuse',
    'ECNR400',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '400A Back to Back Service (Siemens)',
    '400A Back to Back Service (Siemens)',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '400A Back to Back Service (Square D)',
    '400A Back to Back Service (Square D)',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '400A Back to Back Service Siemens with 320A Meter Can',
    '400A Back to Back Service Siemens with 320A Meter Can',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '400A Back to Back Service Square D with 320A Meter Can',
    '400A Back to Back Service Square D with 320A Meter Can',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '40125EN3-05',
    '40125EN3-05',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''44'' Line Shield'',
    'LINE 44',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '5 Gallon Metal Gas Can',
    'GC-M5G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '5 Gang Metal Box',
    'MB-5G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '5 Gang Mudring',
    'MR-5G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''5/8'' x 8'' Galvanized Ground Rod'',
    'GR-058X8',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '500 KCMIL Black Stranded Aluminum',
    'XHHW-500-STR-BLK-AL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '5HV052BZD',
    '5HV052BZD',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '6 Gang Metal Box',
    'MB-6G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '6 Gang Mudring',
    'MR-6G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''6-32 x 2'' Flat Phillips Screw'',
    'FPS-632X2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''6-32 x 3'' Flat Phillips Screw'',
    'FPS-632X3',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '6'' Ladder',
    'LAD-6',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '6'' Pigtail',
    'PT-6FT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '6'' Pigtail',
    'SW 9736SW8809',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''6'' IC Rated Remodel Housing'',
    'IC206RAT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '6/2 Copper Clad',
    '6/2NMB-7/1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '6/2 Romex',
    'NM-B-6/2-CU-1000R',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '6/3 Copper Clad',
    '6/3NMB-7/1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '6/3 Romex',
    'NM-B-6/3-CU-500',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''60'' Line Shield'',
    'LS-60',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '6678 yomama',
    '6678 yomama',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '6x6x4 PVC J-Box',
    'PVC-JB-664',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '7-1/2'' Concrete Banjo',
    'BANJO-8',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''7'' Screw Mount Cable Tie'',
    'SMCT-7',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''8 x 3/4'' Phillips Modified Truss Screw'',
    'PMTS-8X075',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''8 x 9/16'' Phillips Modified Truss Screw'',
    'PMTS-8X056',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''8-32 x 2'' Flat Phillips Head'',
    'FPS-832X2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '8'' Ladder',
    'LAD-8',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '8/2 Copper Clad',
    '8/2NMB-7/1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '8/2 Romex',
    'NM-B-8/2-CU-1000R',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '8/3 Copper Clad',
    '8/3NMB-7/1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    '8/3 Romex',
    'NM-B-8/3-CU-1000R',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    '8038-71',
    '8038-71',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'A19 Led Bulb',
    'BULB-A19',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'ABB 115AF/GFI',
    'THQL1115DF',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ABB'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'ABB 120',
    'THQL1120',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ABB'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'ABB 120AF',
    'THQL1120AF2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ABB'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'ABB 120AF/GFI',
    'THQL1120DF',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ABB'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'ABB 200A Main Lug Panel 40S/40C',
    'PCC4020',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ABB'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'ABB 200A Meter Main Combo',
    'TSMR820CSFLFMG',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ABB'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'ABB 230',
    'THQL2130',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ABB'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'ABB 230GFI',
    'THQL2130GFT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ABB'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'ABB 250',
    'THQL2150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ABB'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'ABB 250GFI',
    'THQL2150GFT2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ABB'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'ABB Surge Protector',
    'THQLSURGE2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ABB'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'AFX 2'' Led Wrap Light',
    'SPRL052424L40WV',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'AFX'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'AFX 4'' Led Wrap Light',
    'SPRL054836L40MV',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'AFX'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''American Lighting 6'' Quick Disc LED'',
    'QD6-30WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'AMERICAN LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'American Lighting Led Rope Light 3000k',
    'ULRL-LED-WW-150',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'AMERICAN LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'American Lighting Rope Light Starter',
    'RL-LED-CONKIT-1.6AMP',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'AMERICAN LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'American Lighting Tape Light Connector with Lead',
    'TLCONKIT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'AMERICAN LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Arlington 1 Gang Adjustable Box 21 Cu In',
    'FA101',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ARLINGTON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Arlington 1 Gang Box Extender with Larger Flange',
    'BE1X',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ARLINGTON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Arlington 1/2'' Romex Push Connector'',
    'NM94',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ARLINGTON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Arlington 2 1/2'' Weatherhead'',
    '146',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ARLINGTON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Arlington 3/4'' Romex Push Connector'',
    'NM95',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ARLINGTON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Arlington Cable Entrance Device with Slotted Cover',
    'CED130',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ARLINGTON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Arlington Inviso Plate',
    'CP3540',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ARLINGTON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Arlington Stucco Box White',
    'DBVM1W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ARLINGTON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Arlington Stud Bushing',
    'SB13',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ARLINGTON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'ASI 55 Gray Hybrid Caulk',
    'AMESEA-55GRAYC24',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ASI'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'GAL'),
    10.0,
    NOW(),
    TRUE
);
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
    'ASI Clear Silicone',
    'AMESEA-502CLC24',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ASI'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'GAL'),
    10.0,
    NOW(),
    TRUE
);
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
    'Black Electrical Tape',
    'ET-BLK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Black Lumber Crayon',
    'CRAYON',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'BLUE HERON DR - TRI-TOWN',
    '1057 BLUE HERON DR - TRI-TOWN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Bridgeport 3/8'' MC Straight Connector'',
    '560-DC2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'BRIDGEPORT'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Bridgeport 3/8'' MC Strap'',
    'US-4461',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'BRIDGEPORT'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Bronze Flood Light',
    'P5212-20',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Bronze Ground Clamp #2 STR AWG (25)',
    'BGC-2STR',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Buried Electric Detection Tape 1',
    'TAPE-BEDT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''BWF 1/2'' 90 Liquid Tight Connector'',
    'DIV-03005',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'BWF'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''BWF 3/4'' 90 Liquid Tight Connector'',
    'DIV-03008',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'BWF'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''BWF 3/4'' Straight Liquid Tight Connector'',
    'DIV-03006',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'BWF'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Cable Stacker',
    'CSTACKER',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Candelabra LED Bulb',
    'BULB-CANDLE',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Cantex 3 Gang Plastic Bracket Box 74 Cu in',
    'EZ74TM',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CANTEX'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Cantex 3/4'' PVC Female Adapter'',
    '5140044',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CANTEX'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Cantex Single Plastic Bracket Box Gang 20 Cu in',
    'DIV-04001',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CANTEX'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'CAR CHARGER MISC',
    'CAR CHARGER MISC',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Carlon 1/2'' ENT 200'''',
    '12005-200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CARLON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Carlon 3/4'' ENT 100'''',
    '12007-100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CARLON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Cat5e',
    'CAT5E',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Centaur 1 Gang Plastic Box 18 CU',
    'PSB118-B',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CENTAUR'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Centaur 1/2'' Plastic Pop In Connector'',
    'WI 1200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CENTAUR'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Centaur 2 Gang Plastic Box 32 CU IN',
    'PSB232-B',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CENTAUR'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Centaur 3 Gang Plastic Box 44 CU IN',
    'PSB344',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CENTAUR'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Centaur 3/4'' ENT'',
    'ENT07100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CENTAUR'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Centaur 3/4'' Plastic Pop In Connector'',
    'WI 1202',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CENTAUR'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Centaur 4 Gang Plastic Box 55 CU IN',
    'PSB455',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CENTAUR'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Centaur Plastic Bar Hanger 20 CU IN',
    'PSBR20-BHA',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CENTAUR'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Centaur Plastic Round Nail On 20 CU IN',
    'PSBR20',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CENTAUR'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Chair lug',
    'Chair lug',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Chair Lug #4-#14AWG',
    'CL4-14AWG',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Clear Metal Roof Sealent',
    '63991',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Clear Safety Glasses',
    'GLASSES-CLR',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Copperweld Wire Strippers',
    'CW-STRP-01',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Dewalt Toggle Bolts 3/16 x 3'''',
    'TB-316X3',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'DEWALT'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Diablo 6'' Metal Sawzall Blade'',
    'SAWB-6M',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'DIABLO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Diablo 6'' Wood Sawzall Blade'',
    'SAWB-6W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'DIABLO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Doorbell Chime Kit with Transformer',
    'DBCK-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Drive Pins',
    'DPIN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Duct Tape',
    'TAPE-DUCT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Eaton 2'' Hub'',
    'DS200H2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Eaton 200A Disconnect',
    'ECCVH200R',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Eaton 4'' Round Ceiling Pan'',
    'TP269',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Eaton 4'' Square'',
    'TP404',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Eaton 4'' Square 1 Gang Mudring'',
    'TP484',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Eaton 4'' Square 2 Gang Mudring'',
    'TP498',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Eaton 4'' Square Blank Plate'',
    'TP472',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Eaton 4'' Square Deep Box'',
    'TP403',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Eaton 4'' Square Extension Ring'',
    'TP428',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Eaton 4'' Square Shallow Box'',
    'TP408',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Eaton 400A Meter Main Combo',
    'HP816P400BSL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Eaton CH 120 AF/GFI',
    'CHFN120DF',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Eaton Decora RS Cover',
    'TP513',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Eaton Handy Box 1/2'' KO Plate'',
    'TP614',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Eaton Single Outlet RS Cover',
    'TP514',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Eaton Z-Wave Switch',
    'RF9601DW',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EATON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Edwards Chime Kit',
    'Void',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'EDWARDS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Envision 4'' Slim Square Wafer 5CCT'',
    'LED-SL-PNL-4SQ-3P12W-5CCT-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ENVISION'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Envision 6'' Slim Square Wafer 5CCT'',
    'LED-SL-PNL-6SQ-3P15W-5CCT-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ENVISION'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''F4P 14'' Cable Tie'',
    'F4P14-50W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'F4P'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''F4P 6-32 x 2'' Flat Phillips Screw'',
    'CES632X2FHPMSZJ',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'F4P'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'F4P Expanding Foam',
    'F4P FOAM',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'F4P'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Fire Foam',
    'FOAM-FIRE',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Fire Putty',
    'FIREPUTTY',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Flashing Tape 4'' x 75'''',
    'FT-4X75',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Fudakin LED A19 Bulb',
    'FDK-A19-F3-9W-30K',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'FUDAKIN'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Galvanized Conduit Nipple 2'' x 12'''',
    'GCN-200X12',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'GARY WILLIAMS',
    '6788 DANAH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generac 200A Transfer Switch',
    'GEN-TS-200A',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERAC'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting 2'' LED Wrap Light',
    '591361S-15',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting 4'' LED Wrap Light',
    '591321S-15',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting 4'' Wrap Light',
    '59132LE-15',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Black 3 Bulb Vanity',
    '4421603-112',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Black 4 Bulb Vanity',
    '4421604-112',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Black Coach Light',
    '88200-12',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Black Coach Light',
    '89031-12',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Black Dog House',
    '7567EN3-32',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Black Flood Light',
    '8607-12',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Black Post',
    '8102-12',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Black Post Head',
    '82200EN-12',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Black Post Head',
    '89129-12',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Bronze 3 Bulb Vanity',
    '4428903-710',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Bronze 4 Bulb Vanity',
    '4428904-710',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Brushed Nickel 3 Bulb Vanity',
    '4428903-962',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Brushed Nickel 4 Bulb Vanity',
    '4428904-962',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Brushed Nickel Deco Mushroom',
    '77064-962',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Chrome 3 Bulb Vanity',
    '4402803-05',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Chrome 3 Bulb Vanity',
    '4737-05',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Chrome 4 Bulb Vanity',
    '4402804-05',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Chrome 4 Bulb Vanity',
    '4738-05',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Gold 3 Bulb Vanity',
    '4440403-848',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Gold 4 Bulb Vanity',
    '4440404-848',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Modern Black Coach Light',
    '8520701EN3-12',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Small Black Coach Light',
    '8592-12',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Traverse LED',
    '14540S-15',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting Traverse LED (New)',
    '14230S-15',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Generation Lighting White Flood Light',
    '8607-15',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GENERATION LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'GM Lighting 24v Puck Light Slim',
    'PL24V-30-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'GM LIGHTING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Green Electrical Tape',
    'ET-GRN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Green Spray Paint',
    'PAINT-G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Ground Rod Acorn Clamp 5/8'''',
    'GRAC-058',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Grounding Bridge #2 - #6 AWG',
    'GB2-6AWG',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Halco BR30 Flood Style Bulb',
    'HALCO 82170',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'HALCO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Halco R20 LED Bulb',
    'HALCO 80986',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'HALCO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Handy Box Cover 1/2'' KO'',
    'HB-COVER05KO',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Hinkley 12v Bronze Step Light',
    '1565BZ',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'HINKLEY'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Hubbell Brass Quad Floor Outlet Plate',
    'S1TFCBRS',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'HUBBELL'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Hubbell Round Plastic Floor Box Quad',
    'S1PFB',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'HUBBELL'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Intermatic Double Bubble Cover',
    'WP5220C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'INTERMATIC'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Intermatic Photocell',
    'K4321C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'INTERMATIC'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Intermatic Single Bubble Cover',
    'WP5100C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'INTERMATIC'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Jet Line 6500''',
    'JL-6500',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'CUSTOM BUILDERS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Jullison 5000k Surface Mount LED',
    'JUL-5000K-SMLED',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'JULLISON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Kichler 12'' Under Cabinet Light'',
    '4U30K12WHT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'KICHLER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Kichler 21'' Interconnect Cable'',
    '10573WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'KICHLER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Kichler 22'' Under Cabinet Light'',
    '4U30K22WHT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'KICHLER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Kichler 30'' Under Cabinet Light'',
    '4U30K30WHT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'KICHLER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Kichler 49830OZ (CR)',
    '49830OZ',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'KICHLER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Kichler 49961AVI (CO)',
    '49961AVI',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'KICHLER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Kichler 6'' Surface Mount LED'',
    '43873WHLED30',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'KICHLER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Kichler 8'' Under Cabinet Light'',
    '4U30K08WHT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'KICHLER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Kichler 9246AZ (MO',
    '9246AZ',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'KICHLER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Kichler 9776BK (West Indies and Low Country)',
    '9776BK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'KICHLER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Klein Steel Fish Tape 240''',
    'KLEIN 56341',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'KLEIN'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''LEDVANCE 4'' Round Slim Microdisk 5CCT'',
    'LEDMD4R3A800ST9SC3WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEDVANCE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''LEDVANCE 6'' Round Slim Microdisk 5CCT'',
    'LEDMD6R3A1200ST9SC3WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEDVANCE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 1 Gang Blank Plate',
    'TPJ13-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 1 Gang Plate',
    'TPJ26-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 1 Gang Screwless Plate',
    'RWP26W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 2 Gang Blank Plate',
    'TP23-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 2 Gang Duplex Plate',
    'TPJ82-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 2 Gang Plate',
    'TPJ262-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 2 Gang Screwless Plate',
    'RWP262W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 20A Duplex Outlet',
    'CR20-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 20A Single Outlet',
    'TR5351-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 3 Gang Plate',
    'TPJ263-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 3 Gang Screwless Plate',
    'RWP263W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 3 Way Switch',
    'TM873-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 30A Flush Mount Outlet',
    '3864',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 4 Gang Plate',
    'TPJ264-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 4 Gang Screwless Plate',
    'RWP264W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 4 Way Switch',
    'TM874-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 5 Gang Plate',
    'TP265-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 5 Gang Screwless Plate',
    'RWP265W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 5'' Plug Mold White',
    'WH20GB506TR',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 50A Flush Mount Outlet',
    '3894',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 50A Surface Mount Outlet',
    '3854',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 6 Gang Plate',
    'TP266-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand 6 Gang Screwless Plate',
    'RWP266W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Black 1 Gang Plate',
    'TP26-BK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Black Decora Outlet',
    '885TRBK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Black Duplex Plate',
    'TP8-BK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Cable Plate',
    'TPCATV-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Cable/Telephone Combo Plate',
    'TPTELTV-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Decora Outlet',
    '885TRW',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Dryer Plate',
    'S3862-C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Duplex Outlet with Pressure Plates',
    '3232-TREXW',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Duplex Outlet WR',
    '3232-TRWRW',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Duplex Plate',
    'TPJ8-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Keyless',
    '276-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand ON-Q 1 Port Plate',
    'WP3401-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand ON-Q 2 Port Plate',
    'WP3402-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand ON-Q Plastic Enclosure',
    'ENP42805-NA',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand ON-Q RG6 Connector',
    'WP3479-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand ON-Q RJ45 Connector',
    'WP3450-WH-50',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Plug Mold Starter',
    'WH2010A2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Radiant Dimmer',
    'RHCL453PW',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Recessed Single Outlet 15A',
    'S3713-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Single Outlet Plate',
    'TPJ7-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Single Pole Stack Switch',
    'RCD11W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Single Pole Switch',
    'TM870-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand Telephone Plate',
    'TPTE1-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand TR GFI',
    '1597TRW',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand USB Outlet',
    'R26USBAC6W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Legrand WR GFI',
    '1597TRWRW',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEGRAND'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 1 Gang Blank Plate',
    'PJ13-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 1 Gang Plate',
    'PJ26-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 115',
    'LB115-T',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 115AF/GFI',
    'LB115-DFT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 120',
    'LB120-T',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 120AF/GFI',
    'LB120-DFT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 2 Gang Blank Plate',
    'PJ23-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 2 Gang Plate',
    'PJ262-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 2 Pole 20A Surge Breaker',
    'LSPD2-TR',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Leviton 200A Meter Main Combo',
    'LS820-BTD',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 20A Single Outlet',
    'T5020-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 220',
    'LB220-T',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 220GFI',
    'LB220-G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 225',
    'LB225-T',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 225A Main Lug Panel 42S',
    'LP422-LPD',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Leviton 225GFI',
    'LB225-G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 230',
    'LB230-T',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 230GFI',
    'LB230-G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 235',
    'LB235-T',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 235GFI',
    'LB235-G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 240',
    'LB240-T',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 240GFI',
    'LB240-G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 245',
    'LB245-T',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 245GFI',
    'LB245-G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 250',
    'LB250-T',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 250GFI',
    'LB250-G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 260',
    'LB260-T',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 260GFI',
    'LB260-G',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 3 Gang Plate',
    'PJ263-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 3 Way Switch',
    '5603-2W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 30A Flush Mount Outlet',
    '278-S00',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 4 Gang Plate',
    'PJ264-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 50A Flush Mount Outlet',
    '279-S00',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton 50A Surface Mount Outlet',
    '55050-P00',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton Decora Evolve 15 Amp Receptacle Base',
    'VBTR1-1W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton Decora Evolve Multiway Companion Switch Base',
    'VBCS1-1W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton Decora Evolve Multiway Primary Switch Base',
    'VBPS1-1W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton Decora Evolve Single-Pole Switch Base',
    'VBSS1-1W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton Decora Outlet',
    'T5325-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton Dryer Plate',
    '4934',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton Duplex Outlet',
    'T5320-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton Duplex Outlet WR',
    'W5320-TOW',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton Duplex Plate',
    'PJ8-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton Fan Control Switch',
    'DHS05-1LW',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton Panel Cover 42S',
    'LDC42',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Leviton Single Outlet Plate',
    'PJ7-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton Single Pole Switch',
    '5601-2W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton TR GFI',
    'GFTR1-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Leviton USB Outlet',
    'T5638-20W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Lighting Track',
    '10174WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Lighting Track Diffuser',
    '10179',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Lithonia Emergency Light',
    'EU2C M6',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LITHONIA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Lithonia Red/Green Exit Light',
    'EXRG EL M6',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LITHONIA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Logico CAT 5E',
    'C5EU2102',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LOGICO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Lutron Pico Dimmer Kit',
    'PPKG1WWH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LUTRON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Lutron Pico Remote Wall Bracket',
    'PICO-WBX-ADAPT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LUTRON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Lutron Slide Dimmer',
    'DVCL153PWH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LUTRON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Makita 1 9/16'' Rotary Hammer'',
    'MAKHR4002',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Tools'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'MAKITA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Maxim 9052SWSN',
    '9052SWSN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'MAXIM'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Maxim 9053SWSN',
    '9053SWSN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'MAXIM'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Maxim 9054SWSN',
    '9054SWSN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'MAXIM'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Metal 60A Non-Fused Disconnect',
    'DISCO-60ANF',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Metal Anchor Kit Jar (50)',
    'ANCHORS',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Metal Fan Box 1 1/2'' Deep'',
    'MFB-150D',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Metal Fan Box 1/2'' Deep'',
    'MFB-050D',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Milbank 200A 2 Position Meter Can',
    'U1252-X-HSP',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'MILBANK'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Milbank Hub Adapter Plate',
    'S8324',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'MILBANK'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Mortar Mix 60lb',
    'MORTOR',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'NaturaLed Motion Flood Light',
    'LED-FXBFD20/850/WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'NATURALED'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'No Service Keyless Pack',
    'No Service Keyless Pack',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Noox-x Oxide Inhibitor',
    'NOOX',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'NuTone Chime Kit',
    'BK115LWH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'NUTONE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'OL8701ORB',
    'OL8701ORB',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Old Work Shallow Box',
    '1 Gang Plastic Shallow Box',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'OS 1 Gang Cut-in Box',
    'OS-1020',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'OS 1 Gang Plastic Bracket Box',
    'OS-B01R',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'OS 2 Gang Plastic Bracket Box',
    'OS-02R',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'OS 3 Gang Plastic Bracket Box',
    'OS-03DN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'OS 4 Gang Plastic Bracket Box',
    'OS-04DN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'OS Round Bar Hanger Box',
    'OS-06N',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'OS Round Nail on Box',
    'OS-05N',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Overhead Extended Service (Siemens)',
    'Overhead Extended Service (Siemens)',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Overhead Extended Service (Square D)',
    'Overhead Extended Service (Square D)',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'P&S 1 Gang Cut-in Box',
    'S1-18-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'P&S'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'P&S 1 Gang Plastic Bracket Box 22 Cu in',
    'P122-B',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'P&S'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'P&S 1 Gang Plastic Bracket Box 22 Cu In with QC Offset Bracket',
    'S1-22-S50',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'P&S'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'P&S 2 Gang Cut-in Box',
    'S2-32-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'P&S'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'P&S 3 Gang Cut-In Box',
    'S3-52-W',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'P&S'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'P&S 3 Gang Plastic Bracket Box 54 Cu in',
    'S3-54-S50AC',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'P&S'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'P&S 4 Gang Plastic Bracket Box 68 Cu in',
    'S4-68-S50AC',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'P&S'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'P&S Bar Hanger',
    'S1-20-HAC',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'P&S'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'P&S Round Cut-in Box',
    'C1-18-WAC',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'P&S'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'P&S Round Nail On Box',
    'S1-20-RAC',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'P&S'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Pico On/Off Master Switch',
    'PD5SDVWH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PICO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Pico Remote On/Off',
    'PJ22BGWHL01',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PICO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Polaris Tap AWG 4-14',
    'PT-4-14',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'POLARIS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Polaris Tap AWG 6-350',
    'PT-6-350',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'POLARIS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Pool Kit Collier',
    'Pool Kit Collier',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Pool with Metermain Kit',
    'Pool with Metermain Kit',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Progress 2'' LED Wrap Light',
    'P730011-030-30',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Progress 3 Bulb Dining Chandelier Brushed Nickel',
    'P4440-09',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Progress 36'' Fan Downrod Black'',
    'P2606-31',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Progress 36'' Fan Downrod Brushed Nickel'',
    'P2606-09',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Progress 4'' LED Wrap Light',
    'P730012-030-30',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Progress 5 1/2'' Surface Mount LED'',
    'P810012-028-30',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Progress 5 Bulb Dining Chandelier Brushed Nickel',
    'P4441-09',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Progress 6'' Led Wafer Light'',
    'P807001-028-30',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Progress 6'' New Construction Housing'',
    'P806N-N-MD-ICAT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Progress 7 1/4'' Surface Mount LED'',
    'P810013-028-30',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Progress 9'' Under Cabinet Light'',
    'P700000-028-30',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'progress island pendant chandaleer vintage brass',
    'p400298-163',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'progress pendant light vintage brass',
    'p5196-163',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'PROGRESS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Push Broom',
    'BROOM',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'PVC Glue',
    'PVC-GLUE',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 1 Pole Breaker Lock',
    'QO1PA',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'QO 1 Pole Breaker Lock (New)',
    'QOADV1PAF',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'QO 100',
    'QO2100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 115',
    'QO115',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 115AF',
    'QO115PCAFI',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 115AF/GFI',
    'QO115PAFGF',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 120',
    'QO120',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 120AF',
    'QO120PCAFI',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 120AF/GFI',
    'QO120PAFGF',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 2 Pole Breaker Lock',
    'QO1PL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'QO 2 Pole GFI Breaker Lock',
    'GFI2PA',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'QO 200A Breaker (For 400A Meter/Main Combo)',
    'QDL22200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'QO 220',
    'QO220',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 220GFI',
    'QO220GFI',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 225',
    'QO225',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 230',
    'QO230',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 230GFI',
    'QO230GFI',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 235',
    'QO235',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 240',
    'QO240',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 240GFI',
    'QO240GFI',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 245',
    'QO245',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 250',
    'QO250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 250GFI',
    'QO250GFI',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 260',
    'QO260',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 280',
    'QO280',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 290',
    'QO290',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO 3 Pole 40A Breaker',
    'QO340',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'QO Back Fed Barrier',
    'PKSB1QOBF',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO Interlock Kit',
    'QOCGK2C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'QO Surge Breaker',
    'QO2175SB',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    ''Raco 1/2'' KO Handy Box Cover'',
    '861',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RACO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Raco 2 1/2'' Deep Gangable'',
    '500',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RACO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Raco 3/8'' 90 MC Connector'',
    '2691',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RACO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Raco 3/8'' MC Straight Connector'',
    '2191',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RACO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Raco 3/8'' MC Strap'',
    '2081',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RACO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Raco 30A/50A RS Cover',
    '810C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RACO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Raco 4'' Square Extension Ring'',
    '203',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RACO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Raco 4'' Square Shallow Box'',
    '185',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RACO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Raco Decora RS Cover',
    '808C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RACO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Raco MC 3/8'' Duplex Connector'',
    '2611',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RACO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Raco Single 20A RS Cover',
    '801C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Connectors'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RACO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Radiant Easy 3 Way Dimmer Kit',
    'WNREZK50WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RADIANT'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Radiant Easy 3 Way Switch Kit',
    'WNREZK10WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RADIANT'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Radiant Easy Switched Outlet Kit',
    'WNREZK15WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RADIANT'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Red Electrical Tape',
    'ET-RD',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Red Stucco Tape',
    'TAPE-STUCCO',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Red Wire Nut',
    'WNUT-R',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Regal 14'' Natural Cable Tie'',
    'NN14-50',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'REGAL'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'RG6',
    'RG6',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'RG6 Twist-on Connector',
    'RG6-TC',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Ring Video Doorbell',
    '8VR1P6-0EN0',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RING'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Round Bell Box 5 Hole 1/2'''',
    'BB-RND1G-5H-050',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'RPP 30A 20'' Generator Cord',
    'GC 3020',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RPP'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'RPP 30A Power Inlet Box',
    'GPWRB30',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RPP'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'RPP 50A 20'' Generator Cord',
    'GC 5020',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RPP'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'RPP 50A Power Inlet Box',
    'GPWRB50',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RPP'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'RPP CAT 5E',
    'WC CAT5E350YB',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RPP'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'RPP TR GFI',
    'GFCI15STTR-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RPP'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'RPP WR GFI',
    'GFCI15STTRWR-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'RPP'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Satco Candelabra Bulbs',
    'A3684',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SATCO'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Scepter 1/2'' ENT'',
    'ENT 12200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SCEPTER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Scepter 2'' 24'' Radius Sweep'',
    '8644',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SCEPTER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Scepter 3/4'' ENT'',
    'ENT 34100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SCEPTER'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Screwless Ceiling Plate',
    'SCP-INVISO',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Hardware'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'SDS Max Clay Spade',
    'CCLAYTE',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Seamless Knit Gloves',
    'GLOVES',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'SELBY RGH',
    'TOLL BROTHERS 55',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SELBY'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'SER 2-2-2-4 Aluminum',
    'SER-2-2-2-4-AL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'SER 4-4-4-6 Copper',
    'SER 4-4-4-6-CU',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'SER 4/0-4/0-4/0-2/0',
    'SER-4/0-4/0-4/0-2/0-AL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'SF76-131 MUSHROOM DECO',
    'SF76-131 MUSHROOM DECO',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Shallow Handy Box 1 1/2'' Deep'',
    'HB-150DSH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Siemens 1 1/4'' Hub'',
    'ECHS125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 1 Pole Breaker Lock',
    'ECPLD1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    ''Siemens 1'' Hub'',
    'ECHS100',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 115',
    'Q115',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 115AF',
    'QA115AFCN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 115AF/GFI',
    'Q115DFN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 120',
    'Q120',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 120AF',
    'QA120AFCN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 120AF/GFI',
    'Q120DFN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 120GFI',
    'QF120AN',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 125A 12 Space Outdoor Main Lug Panel',
    'SNW1212L1125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Siemens 125A 4 Space Outdoor Main Lug Panel',
    'W0408ML1125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Siemens 125A Breaker',
    'Q2125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Siemens 150A Breaker 22 KAIC',
    'QN2150H',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    ''Siemens 2 1/2'' Hub'',
    'ECHS250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 2 Pole Breaker Lock',
    'ECPLD2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    ''Siemens 2'' Hub'',
    'ECHS200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 200A 8 Space Outdoor Main Lug Panel',
    'PNW0816L1200TC',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Siemens 200A Main Breaker',
    'MBK200A',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Siemens 200A Main Breaker Enclosure',
    'W0202MB1200CU',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Siemens 200A Main Lug Panel 40S/40C',
    'PN4040L1200C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Siemens 200A Meter Main Combo',
    'MC0816B1200RTH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 200A Meter Main Combo (Vertical)',
    'MC0816B1200RCT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 200A Plug On Breaker 10KAIC',
    'QN2200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Siemens 200A Plug On Breaker 22KAIC',
    'QN2200H',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Siemens 215',
    'Q215',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 215GFI',
    'QF215A',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 220',
    'Q220',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 220GFI',
    'QF220A',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 225',
    'Q225',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 225A Main Lug Panel 42S/64C',
    'PN4264L1225C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Siemens 225A Main Lug Panel 54S/82C (New)',
    'PN5482L1225C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Siemens 225GFI',
    'QF225A',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 230',
    'Q230',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 230GFI',
    'QF230A',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 235',
    'Q235',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 235GFI',
    'QF235A',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 240',
    'Q240',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 240GFI',
    'QF240A',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 245',
    'Q245',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 245GFI',
    'QF245A',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 250',
    'Q250',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 250GFI',
    'QF250A',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 260',
    'Q260',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 260GFI',
    'QF260A',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 270',
    'Q270',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 280',
    'Q280',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 290',
    'Q290',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 3 Phase 60A Safety Switch',
    'GNF322RA',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 3 Stack Meter',
    'WPK4312RJ',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 400A Meter Main Combo',
    'MC0816B1400RLTM',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 6 Stack Meter',
    'WP6612RJ',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens 60A Non-Fused Disconnect',
    'WN2060',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens Filler Plate',
    'ECQF3',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens Interlock Kit',
    'ECSBPK03',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens Interlock Kit for Meter Main Combo',
    'ECSBPK05',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Siemens Panel Label',
    'SIEMENS LABEL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Sikaflex Black Polyurethane Sealent',
    'Sikaflex-1A',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Pipes and Conduit'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Single Teardrop Lug for 320A',
    'K1540L',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'SOLANA RGH',
    'TOLL BROTHERS 200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Southwire 4 Gang Plastic Box 74 Cu in',
    'DIV-04008',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Square D 1 1/4'' Hub'',
    'B125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 1 Gang Blank Plate',
    'SQWS140001WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 1 Gang Plate',
    'SQWS141001WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 150A Main Breaker',
    'QOM2150MVH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Square D 2 Gang Blank Plate',
    'SQWS140002WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 2 Gang Plate',
    'SQWS141002WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Square D 2'' Hub'',
    'B200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 200A Breaker (For Q22200NRB)',
    'QBL22200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Square D 200A Disconnect (With Internal Breaker)',
    'Q2200MRBE',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Square D 200A Main Breaker',
    'QOM2200VH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Square D 200A Meter Main Combo',
    'QC816F200C',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 20A Duplex Outlet',
    'SQR42201WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 225A Main Panel',
    'QO142L225PG',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Square D 225A Outdoor Breaker Enclosure',
    'QOM22225NRB',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Square D 3 Gang Plate',
    'SQWS141003WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 3 Stack Meter',
    'MPR43200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 3 Way Switch',
    'SQR14130XX',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 30A Dryer Outlet',
    'SQR46301BK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 4 Gang Plate',
    'SQWS141004WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 4 Stack Meter',
    'MPR64200',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 4 Terminal Ground Bar Kit',
    'PK4GTA',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 4 Way Switch',
    'SQR-14-141-XX',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 400A Fused Disconnect Nema 3R',
    'D225NR',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 400A Meter Main Combo',
    'QU12L400SL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 5 Gang Plate',
    'SQWS141005WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 50A Flush Mount Outlet',
    'SQR46501BK',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D 8 Space 100A Sub Panel',
    'QO816L100RB',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Square D 9 Terminal Ground Bar Kit',
    'PK9GTA',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D Breaker Blank Plate',
    'QOFP',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Square D Cable Outlet',
    'SQR87C01WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D Decora Outlet',
    'SQR44103WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D Dryer Plate',
    'SQWS461011WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D Duplex Outlet',
    'SQR-42-103-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D Duplex Plate',
    'SQWS-42-2011-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D Ground Lug Kit (2/0 AWG)',
    'PKOGTA2',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D High Amperage Feed Lug Kit (For 400A Meter/Main Combo)',
    'CMELK4',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D Outdoor Breaker Enclosure',
    'Q22200NRB',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Square D Panel Cover',
    'QOC42UF',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Square D Panel Screw',
    '4020513002K',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    3.0,
    NOW(),
    TRUE
);
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
    'Square D Single Gang Bubble Cover',
    'SQWS-83-211-XX',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D Single Outlet Plate',
    'SQWS422001WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D Single Pole Switch',
    'SQR-14-103-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D Switch Faceplate',
    'SQR16100WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D Telephone Outlet',
    'SQR87T01WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D TR GFI',
    'SQR51101WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D TV/Telephone Outlet',
    'SQR-87-CT-1-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D USB Outlet',
    'SQR55141WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Square D WR GFI',
    'SQR51103WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Standard ABB Well Kit',
    'Standard ABB Well Kit',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'ABB'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Standard Leviton Well Kit',
    'Standard Leviton Well Kit',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'LEVITON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Standard Mushroom Light',
    'P3410-30',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Standard Siemens Well Kit',
    'Standard Siemens Well Kit',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Standard Square D Well Kit',
    'Standard Square D Well Kit',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Stud Punch',
    'STUD',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Talon 200A Meter Socket',
    'UAT437-XGF',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TALON'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Tamlite 24v 25w Driver',
    'CSRT25DWT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TAMLITE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Tamlite 24v 70w Driver',
    'TRRRT70DWT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TAMLITE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Tamlite 24v 96w Driver',
    'CSRT96DWT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TAMLITE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Tamlite 4'' New Construction Housing'',
    'IC104AT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TAMLITE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Tamlite 4'' Round Slim Disk Wafer 5CCT'',
    'CLY4-5CCTA/WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TAMLITE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Tamlite 4'' Slim Square Wafer CCT'',
    'CLY4SQ-5CCTA/WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TAMLITE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Tamlite 6'' New Construction Housing'',
    'IC206ATQ',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TAMLITE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Tamlite 6'' Round Slim Disk Wafer 5CCT'',
    'CLY6-5CCTA/WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TAMLITE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Tamlite 6'' Slim Square Wafer CCT'',
    'CLY6SQ-5CCTA/WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TAMLITE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Tamlite LED Motion Flood Light',
    'CMS2180WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TAMLITE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Tan Wire Nut',
    'WNUT-T',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Tapcon 1/4'' x 1 1/4'' (100)'',
    'TAP-025-125',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Tapcon 1/4'' x 2 3/4'' (100)'',
    'TAP-025-275',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Tape Light With Tracks',
    'Tape Light With Tracks',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Tape to Tape Terminal Block',
    'TLTB-TT-1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Tape to Wire Terminal Block',
    'TLTB-TW-1',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'THHN-8-STR-BLK-500',
    'THHN-8-STR-BLK-500',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Tie Wire',
    'TIEWIRE',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Tite Bond Gray Sealant',
    '229915',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'GAL'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Topaz 1 1/2'' x 1 1/4'' Reducing Washer'',
    '909',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TOPAZ'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Topaz 1'' x 3/4'' Reducing Washer'',
    '902',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TOPAZ'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Topaz 1/2'' KO Seal'',
    'KO50',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TOPAZ'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Topaz 2'' x 1 1/4'' Reducing Washer'',
    '913',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TOPAZ'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Topaz 3'' x 2'' Reducing Washer'',
    '926',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TOPAZ'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Topaz 3/4'' x 1/2'' Reducing Washer'',
    '900',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TOPAZ'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Trade Select 250v 20A Single Outlet WR',
    'RR205WWR',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TRADE SELECT'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Trade Select Aluminum Floor Outlet',
    'RF406ALU',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TRADE SELECT'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Trade Select Brass Floor Outlet',
    'RF406BR',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TRADE SELECT'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Trade Select Plastic Floor Box',
    'RF400',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Specialized Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TRADE SELECT'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Trenching Shovel',
    'TRENCHSHOVEL',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'TRI TOWN',
    '1057 BLUE HERON DR.',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Tru-Fuel 50/1 32OZ',
    'Tru-Fuel 6525638',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'TRU-FUEL'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Upgraded Siemens Well kit',
    'Copy of Upgraded Siemens Well kit',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Upgraded Siemens Well kit',
    'Upgraded Siemens Well kit',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIEMENS'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Upgraded Square D Well kit',
    'Upgraded Square D Well kit',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Electrical Equipment'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SQUARE D'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    ''Vulite 6'' New Construction Housing'',
    'V6ICNWG',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Lighting'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'VULITE'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Vulkem Gray Caulk',
    'TREMCO-960712323',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'VULKEM'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'GAL'),
    10.0,
    NOW(),
    TRUE
);
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
    'White Electrical Tape',
    'ET-WH',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Construction Materials'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'White Hard Hat',
    'HARDHAT',
    (SELECT id FROM appinventory_productcategory WHERE name = 'General Products'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'white small box',
    '24738 marin',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'white small box',
    '24786 marin',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'white small box',
    '24889 marin',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'white small box',
    '25007 surf',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Boxes and Covers'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA'),
    10.0,
    NOW(),
    TRUE
);
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
    'Wire Lube',
    'WLUBE',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);
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
    'Yellow Wire Nut',
    'WNUT-Y',
    (SELECT id FROM appinventory_productcategory WHERE name = 'Cables and Wires'),
    (SELECT id FROM appinventory_productbrand WHERE name = 'SIN MARCA'),
    (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT'),
    10.0,
    NOW(),
    TRUE
);

-- =====================================================
-- CONSULTAS DE VERIFICACIÓN
-- =====================================================

-- Contar productos insertados
SELECT COUNT(*) as total_productos FROM appinventory_product;

-- Productos por categoría
SELECT 
    c.name as categoria,
    COUNT(p.id) as total_productos
FROM appinventory_product p
LEFT JOIN appinventory_productcategory c ON p.category_id = c.id
GROUP BY c.name
ORDER BY total_productos DESC;

-- Productos por marca
SELECT 
    b.name as marca,
    COUNT(p.id) as total_productos
FROM appinventory_product p
LEFT JOIN appinventory_productbrand b ON p.brand_id = b.id
GROUP BY b.name
ORDER BY total_productos DESC;

-- Productos por unidad de medida
SELECT 
    u.code as unidad,
    u.name as nombre_unidad,
    COUNT(p.id) as total_productos
FROM appinventory_product p
LEFT JOIN appinventory_unitofmeasure u ON p.unit_default_id = u.id
GROUP BY u.code, u.name
ORDER BY total_productos DESC;

-- Verificar productos sin categoría o marca
SELECT 
    p.sku,
    p.name,
    c.name as categoria,
    b.name as marca
FROM appinventory_product p
LEFT JOIN appinventory_productcategory c ON p.category_id = c.id
LEFT JOIN appinventory_productbrand b ON p.brand_id = b.id
WHERE c.name IS NULL OR b.name IS NULL
LIMIT 10;

-- Productos con cables THHN
SELECT 
    p.sku,
    p.name,
    u.code as unidad
FROM appinventory_product p
JOIN appinventory_unitofmeasure u ON p.unit_default_id = u.id
WHERE p.name LIKE '%THHN%'
ORDER BY u.code;
