CREATE TABLE Inventory (
    Inventory_ID NUMBER(10) PRIMARY KEY,
    Product_ID NUMBER(10) NOT NULL,
    Supplier_ID NUMBER(10) NOT NULL,
    Stock_Quantity NUMBER(10) NOT NULL,
    Stock_Status VARCHAR2(20) NOT NULL,
    Last_Updated DATE NOT NULL,
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID),
    FOREIGN KEY (Supplier_ID) REFERENCES Supplier(Supplier_ID),
    CHECK (Stock_Quantity >= 0),
    CHECK (Stock_Status IN ('Available', 'Unavailable'))
);
table created.

INSERT INTO Inventory
VALUES (301, 1001, 201, 50, 'Available', SYSDATE);
1 row created.
INSERT INTO Inventory
VALUES (302, 1002, 202, 40, 'Available', SYSDATE);
1 row created.
INSERT INTO Inventory
VALUES (303, 1003, 203, 30, 'Available', SYSDATE);
1 row created.
INSERT INTO Inventory
VALUES (304, 1004, 204, 0, 'Unavailable', SYSDATE);
1 row created.
INSERT INTO Inventory
VALUES (305, 1005, 205, 25, 'Available', SYSDATE);
1 row created.

SELECT * FROM Inventory;
SQL> SELECT * FROM Inventory;

INVENTORY_ID PRODUCT_ID SUPPLIER_ID STOCK_QUANTITY STOCK_STATUS
------------ ---------- ----------- -------------- --------------------
LAST_UPDATED
-----------
         301       1001         201             50 Available
06-OCT-26

         302       1002         202             40 Available
06-OCT-26

         303       1003         203             30 Available
06-OCT-26

         304       1004         204              0 Unavailable
06-OCT-26

         305       1005         205             25 Available
06-OCT-26


 SELECT
    p.Product_ID,
    p.Product_Name,
    i.Stock_Quantity,
    i.Stock_Status
FROM Product p
JOIN Inventory i
    ON p.Product_ID = i.Product_ID
WHERE i.Stock_Status = 'Available';

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS
-------------- --------------------
      1001
Vitamin C Face Serum
            50 Available

      1002
Matte Lipstick
            40 Available

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS
-------------- --------------------

      1003
Anti Dandruff Shampoo
            30 Available

      1005
Body Lotion

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS
-------------- --------------------
            25 Available

 SELECT
    p.Product_ID,
    p.Product_Name,
    i.Stock_Quantity,
    i.Stock_Status
FROM Product p
JOIN Inventory i
    ON p.Product_ID = i.Product_ID
WHERE i.Stock_Status = 'Unavailable';

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS
-------------- --------------------
      1004
Floral Eau De Parfum
             0 Unavailable

UPDATE Inventory
SET Stock_Quantity = 60,
    Stock_Status = 'Available',
    Last_Updated = SYSDATE
WHERE Inventory_ID = 301;
1 row updated.

SELECT
    i.Inventory_ID,
    p.Product_Name,
    s.Supplier_Name,
    i.Stock_Quantity,
    i.Stock_Status,
    i.Last_Updated
FROM Inventory i
JOIN Product p
    ON i.Product_ID = p.Product_ID
JOIN Supplier s
    ON i.Supplier_ID = s.Supplier_ID
ORDER BY i.Inventory_ID;

INVENTORY_ID
------------
PRODUCT_NAME
--------------------------------------------------------------------------------
SUPPLIER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
         301
Vitamin C Face Serum
Green Earth Supplies
            60 Available            17-SEP-26


INVENTORY_ID
------------
PRODUCT_NAME
--------------------------------------------------------------------------------
SUPPLIER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
         302
Matte Lipstick
Natural Care Products
            40 Available            17-SEP-26


INVENTORY_ID
------------
PRODUCT_NAME
--------------------------------------------------------------------------------
SUPPLIER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
         303
Anti Dandruff Shampoo
Organic Life Suppliers
            30 Available            17-SEP-26


INVENTORY_ID
------------
PRODUCT_NAME
--------------------------------------------------------------------------------
SUPPLIER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
         304
Floral Eau De Parfum
Pure Nature Supplies
             0 Unavailable          17-SEP-26


INVENTORY_ID
------------
PRODUCT_NAME
--------------------------------------------------------------------------------
SUPPLIER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
         305
Body Lotion
Eco Fresh Products
            25 Available            17-SEP-26

SELECT
    Stock_Status,
    COUNT(*) AS Product_Count
FROM Inventory
GROUP BY Stock_Status;

STOCK_STATUS         PRODUCT_COUNT
-------------------- -------------
Available                        4
Unavailable                      1

SELECT
    p.Product_ID,
    p.Product_Name,
    s.Supplier_Name,
    i.Stock_Quantity,
    i.Stock_Status
FROM Inventory i
JOIN Product p
    ON i.Product_ID = p.Product_ID
JOIN Supplier s
    ON i.Supplier_ID = s.Supplier_ID
WHERE i.Stock_Quantity = 0;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
SUPPLIER_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS
-------------- --------------------
      1004
Floral Eau De Parfum
Pure Nature Supplies
             0 Unavailable