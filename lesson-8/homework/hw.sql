-- 1. Total number of products in each category
SELECT Category, COUNT(*) AS ProductCount FROM Products GROUP BY Category;

-- 2. Average price in 'Electronics' category
SELECT AVG(Price) AS AvgPrice FROM Products WHERE Category = 'Electronics';

-- 3. Customers from cities starting with 'L'
SELECT * FROM Customers WHERE City LIKE 'L%';

-- 4. Products ending with 'er'
SELECT ProductName FROM Products WHERE ProductName LIKE '%er';

-- 5. Customers from countries ending with 'A'
SELECT * FROM Customers WHERE Country LIKE '%A';

-- 6. Highest price among all products
SELECT MAX(Price) AS MaxPrice FROM Products;

-- 7. Label stock as 'Low Stock' or 'Sufficient'
SELECT ProductName,
       Quantity,
       CASE WHEN Quantity < 30 THEN 'Low Stock' ELSE 'Sufficient' END AS StockLabel
FROM Products;

-- 8. Total number of customers in each country
SELECT Country, COUNT(*) AS CustomerCount FROM Customers GROUP BY Country;

-- 9. Min and max quantity in Orders
SELECT MIN(Quantity) AS MinQty, MAX(Quantity) AS MaxQty FROM Orders;

MEDIUM

-- 1. Customer IDs who ordered in Jan 2023 but had no invoices
SELECT DISTINCT O.CustomerID
FROM Orders O
LEFT JOIN Invoices I ON O.OrderID = I.OrderID
WHERE OrderDate BETWEEN '2023-01-01' AND '2023-01-31'
AND I.InvoiceID IS NULL;

-- 2. Combine all product names (with duplicates)
SELECT ProductName FROM Products
UNION ALL
SELECT ProductName FROM Products_Discounted;

-- 3. Combine all product names (without duplicates)
SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;

-- 4. Average order amount by year
SELECT YEAR(OrderDate) AS OrderYear, AVG(Amount) AS AvgAmount
FROM Orders
GROUP BY YEAR(OrderDate);

-- 5. Group products by price range
SELECT ProductName,
       CASE
           WHEN Price < 100 THEN 'Low'
           WHEN Price BETWEEN 100 AND 500 THEN 'Mid'
           ELSE 'High'
       END AS PriceGroup
FROM Products;

-- 6. Pivot by Year → Population_Each_Year table
SELECT City, [2012], [2013]
INTO Population_Each_Year
FROM (
    SELECT City, Year, Population FROM City_Population
) AS SourceTable
PIVOT (
    SUM(Population) FOR Year IN ([2012], [2013])
) AS PivotTable;

-- 7. Total sales per ProductID
SELECT ProductID, SUM(Amount) AS TotalSales
FROM Sales
GROUP BY ProductID;

-- 8. Products with 'oo' in the name
SELECT ProductName FROM Products WHERE ProductName LIKE '%oo%';

-- 9. Pivot by City → Population_Each_City table
SELECT Year, [Bektemir], [Chilonzor], [Yakkasaroy]
INTO Population_Each_City
FROM (
    SELECT Year, City, Population FROM City_Population
) AS SourceTable
PIVOT (
    SUM(Population) FOR City IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS PivotTable;
