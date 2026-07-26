USE enterprise_procurement_db;

CREATE TABLE purchase_prices (
    Brand INT,
    Description VARCHAR(255),
    Price DOUBLE,
    Size VARCHAR(50),
    Volume INT,
    Classification INT,
    PurchasePrice DOUBLE,
    VendorNumber INT,
    VendorName VARCHAR(255)
);

SELECT COUNT(*) FROM purchase_prices;

SHOW VARIABLES LIKE 'secure_file_priv';

SHOW GLOBAL VARIABLES LIKE 'local_infile';

LOAD DATA LOCAL INFILE
'C:\Users\Admin\Documents\Enterprise Procurement & Vendor Performance Analytics\data\raw\purchase_prices_cleaned.csv'
INTO TABLE purchase_prices
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
Brand,
Description,
Price,
Size,
Volume,
Classification,
PurchasePrice,
VendorNumber,
VendorName
);

SELECT COUNT(*) FROM purchase_prices;

TRUNCATE TABLE purchase_prices;

SELECT COUNT(*) FROM purchase_prices;

DESCRIBE purchase_prices;

TRUNCATE TABLE purchase_prices;

CREATE TABLE vendor_invoice (
    VendorNumber INT,
    VendorName VARCHAR(255),
    InvoiceDate DATE,
    PONumber INT,
    PODate DATE,
    PayDate DATE,
    Quantity INT,
    Dollars DOUBLE,
    Freight DOUBLE
);

SHOW TABLES;

CREATE TABLE purchases_sample (
    InventoryId VARCHAR(100),
    Store INT,
    Brand INT,
    Description VARCHAR(255),
    Size VARCHAR(50),
    VendorNumber INT,
    VendorName VARCHAR(255),
    PONumber INT,
    PODate DATE,
    ReceivingDate DATE,
    InvoiceDate DATE,
    PayDate DATE,
    PurchasePrice DOUBLE,
    Quantity INT,
    Dollars DOUBLE,
    Classification INT
);

SHOW TABLES;

CREATE TABLE purchase_orders (
    po_id VARCHAR(50),
    supplier_id VARCHAR(50),
    site_id VARCHAR(50),
    part_id VARCHAR(50),
    order_date DATE,
    promised_date DATE,
    receipt_date DATE,
    ordered_qty INT,
    received_qty INT
);

SHOW TABLES;

CREATE TABLE begin_inventory (
    InventoryId VARCHAR(100),
    Store INT,
    City VARCHAR(100),
    Brand INT,
    Description VARCHAR(255),
    Size VARCHAR(50),
    onHand INT,
    Price DOUBLE,
    startDate DATE
);

SHOW TABLES;

CREATE TABLE end_inventory (
    InventoryId VARCHAR(100),
    Store INT,
    City VARCHAR(100),
    Brand INT,
    Description VARCHAR(255),
    Size VARCHAR(50),
    onHand INT,
    Price DOUBLE,
    endDate DATE
);

SHOW TABLES;

CREATE TABLE sales_sample (
    InventoryId VARCHAR(100),
    Store INT,
    Brand INT,
    Description VARCHAR(255),
    Size VARCHAR(50),
    SalesQuantity INT,
    SalesDollars DOUBLE,
    SalesPrice DOUBLE,
    SalesDate DATE,
    Volume INT,
    Classification INT,
    ExciseTax DOUBLE,
    VendorNo INT,
    VendorName VARCHAR(255)
);

SELECT COUNT(*) FROM sales_sample;

SELECT * FROM sales_sample ORDER BY SalesDate DESC LIMIT 5;

SHOW COUNT(*) WARNINGS;

SELECT COUNT(*) FROM sales_sample;

SELECT MIN(SalesDate), MAX(SalesDate) FROM sales_sample;

SELECT * FROM sales_sample LIMIT 70;

TRUNCATE TABLE sales_sample;

USE enterprise_procurement_db;

