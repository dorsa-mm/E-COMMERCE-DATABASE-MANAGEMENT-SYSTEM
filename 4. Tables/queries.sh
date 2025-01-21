#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "username/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF



-- List the Unique First Name of all the customers
SELECT DISTINCT FirstName FROM Customer;



-- List the Order ID and Total Price of all orders sorted by Order
-- Date in ascending order (Earliest to Latest).
SELECT OrderID, TotalPrice FROM OrderTable
ORDER BY OrderDate;


-- List the names of products that are popular (customers got more than one of)
SELECT  productname
FROM    product, cartproduct
Where   quantity > 1 
        AND cartproduct.productid=product.productid;



-- List all product ID's that are within the Clothing category
SELECT  productid
FROM    productcategory
WHERE   categoryid='1';

-- Count the number of products in each category.
SELECT CategoryName, COUNT(ProductCategoryID) AS NumberOfProducts
FROM CategoryTable
LEFT JOIN ProductCategory ON CategoryTable.CategoryID = ProductCategory.CategoryID
GROUP BY CategoryName;

-- List all customer id and name who have placed an order and or have an
-- active shopping cart
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName, 
'Order' AS ActivityType
FROM Customer c
WHERE EXISTS (SELECT 1 FROM OrderTable o WHERE o.CustomerID = c.CustomerID)
UNION
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName, 'Shopping Cart' AS ActivityType
FROM Customer c
WHERE EXISTS (SELECT 1 FROM CartProduct cp WHERE cp.CustomerID = c.CustomerID);


-- List all customers who placed an order but do not have products in their cart.
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName
FROM Customer c
WHERE EXISTS (SELECT 1 FROM OrderTable o WHERE o.CustomerID = c.CustomerID)
MINUS
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName
FROM Customer c
WHERE EXISTS (SELECT 1 FROM CartProduct cp WHERE cp.CustomerID = c.CustomerID);


-- List the products along with their quantities in the shopping cart of a specific customer. 
-- In this query, we used tablesm aliases cp and p for a more advanced looking query
SELECT cp.CustomerID, p.ProductName, cp.Quantity
FROM CartProduct cp
JOIN Product p ON cp.ProductID = p.ProductID
WHERE cp.CustomerID = 1;

-- List customers who made orders and their respective cities:
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName, a.City
FROM Customer c
JOIN Address a ON c.AddressID = a.AddressID
WHERE c.CustomerID IN (SELECT DISTINCT CustomerID FROM OrderTable);

-- List products and their categories:
SELECT p.ProductName, ct.CategoryName
FROM Product p
JOIN ProductCategory pc ON p.ProductID = pc.ProductID
JOIN CategoryTable ct ON pc.CategoryID = ct.CategoryID;

-- List customers and their total spending:
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName, SUM(o.TotalPrice) AS TotalSpending
FROM Customer c
LEFT JOIN OrderTable o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName;

-- List customers who have both placed orders and added products to their shopping cart:
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName
FROM Customer c
WHERE EXISTS (SELECT 1 FROM OrderTable o WHERE o.CustomerID = c.CustomerID)
AND EXISTS (SELECT 1 FROM CartProduct cp WHERE cp.CustomerID = c.CustomerID);


--This query joins the OrderTable, Customer, and Address tables and orders the results by the order date in descending order.
SELECT o.OrderID, o.OrderDate, o.TotalPrice, c.FirstName || ' ' || c.LastName AS CustomerName, a.City, a.Province, a.Country
FROM OrderTable o
JOIN Customer c ON o.CustomerID = c.CustomerID
JOIN Address a ON o.AddressID = a.AddressID
ORDER BY o.OrderDate DESC;


-- List Cities Where Customers Have Spent More Than $30 in Total
SELECT a.City, SUM(o.TotalPrice) AS TotalSpending
FROM Customer c
JOIN OrderTable o ON c.CustomerID = o.CustomerID
JOIN Address a ON c.AddressID = a.AddressID
GROUP BY a.City
HAVING SUM(o.TotalPrice) > 30;

exit;
EOF