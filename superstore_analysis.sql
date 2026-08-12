/* ============================================================
   Super Sales Performance Dashboard | SQL Analysis
   Table: dbo.superstore
   ============================================================ */

-- Preview the raw/cleaned data
SELECT TOP 10 * FROM dbo.superstore;

-- Data Cleaning: check for duplicate order/product line items
SELECT Order_ID, Product_ID, COUNT(*) AS DuplicateCount
FROM dbo.superstore
GROUP BY Order_ID, Product_ID
HAVING COUNT(*) > 1;

-- Analysis: total sales by region
SELECT Region, SUM(CAST(Sales AS FLOAT)) AS TotalSales
FROM dbo.superstore
GROUP BY Region
ORDER BY TotalSales DESC;

-- Analysis: total sales by customer segment
SELECT Segment, SUM(CAST(Sales AS FLOAT)) AS TotalSales
FROM dbo.superstore
GROUP BY Segment
ORDER BY TotalSales DESC;

-- Analysis: total sales by category
SELECT Category, SUM(CAST(Sales AS FLOAT)) AS TotalSales
FROM dbo.superstore
GROUP BY Category
ORDER BY TotalSales DESC;
