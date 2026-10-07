CREATE TABLE Supplier (
    Supplier_ID INT PRIMARY KEY,
    Supplier_Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Contact_No VARCHAR(15) NOT NULL UNIQUE,
    Address VARCHAR(200) NOT NULL
);
table created.
INSERT INTO Supplier
(Supplier_ID, Supplier_Name, Email, Contact_No, Address)
VALUES
(201, 'Green Earth Supplies', 'greenearth@gmail.com', '9876543210', 'Chennai');
1 row created.
INSERT INTO Supplier
(Supplier_ID, Supplier_Name, Email, Contact_No, Address)
VALUES
(202, 'Natural Care Products', 'naturalcare@gmail.com', '9876543211', 'Coimbatore');
1 row created.

INSERT INTO Supplier
(Supplier_ID, Supplier_Name, Email, Contact_No, Address)
VALUES
(203, 'Organic Life Suppliers', 'organiclife@gmail.com', '9876543212', 'Madurai');
1 row created.

INSERT INTO Supplier
(Supplier_ID, Supplier_Name, Email, Contact_No, Address)
VALUES
(204, 'Pure Nature Supplies', 'purenature@gmail.com', '9876543213', 'Salem');
1 row created.

INSERT INTO Supplier
(Supplier_ID, Supplier_Name, Email, Contact_No, Address)
VALUES
(205, 'Eco Fresh Products', 'ecofresh@gmail.com', '9876543214', 'Trichy');
1 row created.

 SELECT * FROM Supplier;

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
CONTACT_NO
---------------
ADDRESS
--------------------------------------------------------------------------------
        201
Green Earth Supplies
greenearth@gmail.com

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
CONTACT_NO
---------------
ADDRESS
--------------------------------------------------------------------------------
9876543210
Chennai


SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
CONTACT_NO
---------------
ADDRESS
--------------------------------------------------------------------------------
        202
Natural Care Products
naturalcare@gmail.com

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
CONTACT_NO
---------------
ADDRESS
--------------------------------------------------------------------------------
9876543211
Coimbatore


SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
CONTACT_NO
---------------
ADDRESS
--------------------------------------------------------------------------------
        203
Organic Life Suppliers
organiclife@gmail.com

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
CONTACT_NO
---------------
ADDRESS
--------------------------------------------------------------------------------
9876543212
Madurai


SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
CONTACT_NO
---------------
ADDRESS
--------------------------------------------------------------------------------
        204
Pure Nature Supplies
purenature@gmail.com

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
CONTACT_NO
---------------
ADDRESS
--------------------------------------------------------------------------------
9876543213
Salem


SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
CONTACT_NO
---------------
ADDRESS
--------------------------------------------------------------------------------
        205
Eco Fresh Products
ecofresh@gmail.com

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
EMAIL
--------------------------------------------------------------------------------
CONTACT_NO
---------------
ADDRESS
--------------------------------------------------------------------------------
9876543214
Trichy

SELECT
    s.Supplier_ID,
    s.Supplier_Name,
    p.Product_ID,
    p.Product_Name,
    i.Stock_Quantity,
    i.Stock_Status,
    i.Last_Updated
FROM Supplier s
JOIN Inventory i
    ON s.Supplier_ID = i.Supplier_ID
JOIN Product p
    ON i.Product_ID = p.Product_ID;

    SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
        201
Green Earth Supplies
      1001

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
Vitamin C Face Serum
            50 Available            17-SEP-26


SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
        202
Natural Care Products
      1002

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
Matte Lipstick
            40 Available            17-SEP-26


SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
        203
Organic Life Suppliers
      1003

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
Anti Dandruff Shampoo
            30 Available            17-SEP-26


SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
        204
Pure Nature Supplies
      1004

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
Floral Eau De Parfum
             0 Unavailable          17-SEP-26


SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
        205
Eco Fresh Products
      1005

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
STOCK_QUANTITY STOCK_STATUS         LAST_UPDA
-------------- -------------------- ---------
Body Lotion
            25 Available            17-SEP-26


 SELECT
    s.Supplier_ID,
    s.Supplier_Name,
    SUM(i.Stock_Quantity) AS Total_Stock
FROM Supplier s
JOIN Inventory i
    ON s.Supplier_ID = i.Supplier_ID
GROUP BY
    s.Supplier_ID,
    s.Supplier_Name
ORDER BY s.Supplier_ID;

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
TOTAL_STOCK
-----------
        201
Green Earth Supplies
         60

        202
Natural Care Products
         40

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
TOTAL_STOCK
-----------

        203
Organic Life Suppliers
         30

        204
Pure Nature Supplies

SUPPLIER_ID
-----------
SUPPLIER_NAME
--------------------------------------------------------------------------------
TOTAL_STOCK
-----------
          0

        205
Eco Fresh Products
         25