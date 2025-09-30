
INSERT INTO appinventory_productprice (
    product_id,
    price_type_id,
    unit_id,
    price,
    is_default,
    valid_from,
    valid_until,
    is_active,
    is_sale,
    is_purchase
)
SELECT 
    p.id,
    2,  -- COST price type id
    CASE 
        WHEN p.name LIKE '%THHN%' OR p.name LIKE '%XHHW%' OR p.name LIKE '%CABLE%' 
             OR p.name LIKE '%WIRE%' OR p.name LIKE '%ROMEX%' THEN
            (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT')
        WHEN p.name LIKE '%PVC%' OR p.name LIKE '%EMT%' OR p.name LIKE '%ENT%' THEN
            (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT')
        ELSE
            (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA')
    END,
    CASE 
        -- Cables THHN
        WHEN p.name = '#1 THHN Stranded Black' THEN 1.97655 * 0.65
        WHEN p.name = '#10 THHN Stranded Black' THEN 0.34247 * 0.65
        WHEN p.name = '#10 THHN Stranded Green' THEN 0.35882 * 0.65
        WHEN p.name = '#10 THHN Stranded White' THEN 0.31244 * 0.65
        WHEN p.name = '#12 THHN Stranded Black' THEN 0.1809 * 0.65
        WHEN p.name = '#12 THHN Stranded Blue' THEN 0.22393 * 0.65
        WHEN p.name = '#12 THHN Stranded Green' THEN 0.18102 * 0.65
        WHEN p.name = '#12 THHN Stranded Red' THEN 0.18102 * 0.65
        WHEN p.name = '#12 THHN Stranded White' THEN 0.1809 * 0.65
        WHEN p.name = '#2 THHN Stranded Black' THEN 1.78001 * 0.65
        WHEN p.name = '#3 THHN Stranded Black' THEN 1.47475 * 0.65
        WHEN p.name = '#4 THHN Stranded Black' THEN 1.46545 * 0.65
        WHEN p.name = '#6 THHN Stranded Black' THEN 0.77319 * 0.65
        WHEN p.name = '#6 THHN Stranded Green' THEN 0.77318 * 0.65
        WHEN p.name = '#6 THHN Stranded White' THEN 1.25994 * 0.65
        WHEN p.name = '#8 THHN Stranded Black' THEN 0.50246 * 0.65
        WHEN p.name = '#8 THHN Stranded White' THEN 0.5566 * 0.65
        
        -- Cables XHHW
        WHEN p.name = '#1 XHHW Stranded Aluminum Black' THEN 0 * 0.65
        WHEN p.name = '#2 XHHW Stranded Aluminum Black' THEN 0.52166 * 0.65
        WHEN p.name = '#4 XHHW Stranded Aluminum Black' THEN 0.49974 * 0.65
        WHEN p.name = '1/0 Stranded Aluminum' THEN 0.53709 * 0.65
        WHEN p.name = '2/0 Stranded Aluminum' THEN 0.63475 * 0.65
        WHEN p.name = '250 KCMIL Black Stranded Aluminum' THEN 1.1171 * 0.65
        WHEN p.name = '350 KCMIL Black Stranded Aluminum' THEN 1.39495 * 0.65
        WHEN p.name = '4/0 Stranded Aluminum' THEN 1.04368 * 0.65
        WHEN p.name = '500 KCMIL Black Stranded Aluminum' THEN 2.02273 * 0.65
        
        -- Cables Romex
        WHEN p.name = '10/2 Romex' THEN 0.87263495 * 0.65
        WHEN p.name = '10/3 Romex' THEN 1.08659705 * 0.65
        WHEN p.name = '12/2 Romex' THEN 0.500143374 * 0.65
        WHEN p.name = '12/3 Copper Clad' THEN 0.36685 * 0.65
        WHEN p.name = '14/2 Romex' THEN 0.337641056 * 0.65
        WHEN p.name = '14/3 Romex' THEN 0.44961895 * 0.65
        WHEN p.name = '6/2 Romex' THEN 2.05436 * 0.65
        WHEN p.name = '6/3 Romex' THEN 3.72669 * 0.65
        WHEN p.name = '8/2 Romex' THEN 1.45471205 * 0.65
        WHEN p.name = '8/3 Romex' THEN 2.0479591 * 0.65
        
        -- Cables MC
        WHEN p.name = '12/2 MC' THEN 0.73327 * 0.65
        
        -- Cables SER
        WHEN p.name = 'SER 2-2-2-4 Aluminum' THEN 1.739375 * 0.65
        WHEN p.name = 'SER 4-4-4-6 Copper' THEN 8.19667 * 0.65
        WHEN p.name = 'SER 4/0-4/0-4/0-2/0' THEN 4.00459785 * 0.65
        
        -- PVC Conduit
        WHEN p.name = '1 1/2" PVC SCH40' THEN 1.5368 * 0.65
        WHEN p.name = '1 1/2" PVC SCH80' THEN 2.51052 * 0.65
        WHEN p.name = '1 1/4" PVC SCH40' THEN 1.34438 * 0.65
        WHEN p.name = '1" PVC SCH40' THEN 0.93365 * 0.65
        WHEN p.name = '1/2" PVC SCH40' THEN 0.49221 * 0.65
        WHEN p.name = '3/4" PVC SCH40' THEN 0.63077 * 0.65
        WHEN p.name = '3/4" PVC SCH80' THEN 1.67182 * 0.65
        WHEN p.name = '2" PVC SCH40' THEN 2.738472 * 0.65
        WHEN p.name = '2" PVC SCH80' THEN 3.2701 * 0.65
        WHEN p.name = '2 1/2" PVC SCH80' THEN 4.2389 * 0.65
        WHEN p.name = '3" PVC SCH40' THEN 4.57238 * 0.65
        WHEN p.name = '3" PVC SCH80' THEN 7.03125 * 0.65
        
        -- EMT
        WHEN p.name = '1" EMT' THEN 1.59896 * 0.65
        WHEN p.name = '1/2" EMT' THEN 0.52472 * 0.65
        WHEN p.name = '3/4" EMT' THEN 0.92947 * 0.65
        WHEN p.name = '2" EMT' THEN 3.7191 * 0.65
        
        -- ENT
        WHEN p.name = '1 1/2" ENT' THEN 3.19501 * 0.65
        WHEN p.name = '1" ENT' THEN 0 * 0.65
        WHEN p.name = '1/2" ENT' THEN 0.3981 * 0.65
        WHEN p.name = '3/4" ENT' THEN 0.60884 * 0.65
        
        -- Liquid Tight
         WHEN p.name = '1/2" Liquid Tight (100'')' THEN 0.57051 * 0.65
         WHEN p.name = '3/4" Liquid Tight (100'')' THEN 0.69575 * 0.65
        
        -- Connectors y Fittings
        WHEN p.name = '1 1/2" ENT Male Adapter' THEN 11.68804 * 0.65
        WHEN p.name = '1 1/4" Liquid Tight Straight Connector' THEN 8.2206 * 0.65
        WHEN p.name = '1/2" 90 Liquid Tight Connector' THEN 1.37252 * 0.65
        WHEN p.name = '3/4" 90 Liquid Tight Connector' THEN 1.87296 * 0.65
        
        -- Boxes
        WHEN p.name = '1 Gang Bell Box 3 Hole 1/2"' THEN 2.4288 * 0.65
        WHEN p.name = '1 Gang Bell Box 3 Hole 3/4"' THEN 2.783 * 0.65
        WHEN p.name = '1 Gang Bell Box 5 Hole 3/4"' THEN 6.61848 * 0.65
        WHEN p.name = '1 Gang Horizontal Mount Plastic Box 22 Cu In' THEN 2.9601 * 0.65
        WHEN p.name = '2 Gang Bell Box 3 Hole 1/2"' THEN 8.36165 * 0.65
        
        -- Hardware
        WHEN p.name = '#6 X 1-1/4" Phillips Head Bugle Coarse Drywall Screw' THEN 0.02011 * 0.65
        WHEN p.name = '#4 Butt Splice' THEN 3.51037 * 0.65
        WHEN p.name = '#4 CU Split Bolt Connector' THEN 4.2504 * 0.65
        WHEN p.name = '#8 CU Split Bolt Connector' THEN 3.289 * 0.65
        
        -- Tools
         WHEN p.name = '10'' Ladder' THEN 284.625 * 0.65
         WHEN p.name = '12'' Ladder' THEN 328.9 * 0.65
         WHEN p.name = '16'' Extension Ladder' THEN 302.335 * 0.65
         WHEN p.name = '6'' Ladder' THEN 137.885 * 0.65
         WHEN p.name = '8'' Ladder' THEN 183.425 * 0.65
         WHEN p.name = '4'' Ladder' THEN 115.66654 * 0.65
        
        -- Lighting
        WHEN p.name = '2'' Led Wrap Light Bulb' THEN 9.60135 * 0.65
        WHEN p.name = '2'' Wrap Light Bulb' THEN 2.710895 * 0.65
        WHEN p.name = '4'' Led Wrap Light Bulb' THEN 9.80375 * 0.65
        WHEN p.name = '4'' Wrap Light Bulb' THEN 2.2011 * 0.65
        WHEN p.name = 'A19 Led Bulb' THEN 1.78365 * 0.65
        WHEN p.name = 'Candelabra LED Bulb' THEN 3.04865 * 0.65
        
        -- Breakers y Panels
        WHEN p.name = 'QO 100' THEN 37.53255 * 0.65
        WHEN p.name = 'QO 115' THEN 4.33895 * 0.65
        WHEN p.name = 'QO 120' THEN 4.33895 * 0.65
        WHEN p.name = 'QO 220' THEN 9.6646 * 0.65
        WHEN p.name = 'QO 225' THEN 9.6646 * 0.65
        WHEN p.name = 'QO 230' THEN 9.6646 * 0.65
        WHEN p.name = 'QO 235' THEN 9.6646 * 0.65
        WHEN p.name = 'QO 240' THEN 9.6646 * 0.65
        WHEN p.name = 'QO 245' THEN 9.6646 * 0.65
        WHEN p.name = 'QO 250' THEN 9.6646 * 0.65
        WHEN p.name = 'QO 260' THEN 9.6646 * 0.65
        WHEN p.name = 'QO 280' THEN 31.8021 * 0.65
        WHEN p.name = 'QO 290' THEN 31.8021 * 0.65
        
        -- Siempre usar precio base para productos sin precio específico
        ELSE 5.00 * 0.65
    END,
    FALSE,  -- No es precio por defecto
    CURDATE(),
    NULL,
    TRUE,
    FALSE,  -- No es para venta
    TRUE    -- Es para compra
FROM appinventory_product p
WHERE p.is_active = TRUE;

-- 2. Insertar precios CONTRACTOR (id 5) con precios reales
INSERT INTO appinventory_productprice (
    product_id,
    price_type_id,
    unit_id,
    price,
    is_default,
    valid_from,
    valid_until,
    is_active,
    is_sale,
    is_purchase
)
SELECT 
    p.id,
    5,  -- CONTRACTOR price type id
    CASE 
        WHEN p.name LIKE '%THHN%' OR p.name LIKE '%XHHW%' OR p.name LIKE '%CABLE%' 
             OR p.name LIKE '%WIRE%' OR p.name LIKE '%ROMEX%' THEN
            (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT')
        WHEN p.name LIKE '%PVC%' OR p.name LIKE '%EMT%' OR p.name LIKE '%ENT%' THEN
            (SELECT id FROM appinventory_unitofmeasure WHERE code = 'FT')
        ELSE
            (SELECT id FROM appinventory_unitofmeasure WHERE code = 'EA')
    END,
    CASE 
        -- Cables THHN (mismo precio base pero con markup 85%)
        WHEN p.name = '#1 THHN Stranded Black' THEN 1.97655 * 0.85
        WHEN p.name = '#10 THHN Stranded Black' THEN 0.34247 * 0.85
        WHEN p.name = '#10 THHN Stranded Green' THEN 0.35882 * 0.85
        WHEN p.name = '#10 THHN Stranded White' THEN 0.31244 * 0.85
        WHEN p.name = '#12 THHN Stranded Black' THEN 0.1809 * 0.85
        WHEN p.name = '#12 THHN Stranded Blue' THEN 0.22393 * 0.85
        WHEN p.name = '#12 THHN Stranded Green' THEN 0.18102 * 0.85
        WHEN p.name = '#12 THHN Stranded Red' THEN 0.18102 * 0.85
        WHEN p.name = '#12 THHN Stranded White' THEN 0.1809 * 0.85
        WHEN p.name = '#2 THHN Stranded Black' THEN 1.78001 * 0.85
        WHEN p.name = '#3 THHN Stranded Black' THEN 1.47475 * 0.85
        WHEN p.name = '#4 THHN Stranded Black' THEN 1.46545 * 0.85
        WHEN p.name = '#6 THHN Stranded Black' THEN 0.77319 * 0.85
        WHEN p.name = '#6 THHN Stranded Green' THEN 0.77318 * 0.85
        WHEN p.name = '#6 THHN Stranded White' THEN 1.25994 * 0.85
        WHEN p.name = '#8 THHN Stranded Black' THEN 0.50246 * 0.85
        WHEN p.name = '#8 THHN Stranded White' THEN 0.5566 * 0.85
        
        -- Cables XHHW
        WHEN p.name = '#1 XHHW Stranded Aluminum Black' THEN 0 * 0.85
        WHEN p.name = '#2 XHHW Stranded Aluminum Black' THEN 0.52166 * 0.85
        WHEN p.name = '#4 XHHW Stranded Aluminum Black' THEN 0.49974 * 0.85
        WHEN p.name = '1/0 Stranded Aluminum' THEN 0.53709 * 0.85
        WHEN p.name = '2/0 Stranded Aluminum' THEN 0.63475 * 0.85
        WHEN p.name = '250 KCMIL Black Stranded Aluminum' THEN 1.1171 * 0.85
        WHEN p.name = '350 KCMIL Black Stranded Aluminum' THEN 1.39495 * 0.85
        WHEN p.name = '4/0 Stranded Aluminum' THEN 1.04368 * 0.85
        WHEN p.name = '500 KCMIL Black Stranded Aluminum' THEN 2.02273 * 0.85
        
        -- Cables Romex
        WHEN p.name = '10/2 Romex' THEN 0.87263495 * 0.85
        WHEN p.name = '10/3 Romex' THEN 1.08659705 * 0.85
        WHEN p.name = '12/2 Romex' THEN 0.500143374 * 0.85
        WHEN p.name = '12/3 Copper Clad' THEN 0.36685 * 0.85
        WHEN p.name = '14/2 Romex' THEN 0.337641056 * 0.85
        WHEN p.name = '14/3 Romex' THEN 0.44961895 * 0.85
        WHEN p.name = '6/2 Romex' THEN 2.05436 * 0.85
        WHEN p.name = '6/3 Romex' THEN 3.72669 * 0.85
        WHEN p.name = '8/2 Romex' THEN 1.45471205 * 0.85
        WHEN p.name = '8/3 Romex' THEN 2.0479591 * 0.85
        
        -- Cables MC
        WHEN p.name = '12/2 MC' THEN 0.73327 * 0.85
        
        -- Cables SER
        WHEN p.name = 'SER 2-2-2-4 Aluminum' THEN 1.739375 * 0.85
        WHEN p.name = 'SER 4-4-4-6 Copper' THEN 8.19667 * 0.85
        WHEN p.name = 'SER 4/0-4/0-4/0-2/0' THEN 4.00459785 * 0.85
        
        -- PVC Conduit
        WHEN p.name = '1 1/2" PVC SCH40' THEN 1.5368 * 0.85
        WHEN p.name = '1 1/2" PVC SCH80' THEN 2.51052 * 0.85
        WHEN p.name = '1 1/4" PVC SCH40' THEN 1.34438 * 0.85
        WHEN p.name = '1" PVC SCH40' THEN 0.93365 * 0.85
        WHEN p.name = '1/2" PVC SCH40' THEN 0.49221 * 0.85
        WHEN p.name = '3/4" PVC SCH40' THEN 0.63077 * 0.85
        WHEN p.name = '3/4" PVC SCH80' THEN 1.67182 * 0.85
        WHEN p.name = '2" PVC SCH40' THEN 2.738472 * 0.85
        WHEN p.name = '2" PVC SCH80' THEN 3.2701 * 0.85
        WHEN p.name = '2 1/2" PVC SCH80' THEN 4.2389 * 0.85
        WHEN p.name = '3" PVC SCH40' THEN 4.57238 * 0.85
        WHEN p.name = '3" PVC SCH80' THEN 7.03125 * 0.85
        
        -- EMT
        WHEN p.name = '1" EMT' THEN 1.59896 * 0.85
        WHEN p.name = '1/2" EMT' THEN 0.52472 * 0.85
        WHEN p.name = '3/4" EMT' THEN 0.92947 * 0.85
        WHEN p.name = '2" EMT' THEN 3.7191 * 0.85
        
        -- ENT
        WHEN p.name = '1 1/2" ENT' THEN 3.19501 * 0.85
        WHEN p.name = '1" ENT' THEN 0 * 0.85
        WHEN p.name = '1/2" ENT' THEN 0.3981 * 0.85
        WHEN p.name = '3/4" ENT' THEN 0.60884 * 0.85
        
        -- Liquid Tight
         WHEN p.name = '1/2" Liquid Tight (100'')' THEN 0.57051 * 0.85
         WHEN p.name = '3/4" Liquid Tight (100'')' THEN 0.69575 * 0.85
        
        -- Connectors y Fittings
        WHEN p.name = '1 1/2" ENT Male Adapter' THEN 11.68804 * 0.85
        WHEN p.name = '1 1/4" Liquid Tight Straight Connector' THEN 8.2206 * 0.85
        WHEN p.name = '1/2" 90 Liquid Tight Connector' THEN 1.37252 * 0.85
        WHEN p.name = '3/4" 90 Liquid Tight Connector' THEN 1.87296 * 0.85
        
        -- Boxes
        WHEN p.name = '1 Gang Bell Box 3 Hole 1/2"' THEN 2.4288 * 0.85
        WHEN p.name = '1 Gang Bell Box 3 Hole 3/4"' THEN 2.783 * 0.85
        WHEN p.name = '1 Gang Bell Box 5 Hole 3/4"' THEN 6.61848 * 0.85
        WHEN p.name = '1 Gang Horizontal Mount Plastic Box 22 Cu In' THEN 2.9601 * 0.85
        WHEN p.name = '2 Gang Bell Box 3 Hole 1/2"' THEN 8.36165 * 0.85
        
        -- Hardware
        WHEN p.name = '#6 X 1-1/4" Phillips Head Bugle Coarse Drywall Screw' THEN 0.02011 * 0.85
        WHEN p.name = '#4 Butt Splice' THEN 3.51037 * 0.85
        WHEN p.name = '#4 CU Split Bolt Connector' THEN 4.2504 * 0.85
        WHEN p.name = '#8 CU Split Bolt Connector' THEN 3.289 * 0.85
        
        -- Tools
         WHEN p.name = '10'' Ladder' THEN 284.625 * 0.85
         WHEN p.name = '12'' Ladder' THEN 328.9 * 0.85
         WHEN p.name = '16'' Extension Ladder' THEN 302.335 * 0.85
         WHEN p.name = '6'' Ladder' THEN 137.885 * 0.85
         WHEN p.name = '8'' Ladder' THEN 183.425 * 0.85
         WHEN p.name = '4'' Ladder' THEN 115.66654 * 0.85
        
        -- Lighting
        WHEN p.name = '2'' Led Wrap Light Bulb' THEN 9.60135 * 0.85
        WHEN p.name = '2'' Wrap Light Bulb' THEN 2.710895 * 0.85
        WHEN p.name = '4'' Led Wrap Light Bulb' THEN 9.80375 * 0.85
        WHEN p.name = '4'' Wrap Light Bulb' THEN 2.2011 * 0.85
        WHEN p.name = 'A19 Led Bulb' THEN 1.78365 * 0.85
        WHEN p.name = 'Candelabra LED Bulb' THEN 3.04865 * 0.85
        
        -- Breakers y Panels
        WHEN p.name = 'QO 100' THEN 37.53255 * 0.85
        WHEN p.name = 'QO 115' THEN 4.33895 * 0.85
        WHEN p.name = 'QO 120' THEN 4.33895 * 0.85
        WHEN p.name = 'QO 220' THEN 9.6646 * 0.85
        WHEN p.name = 'QO 225' THEN 9.6646 * 0.85
        WHEN p.name = 'QO 230' THEN 9.6646 * 0.85
        WHEN p.name = 'QO 235' THEN 9.6646 * 0.85
        WHEN p.name = 'QO 240' THEN 9.6646 * 0.85
        WHEN p.name = 'QO 245' THEN 9.6646 * 0.85
        WHEN p.name = 'QO 250' THEN 9.6646 * 0.85
        WHEN p.name = 'QO 260' THEN 9.6646 * 0.85
        WHEN p.name = 'QO 280' THEN 31.8021 * 0.85
        WHEN p.name = 'QO 290' THEN 31.8021 * 0.85
        
        -- Siempre usar precio base para productos sin precio específico
        ELSE 5.00 * 0.85
    END,
    FALSE,  -- No es precio por defecto
    CURDATE(),
    NULL,
    TRUE,
    TRUE,   -- Es para venta
    FALSE   -- No es para compra
FROM appinventory_product p
WHERE p.is_active = TRUE;

-- 3. Verificar inserción
SELECT 
    'Precios reales insertados' as resultado,
    COUNT(*) as total_precios
FROM appinventory_productprice;

-- 4. Verificar distribución por tipo
SELECT 
    pt.name as tipo_precio,
    COUNT(pp.id) as total_precios,
    ROUND(AVG(pp.price), 2) as precio_promedio,
    ROUND(MIN(pp.price), 2) as precio_minimo,
    ROUND(MAX(pp.price), 2) as precio_maximo
FROM appinventory_productprice pp
JOIN appinventory_pricetype pt ON pp.price_type_id = pt.id
GROUP BY pt.name;

-- 5. Ejemplos de precios insertados para cables THHN
SELECT 
    p.sku,
    p.name,
    pt.name as tipo_precio,
    pp.price,
    u.code as unidad
FROM appinventory_product p
JOIN appinventory_productprice pp ON p.id = pp.product_id
JOIN appinventory_pricetype pt ON pp.price_type_id = pt.id
JOIN appinventory_unitofmeasure u ON pp.unit_id = u.id
WHERE p.name LIKE '%THHN%'
ORDER BY p.name, pt.name
LIMIT 10;
