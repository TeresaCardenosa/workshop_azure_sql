/**************************************************************************

	Lab03.sql
	
	BD del Lab01 (https://dbfiddle.uk/)
		- Probado en SQL Server	

**************************************************************************/

-- qué productos ha comprado cada cliente
SELECT c.FirstName + ' ' + c.LastName AS [Customer Fullname], p.Name AS [Product Name]
FROM SalesLT.Customer AS c
    INNER JOIN SalesLT.SalesOrderHeader AS soh ON c.CustomerID = soh.CustomerID
    INNER JOIN SalesLT.SalesOrderDetail AS shd ON soh.SalesOrderID = shd.SalesOrderID
    INNER JOIN SalesLT.Product AS p ON shd.ProductID = p.ProductID
ORDER BY [Customer Fullname], [Product Name]

-- Descripción de productos en árabe
SELECT  pm.Name AS 'Product Model', pd.[Description]
FROM SalesLT.ProductModel AS pm    
    INNER JOIN SalesLT.ProductModelProductDescription AS pmpd ON pm.ProductModelID = pmpd.ProductModelID
    INNER JOIN SalesLT.ProductDescription AS pd on PD.ProductDescriptionID = pmpd.ProductDescriptionID
    INNER JOIN SalesLT.Product AS p ON p.ProductModelID = pm.ProductModelID
WHERE pmpd.Culture = 'ar' AND p.ProductID = 710;

-- Primero hay que hablar con negocio para definir correctamente qué es una venta: ¿un conteo? ¿nº de unidades vendidas? 
SELECT   p.name
	, COUNT(*) AS 'Total Orders' -- en este caso es un simple conteo de los registros
FROM SalesLT.Product AS p
    INNER JOIN SalesLT.SalesOrderDetail AS sod ON p.ProductID = sod.ProductID
GROUP BY  p.Name
ORDER BY 'Total Orders' DESC