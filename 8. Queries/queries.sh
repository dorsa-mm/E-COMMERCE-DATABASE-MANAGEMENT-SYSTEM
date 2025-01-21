#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "username/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

-- List all attributes of all products
SELECT * FROM Product;

-- List Product Name and their Price for all products
SELECT 'The Product: ', ProductName, ' costs ', Price
FROM Product;

-- List the Unique First Name of all the customers
SELECT DISTINCT FirstName FROM Customer;

-- List all attributes of products that costs more than $100.0 or 
-- have more than 200 items in stock.
SELECT * FROM Product
WHERE Price > 100.0 OR Stock > 200;

-- List all the Subtotal of each product purchased by Customer1.
SELECT Subtotal AS Purchases_by_Customer1 FROM OrderItem 
WHERE OrderID = 1;

-- List the Order ID and Total Price of all orders sorted by Order
-- Date in ascending order (Earliest to Latest).
SELECT OrderID, TotalPrice FROM OrderTable
ORDER BY OrderDate;


-- List the username and password of customer with an id greater than 3
SELECT  username, passwd
FROM    customer
WHERE   customerid>3;

-- List the names of products that are popular (customers got more than one of)
SELECT  productname
FROM    product, cartproduct
Where   quantity > 1 
        AND cartproduct.productid=product.productid;

-- List the customer id of customers that have spent less than $25 on their order
SELECT  'Customer ID is: ', customerid
FROM    ordertable
WHERE   totalprice < 25;

-- List the order IDs for orders that spent more than $50
SELECT  orderid
FROM    orderitem
WHERE   subtotal>50;

-- List information of customers with an active shopping cart
SELECT  c.* 
FROM    customer c, shoppingcart s
WHERE   c.customerid=s.customerid;


-- List all product ID's that are within the Clothing category
SELECT  productid
FROM    productcategory
WHERE   categoryid='1';

-- List the category ID for the food category
SELECT  categoryid
FROM    categorytable
WHERE   categoryname="food";

-- Count the number of products in each category.
SELECT CategoryName, COUNT(ProductCategoryID) AS NumberOfProducts
FROM CategoryTable
LEFT JOIN ProductCategory ON CategoryTable.CategoryID = ProductCategory.CategoryID
GROUP BY CategoryName;

-- List the total number of products in each shopping cart.
SELECT CustomerID, COUNT(ProductID) AS TotalProductsInCart
FROM ShoppingCart
LEFT JOIN CartProduct ON ShoppingCart.CustomerID = CartProduct.CustomerID
GROUP BY CustomerID;

-- List the products along with their quantities in the shopping cart of a specific customer. 
-- In this query, we used tablesm aliases cp and p for a more advanced looking query
SELECT cp.CustomerID, p.ProductName, cp.Quantity
FROM CartProduct cp
JOIN Product p ON cp.ProductID = p.ProductID
WHERE cp.CustomerID = 1;


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

exit;
EOF
