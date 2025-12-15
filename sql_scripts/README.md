cleaning.sql

This script performs data preprocessing on the Sample Superstore dataset before visualization in Power BI. Key steps include:

Removing duplicate records using ROW_NUMBER() and partitioning by key fields.

Handling NULL values in numeric columns (Sales, Profit, Quantity, Discount).

Standardizing data types for consistency (e.g., DECIMAL, INT).

Trimming text fields to remove extra spaces.

Adding a calculated ProfitMargin column (Profit / Sales).

👉 This ensures the dataset is clean, reliable, and ready for analysis.


verification.sql

This script validates the dataset after cleaning to confirm data integrity. Checks include:

Total row count after cleaning.

Number of NULL values in Sales.

Average ProfitMargin across the dataset.

Duplicate detection (should return 0 rows).

Preview of the first 10 cleaned records.