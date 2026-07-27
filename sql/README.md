# SQL - Day 10

## Day 10 Objectives
- Created SQL Views for key procurement KPIs.
- Practiced SQL Window Functions.
- Improved analytical SQL skills using real procurement data.

## SQL Views Created

### 1. On-Time Delivery View
- Total Orders
- Delivered Orders
- On-Time Delivery Percentage

### 2. Average Delivery Time View
- Average number of days taken for delivery.

### 3. Late Delivery Financial Risk View
- Estimated financial impact of delayed deliveries.

### 4. Carrier Reliability Score View
- Reliability percentage based on delivery performance.

## Window Functions Practiced

### Running Total
Used:
- `SUM() OVER()`

Purpose:
- Calculate cumulative ordered quantity based on PO Date.

### Ranking
Used:
- `RANK() OVER()`

Purpose:
- Rank purchase orders based on purchase amount.

### Previous Purchase
Used:
- `LAG()`

Purpose:
- Compare the current purchase with the previous purchase.

### Next Purchase
Used:
- `LEAD()`

Purpose:
- Compare the current purchase with the next purchase.

## Skills Practiced
- SQL Views
- Window Functions
- SUM OVER()
- RANK()
- LAG()
- LEAD()
- Business KPI Analysis
- Procurement Analytics

## Files
- day10_sql_views_window_functions.sql
