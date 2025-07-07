1. /*
BULK INSERT ta’rifi va maqsadi
BULK INSERT bu SQL Server buyruği bo‘lib,
-tashqi fayldagi (odatda text yoki CSV) katta hajmdagi ma'lumotlarni 
jadvalga tez va samarali yuklash uchun ishlatiladi.
BULK INSERT uchun misol:
BULK INSERT Products
FROM 'C:\Data\products.csv'
WITH
(
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);
*/
*/
2.   /*
	CSV (Comma Separated Values)
    TXT (Plain text)
    XML
    JSON
	*/

	CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

	INSERT INTO Products (ProductID, ProductName, Price)
	VALUES (1, 'Laptop', 1200.00),
           (2, 'Mouse', 25.50),
           (3, 'Keyboard', 45.99);


		   NULL	

Maydon qiymati bo‘sh bo‘lishi mumkin 
(qiymat belgilanmagan)	Maydon doimo qiymatga ega bo‘lishi shart

		NOT NULL
Ma’lumot kiritilmasa, SQL Server bu maydonni bo‘sh deb qabul qiladi	
Ma’lumot kiritilmasa, xatolik yuz beradi

ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);

SELECT * FROM Products;

ALTER TABLE Products
ADD CategoryID INT;

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50) UNIQUE,);

	SELECT * FROM Categories

  ProductID INT IDENTITY(1,1) PRIMARY KEY

  BULK INSERT Products
FROM 'C:\employees_'
WITH
(
    FIELDTERMINATOR = ',',   
    ROWTERMINATOR = '\n',
    FIRSTROW = 2             
);

ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);

--PRIMARY KEY — jadvalning asosiy kaliti, har bir yozuvni noyob aniqlaydi.
--UNIQUE KEY — faqat noyoblikni ta’minlaydi, lekin asosiy kalit vazifasini bajarmaydi.

ALTER TABLE Products
ADD CONSTRAINT CHK_Price_Positive
CHECK (Price > 0);

ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0;

SELECT ProductID, ProductName, ISNULL(Price, 0) AS Price, Stock
FROM Products;

FOREIGN KEY constraint maqsadi va ishlatilishi
➡ Maqsadi:
 /*FOREIGN KEY bir jadvaldagi ustunni (yoki ustunlarni) boshqa jadvaldagi ustun(lar) bilan bog'laydi. 
Bu referensial yaxlitlikni ta’minlaydi — ya’ni, bolaning (child) qiymati har doim ota (parent) jadvaldagi qiymatga mos bo'lishi shart.

   Ishlatilishi:

Jadval o'rtasida bog'lanishlarni o'rnatish (masalan, Products va Categories o'rtasida).

Ma'lumotlar bir-biriga mos bo'lishini tekshirish.

O'chirish yoki yangilashda cheklov qo‘yish (masalan, parent jadvaldagi yozuvni o‘chirishda child yozuvlar avtomatik o‘chirilmasin).
 */

 --sql

ALTER TABLE Products
ADD FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);
