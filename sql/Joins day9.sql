USE enterprise_procurement_db;
SHOW TABLES;

-- vendor_invoice with purchase_prices --
SELECT
    vi.VendorNumber,
    vi.VendorName,
    pp.Brand,
    pp.Description,
    pp.PurchasePrice,
    vi.Quantity,
    vi.Dollars
FROM vendor_invoice AS vi
INNER JOIN purchase_prices AS pp
ON vi.VendorNumber = pp.VendorNumber
LIMIT 20;

-- purchases_sample with sales_sample using inventoryid --
SELECT
    p.InventoryId,
    p.Description,
    p.VendorName,
    p.Quantity AS Purchased_Quantity,
    s.SalesQuantity,
    s.SalesDollars
FROM purchases_sample AS p
INNER JOIN sales_sample AS s
ON p.InventoryId = s.InventoryId
LIMIT 20;

-- begin_inventory and end_inventory using InventoryId --
SELECT
    b.InventoryId,
    b.Description,
    b.City,
    b.onHand AS Begin_Stock,
    e.onHand AS End_Stock
FROM begin_inventory AS b
INNER JOIN end_inventory AS e
ON b.InventoryId = e.InventoryId
LIMIT 20;

-- purchases_sample with vendor_sales_summary using VendorNumber and Brand --
SELECT
    p.VendorNumber,
    p.VendorName,
    p.Brand,
    p.Description,
    v.TotalSalesDollars,
    v.GrossProfit,
    v.ProfitMargin
FROM purchases_sample AS p
INNER JOIN vendor_sales_summary AS v
ON p.VendorNumber = v.VendorNumber
AND p.Brand = v.Brand
LIMIT 20;

-- procurement_kpi with supply_chain_operations using the Supplier --
DESCRIBE supply_chain_operations;

SELECT
    pk.Supplier,
    pk.Item_Category,
    pk.Order_Status,
    sc.Product,
    sc.Quantity,
    sc.Unit_Price,
    sc.Total_Cost
FROM procurement_kpi AS pk
INNER JOIN supply_chain_operations AS sc
ON pk.Supplier = sc.Supplier
LIMIT 20;

SELECT
    po.po_id,
    po.order_date,
    po.ordered_qty,
    pk.Supplier,
    pk.Order_Status,
    pk.Quantity
FROM purchase_orders po
INNER JOIN procurement_kpi pk
ON po.order_date = pk.Order_Date
LIMIT 20;

SELECT MIN(order_date), MAX(order_date)
FROM purchase_orders;

SELECT MIN(Order_Date), MAX(Order_Date)
FROM procurement_kpi;

SELECT *
FROM purchase_orders
LIMIT 10;