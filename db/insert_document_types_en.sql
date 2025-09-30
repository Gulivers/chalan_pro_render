-- =====================================================
-- INSERT DOCUMENT TYPES FOR RESIDENTIAL ELECTRICAL COMPANY
-- Puerto Rico - Typical electrical sector transactions
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
-- SALES DOCUMENTS
-- =====================================================

-- Sales Invoices
('INV', 'Sales Invoice', 1, 1, 1, 1, 0, 1, 1, -1, 1, 1, 0),
('INV-INT', 'International Sales Invoice', 1, 1, 1, 1, 0, 1, 1, -1, 1, 1, 0),
('INV-CONT', 'Contractor Sales Invoice', 1, 1, 1, 1, 0, 1, 1, -1, 1, 1, 0),

-- Credit Notes
('CN', 'Credit Note', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0),
('CN-RET', 'Credit Note - Return', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0),
('CN-DISC', 'Credit Note - Discount', 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0),

-- Debit Notes
('DN', 'Debit Note', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('DN-SUR', 'Debit Note - Surcharge', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),

-- Quotes and Estimates
('QUOTE', 'Quote', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0),
('EST', 'Estimate', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0),
('PROP', 'Commercial Proposal', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0),

-- Sales Orders
('SO', 'Sales Order', 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0),
('SO-INST', 'Sales Order with Installation', 0, 1, 0, 0, 0, 1, 0, 0, 1, 1, 0),
('SO-PACK', 'Sales Order - Material Packing', 1, 1, 0, 0, 0, 1, 1, -1, 1, 1, 0),

-- =====================================================
-- PURCHASE DOCUMENTS
-- =====================================================

-- Purchase Invoices
('PO-INV', 'Purchase Invoice', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0),
('PO-INV-INT', 'International Purchase Invoice', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0),

-- Purchase Orders
('PO', 'Purchase Order', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0),
('PO-URG', 'Urgent Purchase Order', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0),

-- Receipts
('REC', 'Goods Receipt', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0),
('REC-PART', 'Partial Receipt', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0),

-- Supplier Returns
('RET-SUP', 'Supplier Return', 1, 1, 1, 1, 1, 0, 1, -1, 1, 1, 0),

-- =====================================================
-- INVENTORY DOCUMENTS
-- =====================================================

-- Inventory Adjustments
('ADJ-INV', 'Inventory Adjustment', 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0),
('ADJ-INV-PHY', 'Physical Inventory Adjustment', 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0),
('ADJ-INV-NEG', 'Negative Inventory Adjustment', 1, 1, 1, 0, 0, 0, 1, -1, 1, 1, 1),

-- Warehouse Transfers
('TRANS', 'Warehouse Transfer', 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0),
('TRANS-EXT', 'External Transfer', 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0),

-- Material Issues
('ISS-MAT', 'Material Issue', 1, 1, 0, 0, 0, 0, 1, -1, 1, 1, 0),
('ISS-JOB', 'Job Issue', 1, 1, 0, 0, 0, 0, 1, -1, 1, 1, 0),

-- =====================================================
-- ELECTRICAL SERVICES
-- =====================================================

-- Installation Services
('SERV-INST', 'Installation Service', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('SERV-MAINT', 'Maintenance Service', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('SERV-REP', 'Repair Service', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),

-- Service Contracts
('CONTR-INST', 'Installation Contract', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('CONTR-MAINT', 'Maintenance Contract', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),

-- =====================================================
-- PROJECT DOCUMENTS
-- =====================================================

-- Residential Projects
('PROJ-RES', 'Residential Project', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('PROJ-COMM', 'Commercial Project', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('PROJ-IND', 'Industrial Project', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),

-- =====================================================
-- INTERNAL CONTROL DOCUMENTS
-- =====================================================

-- Physical Inventories
('INV-PHY', 'Physical Inventory', 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0),
('INV-CYC', 'Cycle Count', 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0),

-- Claims and Reclassifications
('CLAIM', 'Material Claim', 0, 1, 0, 0, 1, 0, 0, 0, 1, 1, 0),
('RECLASS', 'Inventory Reclassification', 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0),

-- =====================================================
-- PUERTO RICO SPECIFIC DOCUMENTS
-- =====================================================

-- Tax Documents PR
('INV-IVU', 'Invoice with IVU Tax', 1, 1, 1, 1, 0, 1, 1, -1, 1, 1, 0),
('PUR-EXEMPT', 'Exempt Purchase', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0),

-- Customs Documents
('INV-CUST', 'Customs Invoice', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0),
('ENT-CUST', 'Customs Entry', 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0),

-- =====================================================
-- ELECTRICAL SPECIALTY DOCUMENTS
-- =====================================================

-- Electrical Work Orders
('WO-ELEC', 'Electrical Work Order', 0, 1, 1, 1, 0, 1, 0, 0, 1, 1, 0),
('WO-PANEL', 'Panel Installation Work Order', 1, 1, 1, 1, 0, 1, 1, -1, 1, 1, 0),
('WO-WIRING', 'Wiring Work Order', 1, 1, 1, 1, 0, 1, 1, -1, 1, 1, 0),

-- Electrical Permits
('PERM-ELEC', 'Electrical Permit', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0),
('PERM-PANEL', 'Panel Permit', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0),

-- Electrical Inspections
('INSP-ELEC', 'Electrical Inspection', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0),
('INSP-FINAL', 'Final Electrical Inspection', 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0);

-- =====================================================
-- INSERTION VERIFICATION
-- =====================================================

-- Count inserted documents
SELECT 
    'Documents inserted' as result,
    COUNT(*) as total_documents
FROM apptransactions_documenttype;

-- Verify distribution by type
SELECT 
    CASE 
        WHEN is_sales = 1 AND is_purchase = 0 THEN 'SALES'
        WHEN is_sales = 0 AND is_purchase = 1 THEN 'PURCHASES'
        WHEN is_sales = 1 AND is_purchase = 1 THEN 'MIXED'
        ELSE 'CONTROL'
    END as category,
    COUNT(*) as quantity,
    SUM(CASE WHEN is_active = 1 THEN 1 ELSE 0 END) as active
FROM apptransactions_documenttype
GROUP BY 
    CASE 
        WHEN is_sales = 1 AND is_purchase = 0 THEN 'SALES'
        WHEN is_sales = 0 AND is_purchase = 1 THEN 'PURCHASES'
        WHEN is_sales = 1 AND is_purchase = 1 THEN 'MIXED'
        ELSE 'CONTROL'
    END;

-- Examples of documents by category
SELECT 
    type_code,
    description,
    CASE 
        WHEN is_sales = 1 AND is_purchase = 0 THEN 'SALE'
        WHEN is_sales = 0 AND is_purchase = 1 THEN 'PURCHASE'
        WHEN is_sales = 1 AND is_purchase = 1 THEN 'MIXED'
        ELSE 'CONTROL'
    END as type,
    CASE 
        WHEN stock_movement > 0 THEN 'INBOUND'
        WHEN stock_movement < 0 THEN 'OUTBOUND'
        ELSE 'NO MOVEMENT'
    END as stock_movement,
    CASE WHEN is_taxable = 1 THEN 'YES' ELSE 'NO' END as taxable
FROM apptransactions_documenttype
WHERE is_active = 1
ORDER BY type, type_code;
