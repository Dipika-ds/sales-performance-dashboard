-- ============================================
-- Verification Script for SampleSuperstore
-- ============================================

-- 1. Total rows after cleaning
SELECT COUNT(*) AS TotalRows
FROM SampleSuperstore;

-- 2. Check for NULL values in Sales
SELECT COUNT(*) AS NullSales
FROM SampleSuperstore
WHERE Sales IS NULL;

-- 3. Average Profit Margin
SELECT AVG(ProfitMargin) AS AvgMargin
FROM SampleSuperstore;

-- 4. Check duplicates again (should return 0 rows)
SELECT Segment, City, State, Category, Sub_Category, Sales, Profit, Quantity, Discount, COUNT(*) AS DuplicateCount
FROM SampleSuperstore
GROUP BY Segment, City, State, Category, Sub_Category, Sales, Profit, Quantity, Discount
HAVING COUNT(*) > 1;

-- 5. Preview cleaned data
SELECT TOP 10 *
FROM SampleSuperstore;
