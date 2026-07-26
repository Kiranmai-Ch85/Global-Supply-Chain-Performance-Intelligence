USE enterprise_procurement_db;

-- purchase_prices
ALTER TABLE purchase_prices
MODIFY PurchasePrice DOUBLE;

-- vendor_invoice
ALTER TABLE vendor_invoice
MODIFY Freight DOUBLE;

-- purchase_orders
ALTER TABLE purchase_orders
MODIFY order_date DATE,
MODIFY promised_date DATE,
MODIFY receipt_date DATE;

-- begin_inventory
ALTER TABLE begin_inventory
MODIFY startDate DATE;

-- end_inventory
ALTER TABLE end_inventory
MODIFY endDate DATE;

-- sales_sample
ALTER TABLE sales_sample
MODIFY SalesDate DATE;

-- vendor_sales_summary
ALTER TABLE vendor_sales_summary
MODIFY ProfitMargin DOUBLE;

-- procurement_kpi
ALTER TABLE procurement_kpi
MODIFY Order_Date DATE;

-- supply_chain_operations
ALTER TABLE supply_chain_operations
MODIFY Delivery_Date DATE;