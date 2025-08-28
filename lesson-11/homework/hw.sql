--Lesson-11

/*	Task 1

English:
Return: OrderID, CustomerName, OrderDate
Task: Show all orders placed after 2022 along with the names of the customers who placed them.
Tables Used: Orders, Customers

O‘zbekcha:
Natija: OrderID, CustomerName, OrderDate
Vazifa: 2022 yildan keyin berilgan barcha buyurtmalarni va ularni bergan mijozlarning ismlarini ko‘rsating.
Foydalaniladigan jadvallar: Orders, Customers
*/
SELECT 
    o.OrderID,
    c.FirstName,
	c.LastName,
    o.OrderDate
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE YEAR(o.OrderDate) > 2022;

/*	Task 2 
English:
Return: EmployeeName, DepartmentName
Task: Display the names of employees who work in either the Sales or Marketing department.
Tables Used: Employees, Departments

O‘zbekcha:
Natija: EmployeeName, DepartmentName
Vazifa: “Sales” yoki “Marketing” bo‘limida ishlaydigan xodimlarning ismlari va bo‘lim nomlarini ko‘rsating.
Foydalaniladigan jadvallar: Employees, Departments
*/
SELECT 
    e.Name,
    d.DepartmentName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName IN ('Sales', 'Marketing');

/*	Task 3 
English:
Return: DepartmentName, MaxSalary
Task: Show the highest salary for each department.
Tables Used: Departments, Employees

O‘zbekcha:
Natija: DepartmentName, MaxSalary
Vazifa: Har bir bo‘limdagi eng yuqori oylikni ko‘rsating.
Foydalaniladigan jadvallar: Departments, Employees
*/
SELECT 
    d.DepartmentName,
    MAX(e.Salary) AS MaxSalary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName;
	/* Task 4
English:
Return: CustomerName, OrderID, OrderDate
Task: List all customers from the USA who placed orders in the year 2023.
Tables Used: Customers, Orders

O‘zbekcha:
Natija: CustomerName, OrderID, OrderDate
Vazifa: 2023 yilda buyurtma bergan AQSh (USA) mijozlarini va buyurtmalari haqida ma’lumotni ko‘rsating.
Foydalaniladigan jadvallar: Customers, Orders
*/
SELECT 
    c.FirstName, c.LastName,
    o.OrderID,
    o.OrderDate,
	Country
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.Country = 'USA' AND YEAR(o.OrderDate) = 2023;

/*	Task 5
English:
Return: CustomerName, TotalOrders
Task: Show how many orders each customer has placed.
Tables Used: Orders, Customers

O‘zbekcha:
Natija: CustomerName, TotalOrders
Vazifa: Har bir mijoz nechta buyurtma berganini ko‘rsating.
Foydalaniladigan jadvallar: Orders, Customers
*/
SELECT 
    c.FirstName,c.LastName,
    COUNT(o.OrderID) AS TotalOrders
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName,c.LastName;

/*	Task 6
English:
Return: ProductName, SupplierName
Task: Display the names of products that are supplied by either Gadget Supplies or Clothing Mart.
Tables Used: Products, Suppliers

O‘zbekcha:
Natija: ProductName, SupplierName
Vazifa: “Gadget Supplies” yoki “Clothing Mart” tomonidan yetkazib berilgan mahsulotlarni ko‘rsating.
Foydalaniladigan jadvallar: Products, Suppliers
*/

SELECT 
    p.ProductName,
    s.SupplierName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE s.SupplierName IN ('Gadget Supplies', 'Clothing Mart');

/* Task 7
English:
Return: CustomerName, MostRecentOrderDate
Task: For each customer, show their most recent order. Include customers who haven't placed any orders.
Tables Used: Customers, Orders

O‘zbekcha:
Natija: CustomerName, MostRecentOrderDate
Vazifa: Har bir mijozning eng oxirgi buyurtma sanasini ko‘rsating. Buyurtma qilmagan mijozlar ham chiqishi kerak.
Foydalaniladigan jadvallar: Customers, Orders
*/

SELECT 
    c.FirstName, c.LastName,
    MAX(o.OrderDate) AS MostRecentOrderDate
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName;

		-- Medium
		--Task 1 
SELECT 
    C.FirstName,
	c.LastName,
    O.TotalAmount
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
WHERE O.TotalAmount > 500;

--		Task 2
SELECT 
    P.ProductName, 
    S.SaleDate, 
    S.SaleAmount
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
WHERE YEAR(S.SaleDate) = 2022 OR S.SaleAmount > 400;

--	Task 3
SELECT 
    P.ProductName, 
    SUM(S.SaleAmount) AS TotalSalesAmount
FROM Products P
LEFT JOIN Sales S ON P.ProductID = S.ProductID
GROUP BY P.ProductName;

--	Task 4 
SELECT 
    E.Name, 
    D.DepartmentName, 
    E.Salary
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'HR' AND E.Salary > 60000;

--	Task 5
SELECT 
    P.ProductName, 
    S.SaleDate, 
    P.StockQuantity
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
WHERE YEAR(S.SaleDate) = 2023 
  AND P.StockQuantity > 100;

  --	Task 6
  SELECT 
    E.Name, 
    D.DepartmentName, 
    E.HireDate
FROM Employees E
JOIN Departments D ON E.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Sales' OR YEAR(E.HireDate) > 2020;


