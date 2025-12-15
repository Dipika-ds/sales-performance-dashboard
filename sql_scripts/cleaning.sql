-- ============================================
-- Data Cleaning Script for SampleSuperstore
-- ============================================

-- 1. Remove duplicates based on key fields
WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY Segment, City, State, Category, Sub_Category, Sales, Profit, Quantity, Discount
               ORDER BY Sales
           ) AS rn
    FROM SampleSuperstore
)
DELETE FROM CTE WHERE rn > 1;

-- 2. Handle NULL values in numeric fields
UPDATE SampleSuperstore
SET Sales = COALESCE(Sales, 0),
    Profit = COALESCE(Profit, 0),
    Quantity = COALESCE(Quantity, 0),
    Discount = COALESCE(Discount, 0);

-- 3. Standardize data types
ALTER TABLE SampleSuperstore
ALTER COLUMN Sales DECIMAL(12,2);

ALTER TABLE SampleSuperstore
ALTER COLUMN Profit DECIMAL(12,2);

ALTER TABLE SampleSuperstore
ALTER COLUMN Discount DECIMAL(5,2);

ALTER TABLE SampleSuperstore
ALTER COLUMN Quantity INT;

-- 4. Trim text fields to remove extra spaces
UPDATE SampleSuperstore
SET City = LTRIM(RTRIM(City)),
    State = LTRIM(RTRIM(State)),
    Category = LTRIM(RTRIM(Category)),
    Sub_Category = LTRIM(RTRIM(Sub_Category)),
    Segment = LTRIM(RTRIM(Segment)),
    Region = LTRIM(RTRIM(Region));

-- 5. Add calculated Profit Margin column if not exists
IF COL_LENGTH('SampleSuperstore', 'ProfitMargin') IS NULL
BEGIN
    ALTER TABLE SampleSuperstore ADD ProfitMargin DECIMAL(10,4);
END;

UPDATE SampleSuperstore
SET ProfitMargin = CASE 
                       WHEN Sales = 0 THEN 0
                       ELSE Profit / Sales
                   END;
