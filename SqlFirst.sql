CREATE DATABASE Company

CREATE TABLE Employees(
	[Name] NVARCHAR(255),
	[Surname] NVARCHAR(255),
	[Position] NVARCHAR(255),
	[Salary] DOUBLE PRECISION
);

INSERT INTO Employees
	VALUES('Merahim', 'Imameliyev', 'Developer', 150.50),
	('Xasay', 'Mammadov', 'Designer', 5400),
	('Anar', 'Balacayev', 'Satici', 1),
	('Sadiqxan', 'Gaykhanov', 'Game Developer', 10000)

/* Ortalama Maas */ 
SELECT AVG(Salary) FROM Employees

/* Ortalama maasdan cox alanlar */

SELECT [Name], [Surname], [Salary] FROM Employees WHERE Salary > (SELECT AVG(E.Salary) FROM Employees E)


/* Max ve Min */

SELECT MAX(Salary), MIN(Salary) FROM Employees

CREATE DATABASE Market

CREATE TABLE Products(
	[Id] INT NOT NULL,
	[Name] NVARCHAR(255),
	[Price] DOUBLE PRECISION
);

ALTER TABLE Products
ADD Brand NVARCHAR(255)



INSERT INTO Products
	VALUES(1, 'Cipsi', 39, 'Lays'),
	(2, 'Semicka', 22, 'Ciko'),
	(3, 'Paltaryuyan', 12, 'Beko'),
	(4, 'Icki', 99, 'Kola'),
	(5, 'Sumka', 42, 'Northface'),
	(6, 'Ayaqqabi', 222, 'Zara'),
	(7, 'T-Shirt', 92, 'Koton'),
	(8, 'Kostyum', 24, 'LC Shaikik'),
	(9, 'Corey', 28, 'Nenemin Tendiri'),
	(10, 'Mismar', 54, '1001 Xirdavat'),
	(11, 'Nasqi', 82, 'Vasmoyun Bazari')

/* Priclari 10dan boyuk */
SELECT * FROM Products WHERE Price > 10


/* Price AVG-dan kicik olanlar */
SELECT * FROM Products WHERE Price < (SELECT AVG(P.Price) FROM Products P)


/* Brand uzunlugu 5den cox olanlar */
SELECT P.Name + ' ' + P.Brand FROM Products P WHERE LEN(P.Brand) > 5