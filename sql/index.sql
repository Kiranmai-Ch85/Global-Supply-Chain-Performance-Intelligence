SELECT COUNT(*) - COUNT(DISTINCT po_id) AS purchase_orders_duplicates
FROM purchase_orders;

SELECT COUNT(*) - COUNT(DISTINCT InventoryId) AS begin_inventory_duplicates
FROM begin_inventory;

SELECT COUNT(*) - COUNT(DISTINCT InventoryId) AS end_inventory_duplicates
FROM end_inventory;

SELECT COUNT(*) - COUNT(DISTINCT InventoryId) AS sales_sample_duplicates
FROM sales_sample;

USE enterprise_procurement_db;

CREATE INDEX idx_purchase_prices_vendor
ON purchase_prices (VendorNumber);

CREATE INDEX idx_vendor_invoice_vendor
ON vendor_invoice (VendorNumber);

CREATE INDEX idx_purchase_orders_po
ON purchase_orders (po_id);

CREATE INDEX idx_begin_inventory_inventory
ON begin_inventory (InventoryId);

CREATE INDEX idx_end_inventory_inventory
ON end_inventory (InventoryId);

CREATE INDEX idx_sales_inventory
ON sales_sample (InventoryId);

CREATE INDEX idx_sales_vendor
ON sales_sample (VendorNo);

CREATE INDEX idx_vendor_sales_vendor
ON vendor_sales_summary (VendorNumber);

CREATE INDEX idx_procurement_supplier
ON procurement_kpi (Supplier);

CREATE INDEX idx_supply_supplier
ON supply_chain_operations (Supplier);

SHOW INDEX FROM purchase_prices;
SHOW INDEX FROM vendor_invoice;
SHOW INDEX FROM purchase_orders;
SHOW INDEX FROM begin_inventory;
SHOW INDEX FROM end_inventory;
SHOW INDEX FROM sales_sample;
SHOW INDEX FROM vendor_sales_summary;
SHOW INDEX FROM procurement_kpi;
SHOW INDEX FROM supply_chain_operations;