Easy-Level Tasks (10):
1. Top 5 employees:

SELECT TOP 5 * FROM Employees;

2. Unique Category values:

SELECT DISTINCT Category FROM Products;
3. Products with Price > 100:

SELECT * FROM Products
WHERE Price > 100;

4. Customers whose FirstName starts with 'A':

SELECT * FROM Customers
WHERE FirstName LIKE 'A%';

5. Order Products by Price ascending:

SELECT * FROM Products
ORDER BY Price ASC;

6. Employees with Salary >= 60000 and Department = 'HR':

SELECT * FROM Employees
WHERE Salary >= 60000 AND Department = 'HR';

7. Replace NULL in Email with text:

SELECT ISNULL(Email, 'noemail@example.com') AS Email, * 
FROM Employees;

8. Products with Price BETWEEN 50 AND 100:

SELECT * FROM Products
WHERE Price BETWEEN 50 AND 100;

9.️⃣ SELECT DISTINCT on two columns:

SELECT DISTINCT Category, ProductName 
FROM Products;

10. DISTINCT on two columns, ordered by ProductName DESC:

SELECT DISTINCT Category, ProductName 
FROM Products
ORDER BY ProductName DESC;

🟠 Medium-Level Tasks (10):
  
1. Top 10 products by Price DESC:

SELECT TOP 10 * FROM Products
ORDER BY Price DESC;

2.️⃣ COALESCE FirstName or LastName:

SELECT COALESCE(FirstName, LastName) AS Name, * 
FROM Employees;

3.️⃣ Distinct Category and Price:

SELECT DISTINCT Category, Price 
FROM Products;

4.️⃣ Employees with Age 30-40 or Department = 'Marketing':

SELECT * FROM Employees
WHERE (Age BETWEEN 30 AND 40) OR Department = 'Marketing';

5.️⃣ OFFSET-FETCH rows 11 to 20 (by Salary DESC):

SELECT * FROM Employees
ORDER BY Salary DESC
OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;

6.️⃣ Products with Price <= 1000 AND Stock > 50 (ordered by Stock ASC):

SELECT * FROM Products
WHERE Price <= 1000 AND Stock > 50
ORDER BY Stock ASC;

7. ProductName contains letter 'e':

SELECT * FROM Products
WHERE ProductName LIKE '%e%';

8. Employees in HR, IT, or Finance:

SELECT * FROM Employees
WHERE Department IN ('HR', 'IT', 'Finance');

9.️⃣ Customers ordered by City ASC, PostalCode DESC:

SELECT * FROM Customers
ORDER BY City ASC, PostalCode DESC;
