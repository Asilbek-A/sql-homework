create database Employess
CREATE TABLE Employees (EmpID INT,[Name] VARCHAR(50),Salary DECIMAL(10,2));
	INSERT INTO Employees (EmpID, [Name], Salary) VALUES
(1, 'Anvar',   1000000),
(2, 'Sardor', 1250000),
(3, 'Otabek', 1750000),
(4, 'Asilbek', 2500000)

update Employees 
set Salary = 7000
where EmpID = 1

DELETE FROM Employees 
WHERE EmpID = 2;

ALTER TABLE Employees 
ALTER COLUMN Name VARCHAR(100);

ALTER TABLE Employees 
ADD Department VARCHAR(50);

ALTER TABLE Employees 
ALTER COLUMN Salary FLOAT;


select * from Employees

Разница между DELETE, TRUNCATE и DROP:
	 DELETE

Удаляет данные из таблицы построчно (с условием WHERE или все строки).

Можно использовать WHERE для выборочного удаления.

Можно откатить (ROLLBACK), если используется в транзакции.

	TRUNCATE

Быстро удаляет все строки из таблицы.

Нельзя использовать WHERE.

Обычно нельзя откатить (зависит от СУБД).

Считается более «жестким» и быстрым, чем DELETE для всех строк.

	DROP

Полностью удаляет таблицу (и её структуру).

После DROP таблицы её больше нет в базе данных.


	CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50))
	INSERT INTO Departments (DepartmentID, DepartmentName, Salary) values
 (1, 'IT', 12500000),
 (2, 'HR', 14000000),
 (3, 'Finance',11000000 ),
 (4, 'Logistics', 10000000 ),
 (5, 'Marketing', 10500000 );

	UPDATE Employees
	SET Department = 'Management'
	WHERE Salary > 5000;

	ALTER TABLE Employees
	DROP COLUMN Department;
	EXEC sp_rename 'Employees', 'StaffMembers';

);	DROP TABLE Departments;

	select * from Departments
