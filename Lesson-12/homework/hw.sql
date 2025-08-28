--Lesson 12
--Task 1
SELECT 
    p.firstName, 
    p.lastName, 
    a.city, 
    a.state
FROM Person p
LEFT JOIN Address a ON p.personId = a.personId;

-- Task 2
SELECT 
    e.name AS Employee
FROM Employee e
JOIN Employee m ON e.managerId = m.id
WHERE e.salary > m.salary;

-- Task 3
SELECT 
    email AS Email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;

-- Task 4
DELETE FROM Person
WHERE id NOT IN (
    SELECT MIN(id)
    FROM Person
    GROUP BY email
);

--Task 5 
SELECT DISTINCT g.ParentName
FROM girls g
WHERE g.ParentName NOT IN (
    SELECT b.ParentName FROM boys b
);
-- Task 6 
SELECT 
    custid,
    SUM(salesamount) AS TotalSalesOver50,
    MIN(orderqty) AS LeastWeight
FROM Sales.Orders
WHERE orderqty > 50
GROUP BY custid;

--	Task 7 
SELECT 
    c.CustomerName,
    MAX(o.OrderDate) AS MostRecentOrderDate
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;

--	task 8
SELECT 
    c.name AS Customers
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.id IS NULL;

--	task 9
SELECT 
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e 
    ON s.student_id = e.student_id 
   AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;
