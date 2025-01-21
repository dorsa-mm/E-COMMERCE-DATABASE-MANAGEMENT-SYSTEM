#!/bin/sh
#export LD_LIBRARY_PATH=/usr/lib/oracle/12.1/client64/lib
sqlplus64 "username/password@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))" <<EOF
-- Drop first
DROP TABLE CartProduct;
DROP TABLE ProductCategory;
DROP TABLE ShoppingCart;
DROP TABLE OrderItem;

-- Later Drop these in Order
DROP TABLE OrderTable;
DROP TABLE CategoryTable;
DROP TABLE Product;
DROP TABLE Customer;
DROP TABLE Address;
DROP TABLE CountryTable;
DROP TABLE ProvinceTable;
exit;
EOF