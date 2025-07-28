-- 1. ProductName ustunini "Name" deb o'zgartirish
SELECT ProductName AS Name FROM Products;

-- 2. Customers jadvaliga "Client" nomli alias berish
SELECT * FROM Customers AS Client;

-- 3. UNION orqali ikki jadvaldan ProductName birlashtirish
SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;

-- 4. INTERSECT orqali umumiy ProductName larni topish
SELECT ProductName FROM Products
INTERSECT
SELECT ProductName FROM Products_Discounted;

-- 5. Unikal mijoz ismlari va mamlakati
SELECT DISTINCT CustomerName, Country FROM Customers;

-- 6. CASE bilan narxga qarab "High"/"Low" ustunini yaratish
SELECT ProductName, Price,
       CASE 
           WHEN Price > 1000 THEN 'High'
           ELSE 'Low'
       END AS PriceLevel
FROM Products;

-- 7. IIF bilan StockQuantity ga qarab "Yes"/"No" ustuni
SELECT ProductName, StockQuantity,
       IIF(StockQuantity > 100, 'Yes', 'No') AS LargeStock
FROM Products_Discounted;

Medium task

-- 1. Yana UNION bilan ikki jadvaldan ProductName larni olish
SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;

-- 2. EXCEPT orqali Products jadvalidagi, lekin Products_Discounted da yo'q ProductName lar
SELECT ProductName FROM Products
EXCEPT
SELECT ProductName FROM Products_Discounted;

-- 3. IIF bilan Price asosida "Expensive"/"Affordable" ustuni
SELECT ProductName, Price,
       IIF(Price > 1000, 'Expensive', 'Affordable') AS PriceStatus
FROM Products;

-- 4. Age < 25 yoki Salary > 60000 bo‘lgan xodimlar
SELECT * FROM Employees
WHERE Age < 25 OR Salary > 60000;

-- 5. HR bo‘limidagi yoki ID=5 bo‘lgan xodimlarning maoshini 10% oshirish
UPDATE Employees
SET Salary = Salary * 1.10
WHERE Department = 'HR' OR EmployeeID = 5;
