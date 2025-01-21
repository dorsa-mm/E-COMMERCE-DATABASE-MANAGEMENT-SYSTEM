#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "username/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.cs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF

-- Address table
CREATE TABLE Address (
    AddressID NUMBER(5) PRIMARY KEY,
    StreetNumber VARCHAR2(10),
    StreetName VARCHAR2(100),
    City VARCHAR2(50),
    Province VARCHAR2(50),
    Country VARCHAR2(50),
    PostalCode VARCHAR2(10)
);

-- Customer table
CREATE TABLE Customer (
    CustomerID NUMBER(5) PRIMARY KEY,
    Username VARCHAR2(50) NOT NULL,
    Passwd VARCHAR2(50) NOT NULL,
    Email VARCHAR2(100),
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    PhoneNumber VARCHAR2(20),
    AddressID NUMBER(5) REFERENCES Address(AddressID)
);

-- Product table
CREATE TABLE Product (
    ProductID NUMBER(5) PRIMARY KEY,
    ProductName VARCHAR2(100) NOT NULL,
    ProductDesc VARCHAR2(1000),
    Price NUMBER(10, 2) NOT NULL,
    Stock NUMBER(5) NOT NULL,
    ImageURL VARCHAR2(255)
);

-- Category table
CREATE TABLE CategoryTable (
    CategoryID NUMBER(5) PRIMARY KEY,
    CategoryName VARCHAR2(100) NOT NULL
);

-- ProductCategory table
CREATE TABLE ProductCategory (
    ProductCategoryID NUMBER(5) PRIMARY KEY,
    ProductID NUMBER(5) REFERENCES Product(ProductID),
    CategoryID NUMBER(5) REFERENCES CategoryTable(CategoryID)
);

-- Order table
CREATE TABLE OrderTable (
    OrderID NUMBER(5) PRIMARY KEY,
    CustomerID NUMBER(5) REFERENCES Customer(CustomerID),
    AddressID NUMBER(5) REFERENCES Address(AddressID),
    OrderDate DATE NOT NULL,
    OrderTime TIMESTAMP NOT NULL,
    TotalPrice NUMBER(10, 2) NOT NULL
);

-- OrderItem table
CREATE TABLE OrderItem (
    OrderItemID NUMBER(5) PRIMARY KEY,
    OrderID NUMBER(5) REFERENCES OrderTable(OrderID),
    ProductID NUMBER(5) REFERENCES Product(ProductID),
    Quantity NUMBER(5) NOT NULL,
    Subtotal NUMBER(10, 2) NOT NULL
);

-- Create the ShoppingCart table
CREATE TABLE ShoppingCart (
    CustomerID NUMBER(5) PRIMARY KEY,
    CreationDate DATE NOT NULL,
    CreationTime TIMESTAMP NOT NULL
);

-- CartProduct table
CREATE TABLE CartProduct (
    CartProductID NUMBER(5) PRIMARY KEY,
    CustomerID NUMBER(5) REFERENCES ShoppingCart(CustomerID),
    ProductID NUMBER(5) REFERENCES Product(ProductID),
    Quantity NUMBER(5) NOT NULL
);

exit;
EOF