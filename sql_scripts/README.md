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

## 🚀 How to Use
1. Import the Sample Superstore dataset into SQL Server.  
2. Run `cleaning.sql` to preprocess the data.  
3. Run `verification.sql` to validate the results.  
4. Connect the cleaned dataset to Power BI for dashboarding.  

---

## 📬 Author
Created by [Dipika](https://github.com/Dipika-ds)  
Part of the **Sales Performance Dashboard** project.
