
Error starting at line : 4 in command -
CREATE TABLE Address (
    AddressID NUMBER(5) PRIMARY KEY,
    StreetNumber VARCHAR2(10),
    StreetName VARCHAR2(100),
    City VARCHAR2(50),
    Province VARCHAR2(50),
    Country VARCHAR2(50),
    PostalCode VARCHAR2(10)
)
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Table CUSTOMER created.


Table PRODUCT created.


Table "Category" created.


Error starting at line : 43 in command -
CREATE TABLE ProductCategory (
    ProductCategoryID NUMBER(5) PRIMARY KEY,
    ProductID NUMBER(5) REFERENCES Product(ProductID),
    CategoryID NUMBER(5) REFERENCES Category(CategoryID)
)
Error report -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table CATEGORY created.


Table PRODUCTCATEGORY created.


Error starting at line : 50 in command -
CREATE TABLE Order (
    OrderID NUMBER(5) PRIMARY KEY,
    CustomerID NUMBER(5) REFERENCES Customer(CustomerID),
    AddressID NUMBER(5) REFERENCES Address(AddressID),
    OrderDate DATE NOT NULL,
    OrderTime TIMESTAMP NOT NULL,
    TotalPrice NUMBER(10, 2) NOT NULL
)
Error report -
ORA-00903: invalid table name
00903. 00000 -  "invalid table name"
*Cause:    
*Action:

Error starting at line : 154 in command -
DROP TABLE Category
Error report -
ORA-02449: unique/primary keys in table referenced by foreign keys
02449. 00000 -  "unique/primary keys in table referenced by foreign keys"
*Cause:    An attempt was made to drop a table with unique or
           primary keys referenced by foreign keys in another table.
*Action:   Before performing the above operations the table, drop the
           foreign key constraints in other tables. You can see what
           constraints are referencing a table by issuing the following
           command:
           SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = "tabnam";

Error starting at line : 154 in command -
DROP TABLE Address
Error report -
ORA-02449: unique/primary keys in table referenced by foreign keys
02449. 00000 -  "unique/primary keys in table referenced by foreign keys"
*Cause:    An attempt was made to drop a table with unique or
           primary keys referenced by foreign keys in another table.
*Action:   Before performing the above operations the table, drop the
           foreign key constraints in other tables. You can see what
           constraints are referencing a table by issuing the following
           command:
           SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME = "tabnam";

Table CUSTOMER dropped.


Table PRODUCTCATEGORY dropped.


Table ADDRESS dropped.


Error starting at line : 160 in command -

Error report -
Unknown Command


Table CATEGORY dropped.


Table PRODUCT dropped.


Error starting at line : 164 in command -
DROP TABLE CategoryTable
Error report -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Error starting at line : 160 in command -
DROP TABLE Category
Error report -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Error starting at line : 160 in command -
DROP TABLE Category
Error report -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table ADDRESS created.


Table CUSTOMER created.


Table PRODUCT created.


Table CATEGORYTABLE created.


Error starting at line : 43 in command -
CREATE TABLE ProductCategory (
    ProductCategoryID NUMBER(5) PRIMARY KEY,
    ProductID NUMBER(5) REFERENCES Product(ProductID),
    CategoryID NUMBER(5) REFERENCES Category(CategoryID)
)
Error report -
ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

Table PRODUCTCATEGORY created.


Table ORDERTABLE created.


Table ORDERITEM created.


Table SHOPPINGCART created.


Table CARTPRODUCT created.


