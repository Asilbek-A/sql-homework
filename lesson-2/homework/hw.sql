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

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);select * from Departments

DELETE FROM Employees;

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

После DROP таблицы её больше нет в базе данных
