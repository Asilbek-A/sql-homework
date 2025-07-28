1. Quyidagi tushunchalarni tariflang:
 Ma’lumot (Data)
Ma’lumot – bu kontekstsiz (ya’ni tushuntirilmagan) raqamlar, matnlar yoki sanalar kabi xom (xomaki) faktlar va ko‘rsatkichlar. Masalan: 100, "Ali", 2025-07-24.

Ma’lumotlar bazasi (Database)
Ma’lumotlar bazasi – bu tartibga solingan va tizimlashtirilgan ma’lumotlar to‘plami bo‘lib, ularni saqlash, izlash, yangilash va boshqarish imkonini beradi.

Relatsion ma’lumotlar bazasi (Relational Database)
Relatsion ma’lumotlar bazasi – bu ma’lumotlarni jadval ko‘rinishida saqlaydigan bazadir. Har bir jadvalda qator (record) va ustun (field) mavjud bo‘ladi. Jadval orasidagi bog‘lanishlar asosiy kalit (primary key) va tashqi kalit (foreign key) orqali amalga oshiriladi.

Jadval (Table)
Jadval – bu ma’lumotlar bazasidagi asosiy struktura bo‘lib, qatorlar (yani yozuvlar) va ustunlardan (maydonlar) tashkil topgan. Har bir qator – bu biror ma’lumot yozuvi, har bir ustun esa o‘sha yozuvga tegishli xususiyatdir.

2. SQL Server’ning 5 ta asosiy xususiyati:
 Relatsion ishlovchi mexanizm – SQL orqali so‘rovlar, tranzaksiyalar, indekslar bilan ishlash imkonini beradi.

 Yuqori ishonchlilik (High Availability) – Avtomatik avariyadan tiklanish, failover klasterlar, AlwaysOn texnologiyalari mavjud.

 Xavfsizlik (Security) – Foydalanuvchi rollari, parol himoyasi, ma’lumotlarni shifrlash (TDE).

 Integratsiya imkoniyatlari – SSIS (import/export), SSRS (hisobotlar), SSAS (analiz) kabi xizmatlar orqali.

 Kengayuvchanlik va Tezlik (Scalability & Performance) – Katta hajmdagi ma’lumotlar bilan samarali ishlay oladi, keshlar, indekslar, xotira ichidagi jadvallar bilan optimallashtirish.

3. SQL Server’da mavjud avtorizatsiya (autentifikatsiya) turlari:
 Windows autentifikatsiyasi

Foydalanuvchining Windows tizimidagi login/parolidan foydalanadi.

Active Directory bilan integratsiyalashgan.

Korporativ muhitda xavfsizroq va oson boshqariladi.

SQL Server autentifikatsiyasi

SQL Server’ning o‘ziga xos login va paroli bo‘ladi.

Windows tizimidan mustaqil ravishda kirish mumkin.

Platformalararo foydalanishda qulay.

2.

1.
	create database SchoolDB 
	2.
	create table Students (StudentID INT, Ism VARCHAR(50), Age INT)

	insert into Students values (413, 'Asilbek', 23),(521, 'Aziz', 26)

select * from Students

	3. SQL Server, SSMS va SQL o‘rtasidagi farqlar:
Texnologiya	Ta’rifi
SQL Server	Bu — Microsoft kompaniyasi tomonidan yaratilgan ma’lumotlar bazasi boshqaruv tizimi (DBMS). U katta hajmdagi ma’lumotlarni saqlash, boshqarish va so‘rovlar qilish imkonini beradi.
SSMS (SQL Server Management Studio)	Bu — SQL Server bilan ishlash uchun grafik interfeysga ega dastur. Unda so‘rov yozish, jadval yaratish, ma’lumotlar ko‘rish, hisobotlar chiqarish oson.
SQL (Structured Query Language)	Bu — ma’lumotlar bazasi bilan ishlash uchun yaratilgan so‘rovlar tili. Masalan: SELECT, INSERT, UPDATE, DELETE. SQL Server ham aynan shu tildan foydalanadi. 

| Tushuncha      | Turi           | Vazifasi                                       |
| -------------- | -------------- | ---------------------------------------------- |
| **SQL Server** | Dastur (DBMS)  | Ma'lumotlar bazalarini boshqaradi, saqlaydi    |
| **SSMS**       | Dastur (GUI)   | SQL Server bilan qulay ishlash uchun interfeys |
| **SQL**        | Til (language) | So‘rovlar yozish va DBMS bilan muloqot qilish  |
