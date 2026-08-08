# Enterprise Procurement & Vendor Performance Analytics

## Project Overview

Enterprise Procurement & Vendor Performance Analytics is a data analytics project designed to evaluate procurement costs, vendor performance, sales performance, inventory levels, and supply-chain efficiency.

The project combines SQL, Python, Excel, and Power BI to transform raw business data into actionable procurement and vendor performance insights.

---

## Business Problem

Organizations need to monitor procurement spending, supplier performance, inventory levels, sales performance, and purchasing efficiency.

This project analyzes these areas to identify:

- Procurement cost patterns
- Sales versus purchase performance
- Vendor and supplier performance
- Inventory levels
- Purchase quantity patterns
- Classification and item-category performance
- Potential procurement inefficiencies

---

## Project Objectives

1. Analyze procurement and purchasing costs.
2. Compare sales performance with procurement costs.
3. Evaluate vendor and supplier performance.
4. Analyze inventory levels across locations.
5. Identify trends in sales, purchase costs, and purchase quantities.
6. Analyze business performance across classifications and item categories.
7. Build an interactive Power BI dashboard.
8. Generate actionable business recommendations.

---

## Tools & Technologies

- Python
- Pandas
- NumPy
- SQL
- MySQL
- Excel
- Power BI
- Jupyter Notebook
- Git & GitHub

---

## Project Workflow

Raw Data  
↓  
Data Validation  
↓  
Data Cleaning  
↓  
SQL Analysis  
↓  
Python EDA & Statistical Analysis  
↓  
KPI Development  
↓  
Power BI Dashboard  
↓  
Business Insights & Recommendations

---

## Key KPIs

| KPI | Description |
|---|---|
| Total Sales | Total revenue generated from sales |
| Total Purchase Cost | Total procurement/purchase expenditure |
| Gross Profit | Difference between sales and purchase cost |
| Profit Margin % | Profit expressed as a percentage of sales |
| Total Sales Quantity | Total quantity of products sold |
| Total Purchase Quantity | Total quantity purchased |
| Inventory Quantity | Quantity of inventory available |
| Purchase Price | Cost paid for purchased products |
| Sales Price | Price at which products were sold |
| Stock Turnover | Measure of inventory movement |
| Sales-to-Purchase Ratio | Comparison of sales value with procurement value |

---

## Dashboard Pages

### Overview

Provides a high-level view of business performance using KPI cards, classification analysis, item-category analysis, and business insights.

### Trends

Analyzes changes over time in:

- Sales
- Purchase cost
- Purchase quantity

The page helps identify business performance trends and fluctuations.

### Segments

Analyzes performance across:

- Classification
- Item Category
- City

Interactive slicers allow users to explore different business segments.

---

## Key Business Insights

- Total purchase cost is significantly higher than total sales.
- Gross profit is currently negative.
- The calculated profit margin is negative, indicating an unfavorable sales-to-procurement relationship.
- Purchase quantity is substantially higher than sales quantity.
- Inventory optimization is required to reduce excess stock.
- Procurement costs should be monitored across categories and suppliers.
- Vendor and purchasing performance should be regularly reviewed.

---

## Recommendations

1. Review procurement prices and negotiate better supplier rates.
2. Identify suppliers with consistently high procurement costs.
3. Reduce unnecessary purchasing where inventory levels are excessive.
4. Improve inventory planning using sales demand patterns.
5. Monitor the gap between purchase quantity and sales quantity.
6. Review low-performing classifications and categories.
7. Establish regular vendor performance monitoring.
8. Use dashboard KPIs for continuous procurement decision-making.

---

## Dataset Limitations

- Some datasets are sample datasets rather than complete enterprise production data.
- Dataset sizes differ significantly across sources.
- Some datasets cover different time periods.
- Relationships between certain datasets may require assumptions or matching through available identifiers.
- The analysis is dependent on the quality and completeness of the available source data.
- The results should be interpreted as analytical findings from the available datasets rather than a complete representation of an organization's procurement operations.

---

## Repository Structure

```text
Enterprise Procurement & Vendor Performance Analytics/
│
├── dashboard/
│   └── Power BI dashboard files and screenshots
│
├── data/
│   ├── raw/
│   ├── processed/
│   └── cleaned data
│
├── docs/
│   └── project documentation
│
├── notebooks/
│   ├── data validation
│   ├── data cleaning
│   ├── EDA
│   ├── statistical analysis
│   ├── final insights
│   └── data dictionary
│
├── sql/
│   └── SQL analysis scripts
│
└── README.md
