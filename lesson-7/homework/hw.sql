-- 1. Find MIN price from Products
SELECT MIN(Price) AS MinPrice FROM Products;

-- 2. Find MAX Salary from Employees
SELECT MAX(Salary) AS MaxSalary FROM Employees;

-- 3. Count number of rows in Customers
SELECT COUNT(*) AS TotalCustomers FROM Customers;

-- 4. Count unique product categories in Products
SELECT COUNT(DISTINCT Category) AS UniqueCategories FROM Products;

-- 5. Total sales amount for ProductID = 7 in Sales
SELECT SUM(Amount) AS TotalSales FROM Sales WHERE ProductID = 7;

-- 6. Average age of employees in Employees
SELECT AVG(Age) AS AverageAge FROM Employees;

-- 7. Count employees in each department
SELECT DeptID, COUNT(*) AS EmployeeCount FROM Employees GROUP BY DeptID;

-- 8. Min and Max price grouped by Category in Products
SELECT Category, MIN(Price) AS MinPrice, MAX(Price) AS MaxPrice FROM Products GROUP BY Category;

-- 9. Total sales per Customer in Sales
SELECT CustomerID, SUM(Amount) AS TotalSales FROM Sales GROUP BY CustomerID;

-- 10. Departments with more than 5 employees
SELECT DeptID, COUNT(*) AS EmployeeCount FROM Employees GROUP BY DeptID HAVING COUNT(*) > 5;

 Medium

-- 1. Total and average sales per product category
SELECT Category, SUM(Amount) AS TotalSales, AVG(Amount) AS AverageSales FROM Sales GROUP BY Category;

-- 2. Count employees from HR department
SELECT COUNT(*) AS HREmployees FROM Employees WHERE Department = 'HR';

-- 3. Highest and lowest salary by department
SELECT DeptID, MAX(Salary) AS MaxSalary, MIN(Salary) AS MinSalary FROM Employees GROUP BY DeptID;

-- 4. Average salary per Department
SELECT DeptID, AVG(Salary) AS AvgSalary FROM Employees GROUP BY DeptID;

-- 5. AVG salary and employee count per department
SELECT DeptID, AVG(Salary) AS AvgSalary, COUNT(*) AS EmployeeCount FROM Employees GROUP BY DeptID;

-- 6. Product categories with average price > 400
SELECT Category, AVG(Price) AS AvgPrice FROM Products GROUP BY Category HAVING AVG(Price) > 400;

-- 7. Total sales per year
SELECT YEAR(SaleDate) AS SaleYear, SUM(Amount) AS TotalSales FROM Sales GROUP BY YEAR(SaleDate);

-- 8. Customers who placed at least 3 orders
SELECT CustomerID, COUNT(*) AS OrderCount FROM Sales GROUP BY CustomerID HAVING COUNT(*) >= 3;

-- 9. Departments with AVG salary > 60000
SELECT DeptID, AVG(Salary) AS AvgSalary FROM Employees GROUP BY DeptID HAVING AVG(Salary) > 60000;

