# SQL Scripts for Data Cleaning & Verification

This folder contains SQL Server scripts used to **clean and validate the Sample Superstore dataset** before building the Power BI dashboard. These scripts demonstrate end‑to‑end preprocessing and quality checks, ensuring the dataset is reliable for analysis.

---

## 📂 Files

### 1. `cleaning.sql`
Performs data cleaning and preprocessing:
- **Remove duplicates** using `ROW_NUMBER()` and partitioning by key fields  
- **Handle NULLs** in numeric columns (`Sales`, `Profit`, `Quantity`, `Discount`)  
- **Standardize data types** (`DECIMAL`, `INT`) for consistency  
- **Trim text fields** to remove leading/trailing spaces  
- **Add calculated column** `ProfitMargin = Profit / Sales`  

👉 Ensures the dataset is clean, standardized, and enriched with profitability metrics.

---

### 2. `verification.sql`
Validates the dataset after cleaning:
- **Row count check** to confirm total records  
- **NULL check** for critical fields like `Sales`  
- **Average Profit Margin** calculation for sanity check  
- **Duplicate detection** (should return 0 rows after cleaning)  
- **Preview of cleaned data** with `TOP 10` rows  

👉 Confirms that cleaning steps were successful and data integrity is maintained.

---

## 📌 Business Insights from SQL Cleaning & Verification

Running the `cleaning.sql` and `verification.sql` scripts provided several important observations about the dataset:

- **Data Integrity Improved**  
  Duplicate records were successfully removed, ensuring each transaction is unique and reliable for analysis.

- **Null Handling**  
  All critical numeric fields (`Sales`, `Profit`, `Quantity`, `Discount`) were standardized with no missing values, eliminating gaps in reporting.

- **Profit Margin Calculation**  
  Adding the `ProfitMargin` column revealed that average margins hover around ~11–12%, providing a baseline for profitability analysis.

- **Discount Impact**  
  Verification queries confirmed that higher discounts (>0.4) often correlate with negative profit margins, reinforcing the need for controlled discount strategies.

- **Regional & Segment Readiness**  
  Cleaned data is now structured to support deeper insights at the **Region, Segment, and Category** levels in Power BI.

---

## 🚀 How to Use
1. Import the Sample Superstore dataset into SQL Server.  
2. Run `cleaning.sql` to preprocess the data.  
3. Run `verification.sql` to validate the results.  
4. Connect the cleaned dataset to Power BI for dashboarding.  

---

## 📬 Author
Created by [Dipika](https://github.com/Dipika-ds)  
Part of the **Sales Performance Dashboard** project.