LOAD DATA LOCAL INFILE 'C:/Users/Admin/Documents/Enterprise Procurement & Vendor Performance Analytics/data/raw/sales_sample_cleaned.csv'
INTO TABLE sales_sample
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 ROWS
(
InventoryId,
Store,
Brand,
Description,
Size,
SalesQuantity,
SalesDollars,
SalesPrice,
@SalesDate,
Volume,
Classification,
ExciseTax,
VendorNo,
VendorName
)
SET SalesDate = STR_TO_DATE(@SalesDate,'%Y-%m-%d');

SELECT COUNT(*) FROM sales_sample;

SHOW CREATE TABLE sales_sample;

DESCRIBE sales_sample;

TRUNCATE TABLE sales_sample;

USE enterprise_procurement_db;

TRUNCATE TABLE sales_sample;

LOAD DATA LOCAL INFILE 'C:/Users/Admin/Documents/Enterprise Procurement & Vendor Performance Analytics/data/raw/sales_sample_mysql.csv'
INTO TABLE sales_sample
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
IGNORE 1 ROWS
(
InventoryId,
Store,
Brand,
Description,
Size,
SalesQuantity,
SalesDollars,
SalesPrice,
@SalesDate,
Volume,
Classification,
ExciseTax,
VendorNo,
VendorName
)
SET SalesDate = STR_TO_DATE(@SalesDate,'%Y-%m-%d');

SELECT COUNT(*) FROM sales_sample;

SHOW TABLES;

SELECT COUNT(*) FROM purchase_prices;
SELECT COUNT(*) FROM vendor_invoice;
SELECT COUNT(*) FROM purchase_orders;
SELECT COUNT(*) FROM begin_inventory;
SELECT COUNT(*) FROM end_inventory;
SELECT COUNT(*) FROM sales_sample;
SELECT COUNT(*) FROM purchases_sample;

CREATE TABLE vendor_sales_summary (
    VendorNumber INT,
    VendorName VARCHAR(255),
    Brand INT,
    Description VARCHAR(255),
    PurchasePrice DOUBLE,
    ActualPrice DOUBLE,
    Volume INT,
    TotalPurchaseQuantity INT,
    TotalPurchaseDollars DOUBLE,
    TotalSalesQuantity INT,
    TotalSalesPrice DOUBLE,
    TotalSalesDollars DOUBLE,
    TotalExciseTax DOUBLE,
    FreightCost DOUBLE,
    GrossProfit DOUBLE,
    ProfitMargin DOUBLE,
    StockTurnover INT,
    SalestoPurchaseRatio DOUBLE
);

SHOW TABLES;

CREATE TABLE procurement_kpi (
    PO_ID VARCHAR(50),
    Supplier VARCHAR(100),
    Order_Date DATE,
    Delivery_Date VARCHAR(50),
    Item_Category VARCHAR(100),
    Order_Status VARCHAR(50),
    Quantity INT,
    Unit_Price DOUBLE,
    Negotiated_Price DOUBLE,
    Defective_Units INT,
    Compliance VARCHAR(20)
);

CREATE TABLE supply_chain_operations (
    Product VARCHAR(100),
    Supplier VARCHAR(100),
    Warehouse_Location VARCHAR(100),
    Quantity INT,
    Unit_Price DOUBLE,
    Total_Cost DOUBLE,
    Delivery_Date DATE
);

SHOW TABLES;

SELECT 'purchase_prices' AS Table_Name, COUNT(*) AS Rows_Count FROM purchase_prices
UNION ALL
SELECT 'vendor_invoice', COUNT(*) FROM vendor_invoice
UNION ALL
SELECT 'purchase_orders', COUNT(*) FROM purchase_orders
UNION ALL
SELECT 'begin_inventory', COUNT(*) FROM begin_inventory
UNION ALL
SELECT 'end_inventory', COUNT(*) FROM end_inventory
UNION ALL
SELECT 'purchases_sample', COUNT(*) FROM purchases_sample
UNION ALL
SELECT 'sales_sample', COUNT(*) FROM sales_sample
UNION ALL
SELECT 'vendor_sales_summary', COUNT(*) FROM vendor_sales_summary
UNION ALL
SELECT 'procurement_kpi', COUNT(*) FROM procurement_kpi
UNION ALL
SELECT 'supply_chain_operations', COUNT(*) FROM supply_chain_operations;