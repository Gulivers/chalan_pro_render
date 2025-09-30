-- =====================================================
-- MASTER DATA FOR RESIDENTIAL ELECTRICAL COMPANY
-- =====================================================

-- =====================================================
-- A) WAREHOUSES (3 warehouses)
-- =====================================================
INSERT INTO appinventory_warehouse (name, location, is_active, is_default) VALUES
('Main Warehouse', '123 Electric Ave, Miami, FL 33101', TRUE, TRUE),
('Installation Warehouse', '456 Installation St, Miami, FL 33102', TRUE, FALSE),
('Emergency Stock', '789 Emergency Blvd, Miami, FL 33103', TRUE, FALSE);

-- =====================================================
-- B) PRICE TYPES (4 price types)
-- =====================================================
INSERT INTO appinventory_pricetype (name, description, is_active) VALUES
('COST', 'Cost price for internal calculations', TRUE),
('RETAIL', 'Retail price for end customers', TRUE),
('CONTRACTOR', 'Contractor price with volume discounts', TRUE),
('WHOLESALE', 'Wholesale price for bulk purchases', TRUE);

-- =====================================================
-- C) PARTY TYPES (3 party types)
-- =====================================================
INSERT INTO apptransactions_partytype (name, description, is_active) VALUES
('Customer', 'Residential and commercial customers', TRUE),
('Supplier', 'Electrical equipment suppliers and vendors', TRUE),
('Subcontractor', 'Electrical subcontractors and installers', TRUE);

-- =====================================================
-- D) PARTY CATEGORIES (4 party categories)
-- =====================================================
INSERT INTO apptransactions_partycategory (name, description, is_active) VALUES
('Residential Customer', 'Homeowners and residential property owners', TRUE),
('Commercial Customer', 'Businesses and commercial property owners', TRUE),
('Electrical Supplier', 'Manufacturers and distributors of electrical equipment', TRUE),
('Electrical Contractor', 'Licensed electrical contractors and installers', TRUE);

-- =====================================================
-- E) SAMPLE PARTIES (Examples for each category)
-- =====================================================
-- Note: These are examples - you would add actual customers/suppliers
INSERT INTO apptransactions_party (
    name, rfc, street, city, state, zipcode, country, 
    phone, email, category_id, customer_rank, supplier_rank, is_active
) VALUES
-- Residential Customer
('John Smith', '', '123 Main St', 'Miami', 'FL', '33101', 'USA', 
 '305-555-0101', 'john.smith@email.com', 
 (SELECT id FROM apptransactions_partycategory WHERE name = 'Residential Customer'),
 1, 0, TRUE),

-- Commercial Customer  
('ABC Office Building', '12-3456789-0', '456 Business Ave', 'Miami', 'FL', '33102', 'USA',
 '305-555-0202', 'office@abc.com',
 (SELECT id FROM apptransactions_partycategory WHERE name = 'Commercial Customer'),
 2, 0, TRUE),

-- Electrical Supplier
('Miami Electrical Supply', '98-7654321-0', '789 Supply Blvd', 'Miami', 'FL', '33103', 'USA',
 '305-555-0303', 'sales@miamielectrical.com',
 (SELECT id FROM apptransactions_partycategory WHERE name = 'Electrical Supplier'),
 0, 1, TRUE),

-- Electrical Contractor
('Pro Electric Services', '11-2233445-6', '321 Service St', 'Miami', 'FL', '33104', 'USA',
 '305-555-0404', 'info@proelectric.com',
 (SELECT id FROM apptransactions_partycategory WHERE name = 'Electrical Contractor'),
 1, 1, TRUE);

-- =====================================================
-- F) ADDITIONAL MASTER DATA SUGGESTIONS
-- =====================================================

-- Document Types (already created in insert_document_types_en.sql)
-- Unit Categories (already created in insert_electrical_units.sql)
-- Units of Measure (already created in insert_electrical_units.sql)
-- Product Categories (already created in insert_product_references.sql)
-- Product Brands (already created in insert_product_references.sql)

-- =====================================================
-- G) JOB STATUSES (for construction projects)
-- =====================================================
-- These could be added to a JobStatus model if it exists
-- INSERT INTO apptransactions_jobstatus (name, description, is_active) VALUES
-- ('Planning', 'Project in planning phase', TRUE),
-- ('Material Order', 'Materials ordered, waiting for delivery', TRUE),
-- ('Installation', 'Installation in progress', TRUE),
-- ('Inspection', 'Awaiting electrical inspection', TRUE),
-- ('Completed', 'Project completed and approved', TRUE),
-- ('Warranty', 'Under warranty period', TRUE);

-- =====================================================
-- H) SERVICE TYPES (for electrical services)
-- =====================================================
-- These could be added to a ServiceType model if it exists
-- INSERT INTO apptransactions_servicetype (name, description, is_active) VALUES
-- ('New Construction', 'Electrical installation for new buildings', TRUE),
-- ('Remodeling', 'Electrical work for renovations', TRUE),
-- ('Maintenance', 'Routine electrical maintenance', TRUE),
-- ('Emergency Repair', 'Emergency electrical repairs', TRUE),
-- ('Upgrade', 'Electrical system upgrades', TRUE);
