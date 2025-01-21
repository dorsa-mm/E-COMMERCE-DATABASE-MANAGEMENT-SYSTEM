#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "username/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

-- This view combines information from the Customer, OrderTable, and OrderItem tables to provide details about customer orders.
CREATE VIEW CustomerOrderDetails AS
SELECT o.OrderID, o.OrderDate, o.TotalPrice, c.FirstName || ' ' || c.LastName AS CustomerName, p.ProductName, oi.Quantity, oi.Subtotal
FROM OrderTable o
JOIN Customer c ON o.CustomerID = c.CustomerID
JOIN OrderItem oi ON o.OrderID = oi.OrderID
JOIN Product p ON oi.ProductID = p.ProductID;


-- This view shows products that are popular (ordered more than once) along with the total quantity ordered.
CREATE VIEW PopularProducts AS
SELECT p.ProductID, p.ProductName, SUM(oi.Quantity) AS TotalOrdered
FROM Product p
JOIN OrderItem oi ON p.ProductID = oi.ProductID
GROUP BY p.ProductID, p.ProductName
HAVING SUM(oi.Quantity) > 1;



-- This view lists customers with active shopping carts.
CREATE VIEW ActiveShoppingCarts AS
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName, s.CreationDate, s.CreationTime
FROM Customer c
JOIN ShoppingCart s ON c.CustomerID = s.CustomerID;


-- This view identifies high-value customers based on their total spending.
CREATE VIEW HighValueCustomers AS
SELECT c.CustomerID, c.FirstName || ' ' || c.LastName AS CustomerName, SUM(o.TotalPrice) AS TotalSpending
FROM Customer c
LEFT JOIN OrderTable o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.LastName
HAVING SUM(o.TotalPrice) > 100;


-- This view identifies product categories with high total sales based on the quantity sold.
CREATE VIEW HighValueProductCategories AS
SELECT pc.CategoryID, ct.CategoryName, SUM(oi.Quantity) AS TotalQuantitySold
FROM ProductCategory pc
JOIN OrderItem oi ON pc.ProductID = oi.ProductID
JOIN CategoryTable ct ON pc.CategoryID = ct.CategoryID
GROUP BY pc.CategoryID, ct.CategoryName
HAVING SUM(oi.Quantity) > 50;

exit;
EOF
