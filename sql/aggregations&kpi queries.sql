USE enterprise_procurement_db;

-- Aggregation 1 (Classification)
SELECT
    Classification,
    SUM(SalesQuantity) AS Total_Quantity,
    SUM(SalesDollars) AS Total_Sales,
    AVG(SalesPrice) AS Average_Price
FROM sales_sample
GROUP BY Classification
ORDER BY Classification;

-- Aggregation 2 (City)

DESCRIBE begin_inventory;

SELECT
    City,
    SUM(onHand) AS Total_Stock,
    AVG(Price) AS Average_Price
FROM begin_inventory
GROUP BY City
ORDER BY Total_Stock DESC;

-- Aggregation 3 (Item_categoty)
SELECT
    Item_Category,
    SUM(Quantity) AS Total_Quantity,
    AVG(Unit_Price) AS Average_Unit_Price,
    AVG(Negotiated_Price) AS Average_Negotiated_Price
FROM procurement_kpi
GROUP BY Item_Category
ORDER BY Total_Quantity DESC;

-- Aggregation 4 (Volume)
SELECT
    Classification,
    SUM(Volume) AS Total_Volume,
    AVG(Volume) AS Average_Volume
FROM sales_sample
GROUP BY Classification
ORDER BY Classification;

DESCRIBE procurement_kpi;

SELECT DISTINCT Order_Status
FROM procurement_kpi;

-- KPI 1 – On-Time Delivery (OTD) %

SELECT
    ROUND(
        (SUM(CASE
            WHEN Order_Status = 'Delivered' THEN 1
            ELSE 0
        END) * 100.0) / COUNT(*),
    2) AS OTD_Percentage
FROM procurement_kpi;

-- KPI 2 – Average Days to Ship (Actual vs. Scheduled)

SELECT
    Order_Date,
    Delivery_Date
FROM procurement_kpi
LIMIT 10;


SELECT
    ROUND(
        AVG(DATEDIFF(Delivery_Date, Order_Date)),
        2
    ) AS Average_Days_to_Ship
FROM procurement_kpi
WHERE Order_Status IN ('Delivered', 'Partially Delivered');

-- KPI 3 – Late Delivery Financial Risk ($)

SELECT
    ROUND(
        SUM(Quantity * Unit_Price),
        2
    ) AS Financial_Risk_Value
FROM procurement_kpi
WHERE Order_Status = 'Cancelled';

-- KPI 4 – Supplier Reliability Score


SELECT
    Supplier,
    ROUND(
        STDDEV(DATEDIFF(Delivery_Date, Order_Date)),
        2
    ) AS Reliability_Score
FROM procurement_kpi
WHERE Order_Status IN ('Delivered', 'Partially Delivered')
GROUP BY Supplier
ORDER BY Reliability_Score ASC;