Error starting at line : 87 in command -
INSERT INTO Customer (CustomerID, Username, Password, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (1, 'user1', 'password1', 'user1@example.com', 'John', 'Doe', '657-123-4567', 1),
    (2, 'user2', 'password2', 'user2@example.com', 'Alice', 'Smith', '987-654-3210', 2),
    (3, 'user3', 'password3', 'user3@example.com', 'Bob', 'Johnson', '555-123-4567', 3),
    (4, 'user4', 'password4', 'user4@example.com', 'Emily', 'Brown', '444-789-0123', 4),
    (5, 'user5', 'password5', 'user5@example.com', 'Grace', 'Lee', '111-222-3333', 5)
Error at Command Line : 88 Column : 88
Error report -
SQL Error: ORA-00933: SQL command not properly ended
00933. 00000 -  "SQL command not properly ended"
*Cause:    
*Action:

Error starting at line : 87 in command -
INSERT INTO Customer (CustomerID, Username, Password, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (1, 'user1', 'password1', 'user1@example.com', 'John', 'Doe', '657-123-4567', 1)
Error report -
ORA-02291: integrity constraint (MPIRATHA.SYS_C001558771) violated - parent key not found


Error starting at line : 90 in command -
INSERT INTO Customer (CustomerID, Username, Password, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (2, 'user2', 'password2', 'user2@example.com', 'Alice', 'Smith', '987-654-3210', 2)
Error report -
ORA-02291: integrity constraint (MPIRATHA.SYS_C001558771) violated - parent key not found


Error starting at line : 93 in command -
INSERT INTO Customer (CustomerID, Username, Password, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (3, 'user3', 'password3', 'user3@example.com', 'Bob', 'Johnson', '555-123-4567', 3)
Error report -
ORA-02291: integrity constraint (MPIRATHA.SYS_C001558771) violated - parent key not found


Error starting at line : 96 in command -
INSERT INTO Customer (CustomerID, Username, Password, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (4, 'user4', 'password4', 'user4@example.com', 'Emily', 'Brown', '444-789-0123', 4)
Error report -
ORA-02291: integrity constraint (MPIRATHA.SYS_C001558771) violated - parent key not found


Error starting at line : 99 in command -
INSERT INTO Customer (CustomerID, Username, Password, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (5, 'user5', 'password5', 'user5@example.com', 'Grace', 'Lee', '111-222-3333', 5)
Error report -
ORA-02291: integrity constraint (MPIRATHA.SYS_C001558771) violated - parent key not found


Error starting at line : 87 in command -
INSERT INTO Customer (CustomerID, Username, Passwd, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (1, 'user1', 'password1', 'user1@example.com', 'John', 'Doe', '657-123-4567', 1)
Error at Command Line : 87 Column : 45
Error report -
SQL Error: ORA-00904: "PASSWD": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Error starting at line : 90 in command -
INSERT INTO Customer (CustomerID, Username, Passwd, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (2, 'user2', 'password2', 'user2@example.com', 'Alice', 'Smith', '987-654-3210', 2)
Error at Command Line : 90 Column : 45
Error report -
SQL Error: ORA-00904: "PASSWD": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Error starting at line : 93 in command -
INSERT INTO Customer (CustomerID, Username, Passwd, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (3, 'user3', 'password3', 'user3@example.com', 'Bob', 'Johnson', '555-123-4567', 3)
Error at Command Line : 93 Column : 45
Error report -
SQL Error: ORA-00904: "PASSWD": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Error starting at line : 96 in command -
INSERT INTO Customer (CustomerID, Username, Passwd, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (4, 'user4', 'password4', 'user4@example.com', 'Emily', 'Brown', '444-789-0123', 4)
Error at Command Line : 96 Column : 45
Error report -
SQL Error: ORA-00904: "PASSWD": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Error starting at line : 99 in command -
INSERT INTO Customer (CustomerID, Username, Passwd, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (5, 'user5', 'password5', 'user5@example.com', 'Grace', 'Lee', '111-222-3333', 5)
Error at Command Line : 99 Column : 45
Error report -
SQL Error: ORA-00904: "PASSWD": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Error starting at line : 15 in command -
CREATE TABLE Customer (
    CustomerID NUMBER(5) PRIMARY KEY,
    Username VARCHAR2(50) NOT NULL,
    Passwd VARCHAR2(50) NOT NULL,
    Email VARCHAR2(100),
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    PhoneNumber VARCHAR2(20),
    AddressID NUMBER(5) REFERENCES Address(AddressID)
)
Error report -
ORA-00955: name is already used by an existing object
00955. 00000 -  "name is already used by an existing object"
*Cause:    
*Action:

Error starting at line : 87 in command -
INSERT INTO Customer (CustomerID, Username, Passwd, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (1, 'user1', 'password1', 'user1@example.com', 'John', 'Doe', '657-123-4567', 1)
Error at Command Line : 87 Column : 45
Error report -
SQL Error: ORA-00904: "PASSWD": invalid identifier
00904. 00000 -  "%s: invalid identifier"
*Cause:    
*Action:

Error starting at line : 87 in command -
INSERT INTO Customer (CustomerID, Username, Passwd, Email, FirstName, LastName, PhoneNumber, AddressID)
VALUES (1, 'user1', 'password1', 'user1@example.com', 'John', 'Doe', '657-123-4567', 1)
Error report -
ORA-02291: integrity constraint (MPIRATHA.SYS_C001558771) violated - parent key not found


1 row inserted.


Error starting at line : 87 in command -
INSERT INTO Address (AddressID, StreetNumber, StreetName, City, Province, Country, PostalCode)
VALUES (1, '123', 'Main St', 'Toronto', 'Ontario', 'CANADA', 'P7H0A8')
Error report -
ORA-00001: unique constraint (MPIRATHA.SYS_C001558767) violated


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


Error starting at line : 150 in command -
INSERT INTO "Category" (CategoryID, CategoryName)
VALUES (1, 'Category 1')
Error at Command Line : 150 Column : 13
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

1 row inserted.


Error starting at line : 151 in command -
INSERT INTO CategoryTable (CategoryID, CategoryName)
VALUES (1, 'Category 1')
Error report -
ORA-00001: unique constraint (MPIRATHA.SYS_C001558777) violated


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


Error starting at line : 186 in command -
INSERT INTO "Order" (OrderID, CustomerID, AddressID, OrderDate, OrderTime, TotalPrice)
VALUES (1, 1, 1, TO_DATE('2023-09-25', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 10.99)
Error at Command Line : 186 Column : 13
Error report -
SQL Error: ORA-00942: table or view does not exist
00942. 00000 -  "table or view does not exist"
*Cause:    
*Action:

1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


Error starting at line : 201 in command -
INSERT INTO OrderTable (OrderID, CustomerID, AddressID, OrderDate, OrderTime, TotalPrice)
VALUES (6, 6, 6, TO_DATE('2023-09-30', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 18.50)
Error report -
ORA-02291: integrity constraint (MPIRATHA.SYS_C001558789) violated - parent key not found


Error starting at line : 204 in command -
INSERT INTO OrderTable (OrderID, CustomerID, AddressID, OrderDate, OrderTime, TotalPrice)
VALUES (7, 7, 7, TO_DATE('2023-10-01', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 79.99)
Error report -
ORA-02291: integrity constraint (MPIRATHA.SYS_C001558789) violated - parent key not found


Error starting at line : 207 in command -
INSERT INTO OrderTable (OrderID, CustomerID, AddressID, OrderDate, OrderTime, TotalPrice)
VALUES (8, 8, 8, TO_DATE('2023-10-02', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 12.99)
Error report -
ORA-02291: integrity constraint (MPIRATHA.SYS_C001558789) violated - parent key not found


Error starting at line : 210 in command -
INSERT INTO OrderTable (OrderID, CustomerID, AddressID, OrderDate, OrderTime, TotalPrice)
VALUES (9, 9, 9, TO_DATE('2023-10-03', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 29.75)
Error report -
ORA-02291: integrity constraint (MPIRATHA.SYS_C001558789) violated - parent key not found


Error starting at line : 213 in command -
INSERT INTO OrderTable (OrderID, CustomerID, AddressID, OrderDate, OrderTime, TotalPrice)
VALUES (10, 10, 10, TO_DATE('2023-10-04', 'YYYY-MM-DD'), CURRENT_TIMESTAMP, 47.49)
Error report -
ORA-02291: integrity constraint (MPIRATHA.SYS_C001558789) violated - parent key not found


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


1 row inserted.


Table CARTPRODUCT dropped.


Table CARTPRODUCT created.


1 row inserted.


1 row inserted.


Error starting at line : 232 in command -
INSERT INTO CartProduct (CartProductID, CustomerID, ProductID, Quantity)
VALUES (2, 1, 2, 2)
Error report -
ORA-00001: unique constraint (MPIRATHA.SYS_C001560793) violated


1 row inserted.


Error starting at line : 238 in command -
INSERT INTO CartProduct (CartProductID, CustomerID, ProductID, Quantity)
VALUES (4, 5, 3, 1)
Error report -
ORA-02291: integrity constraint (MPIRATHA.SYS_C001560794) violated - parent key not found

