/**************************************************************************

	Lab02.sql
	
	BD del Lab01 (https://dbfiddle.uk/)
		- Probado en SQL Server
		- Probado en Postgre		

**************************************************************************/

-- Inner Join
SELECT *
FROM Customers INNER JOIN Invoices ON Customers.ID = Invoices.Customer

-- Full join
SELECT *
FROM Customers FULL JOIN Invoices ON Customers.ID = Invoices.Customer

-- Left join
SELECT *
FROM Customers LEFT JOIN Invoices ON Customers.ID = Invoices.Customer
	
-- Right join
SELECT *
FROM Customers RIGHT JOIN Invoices ON Customers.ID = Invoices.Customer

-- Exclusive left join
SELECT *
FROM Customers LEFT JOIN Invoices ON Customers.ID = Invoices.Customer
WHERE Invoices.Customer IS NULL

-- Exclusive right join
SELECT *
FROM Customers RIGHT JOIN Invoices ON Customers.ID = Invoices.Customer
WHERE Customers.ID IS NULL

-- Exclusive full join
SELECT *
FROM Customers FULL JOIN Invoices ON Customers.ID = Invoices.Customer
WHERE Customers.ID IS NULL OR Invoices.Customer IS NULL

-- Cross join
SELECT *
FROM Customers CROSS JOIN Invoices