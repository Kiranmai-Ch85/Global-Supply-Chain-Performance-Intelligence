{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "c8d31129-13f3-4f91-a52e-dc9578056c2f",
   "metadata": {},
   "source": [
    "# Day 19 – Final Business Insights & Recommendations\n",
    "\n",
    "## Final Business Insights\n",
    "\n",
    "### 1. Sales Performance\n",
    "The total sales generated in the analyzed sample are approximately ₹680.69K. This provides a baseline view of the sales performance captured in the available sales dataset.\n",
    "\n",
    "### 2. Procurement Cost\n",
    "The total purchase cost is approximately ₹2.82M, which is significantly higher than the total sales value observed in the sample.\n",
    "\n",
    "### 3. Gross Profit\n",
    "The calculated gross profit is approximately -₹2.13M, indicating that the purchase cost is substantially higher than the sales value in the analyzed sample.\n",
    "\n",
    "### 4. Profit Margin\n",
    "The calculated profit margin is approximately -313.61%. This indicates that the available sample data does not represent a profitable financial position based on the calculated sales and purchase values.\n",
    "\n",
    "### 5. Quantity Comparison\n",
    "The comparison between sales quantity and purchase quantity helps identify differences between procurement and sales activity. A significant difference may indicate excess inventory, demand-planning issues, or stock-utilization opportunities.\n",
    "\n",
    "### 6. Segment Performance\n",
    "Classification, city, and item-category analysis can be used to identify differences in sales, procurement, and inventory performance across business segments.\n",
    "\n",
    "---\n",
    "\n",
    "# Business Recommendations\n",
    "\n",
    "### 1. Review Procurement Spending\n",
    "Management should review purchasing costs and supplier pricing because procurement expenditure is significantly higher than the observed sales value.\n",
    "\n",
    "### 2. Improve Demand-Based Purchasing\n",
    "Purchase quantities should be aligned more closely with historical sales demand to reduce unnecessary inventory accumulation and improve working-capital efficiency.\n",
    "\n",
    "### 3. Monitor Supplier Performance\n",
    "Vendor-level analysis should be used to identify suppliers with higher purchase costs, inconsistent performance, or unfavorable purchasing terms.\n",
    "\n",
    "### 4. Optimize Inventory\n",
    "The difference between purchased and sold quantities should be investigated to identify excess inventory, slow-moving items, or potential stock-management issues.\n",
    "\n",
    "### 5. Analyze Business Segments\n",
    "Classification, city, and item-category performance should be monitored regularly to identify stronger-performing and underperforming segments.\n",
    "\n",
    "### 6. Monitor KPIs Regularly\n",
    "Total Sales, Total Purchase Cost, Gross Profit, Profit Margin, Sales Quantity, and Purchase Quantity should be monitored through the Power BI dashboard to support data-driven decisions.\n",
    "\n",
    "---\n",
    "\n",
    "## Important Interpretation Note\n",
    "\n",
    "The negative gross profit and profit margin observed in the dashboard are based on the available sample datasets. The procurement and sales datasets may not represent the same transactions or accounting period. Therefore, these financial KPIs should be interpreted as analytical indicators rather than actual audited company financial results."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ce2ae3be-bcd3-4572-a1f5-ba8dc6ae04ba",
   "metadata": {},
   "source": [
    "# Dataset Limitations\n",
    "\n",
    "## 1. Multiple Data Sources\n",
    "The project uses multiple datasets covering procurement, sales, inventory, vendor, purchase-order, and supply-chain operations. These datasets may not represent the exact same business period or transaction population.\n",
    "\n",
    "## 2. Sampled Data\n",
    "Some large datasets were sampled to make data processing and analysis manageable. Therefore, the results may not represent the complete underlying population.\n",
    "\n",
    "## 3. Different Dataset Sizes\n",
    "The datasets contain different numbers of records. Direct comparisons between datasets should therefore be interpreted carefully.\n",
    "\n",
    "## 4. Different Time Periods\n",
    "The datasets may cover different dates or reporting periods. Therefore, some sales, procurement, inventory, and vendor comparisons may not represent the same time period.\n",
    "\n",
    "## 5. Different Data Granularity\n",
    "Some datasets contain transaction-level records, while others contain summarized vendor, procurement, inventory, or operational information. Differences in granularity can affect aggregations and comparisons.\n",
    "\n",
    "## 6. Financial KPI Limitation\n",
    "Gross Profit and Profit Margin were calculated using the available sales and purchase data. Since these datasets may not be fully synchronized, the resulting financial KPIs should be treated as analytical indicators rather than audited financial results.\n",
    "\n",
    "## 7. Missing Business Context\n",
    "Certain business factors such as taxes, discounts, transportation costs, operating expenses, returns, payment terms, and other financial adjustments may not be available in the datasets.\n",
    "\n",
    "## 8. Sample-Based Conclusions\n",
    "The insights and recommendations are based on the available datasets and should be validated against complete production data before being used for major operational or financial decisions."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "13dc0546-7654-4cc3-b2ae-f193aee5fc6f",
   "metadata": {},
   "source": [
    "# Cleaning Log"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "10726b86-320f-4a40-98d7-34d58dd61641",
   "metadata": {},
   "source": [
    "| Dataset | Before Rows | After Rows | Row Change | Cleaning Status |\n",
    "|---|---:|---:|---:|---|\n",
    "| Purchase Prices | 12,261 | 12,256 | -5 | Cleaned |\n",
    "| Vendor Invoice | 5,543 | 5,543 | 0 | Cleaned |\n",
    "| Begin Inventory | 206,529 | 206,529 | 0 | Cleaned |\n",
    "| End Inventory | 224,489 | 224,489 | 0 | Cleaned |\n",
    "| Purchases Sample | 20,000 | 20,000 | 0 | Cleaned |\n",
    "| Purchase Orders | 29,666 | 29,666 | 0 | Cleaned |\n",
    "| Sales Sample | 20,000 | 20,000 | 0 | Cleaned |\n",
    "| Supply Chain Operations | 30 | 30 | 0 | Cleaned |\n",
    "| Vendor Sales Summary | 10,692 | 10,692 | 0 | Cleaned |\n",
    "| Procurement KPI | 777 | 777 | 0 | Cleaned |"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "40e41b6a-28ed-4cba-8982-c3db5cb8fb4e",
   "metadata": {},
   "source": [
    "## Cleaning Summary\n",
    "\n",
    "The cleaning process was performed during the data-preparation stage. Before-and-after row counts were validated by comparing the original raw CSV files with their corresponding cleaned files.\n",
    "\n",
    "Purchase Prices was reduced from 12,261 rows to 12,256 rows, resulting in 5 fewer records. The remaining nine datasets retained their original row counts after cleaning.\n",
    "\n",
    "Several datasets also had columns removed or standardized during the cleaning process while preserving their required records for analysis.\n",
    "\n",
    "The cleaned datasets were subsequently used for exploratory analysis, statistical analysis, Power BI modeling, KPI creation, and dashboard development."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "747454e8-672f-4fb7-ad35-aab8e5957951",
   "metadata": {},
   "source": [
    "## Cleaning Actions\n",
    "\n",
    "The Day 11 data-cleaning process included dataset-specific data preparation and validation activities such as:\n",
    "\n",
    "- Reviewed dataset structure, columns, and data types.\n",
    "- Standardized fields required for analysis.\n",
    "- Checked data quality and consistency.\n",
    "- Removed unnecessary fields where required.\n",
    "- Handled dataset-specific data-quality issues.\n",
    "- Validated the resulting cleaned datasets.\n",
    "- Exported the cleaned datasets for subsequent analysis and Power BI modeling.\n",
    "- Verified the final row counts of the cleaned datasets."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "2b04b6b3-9fb0-48fc-bde3-bfcefb3a3c41",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python [conda env:base]",
   "language": "python",
   "name": "conda-base-py"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.12.8"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
