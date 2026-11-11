
SQL> SELECT Order_ID, Customer_ID, Total_Amount
  2  FROM Orders
  3  WHERE Total_Amount >
  4        (SELECT AVG(Total_Amount)
  5         FROM Orders);

  ORDER_ID CUSTOMER_ID TOTAL_AMOUNT
---------- ----------- ------------
       101           1          798
       103           3          999
       106           6         1200
       108           8          899
       110          10         1100
       111           1          850
       120          10          899

7 rows selected.

SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  WHERE Price >
  4        (SELECT AVG(Price)
  5         FROM Product);

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
      1002
Rose Face Cream
       399

      1004
Herbal Body Wash
       449

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

      1007
Cucumber Moisturizer
       449

      1010
Vitamin C Face Serum

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       499

      1011
Coconut Hair Shampoo
       379


SQL> SELECT Product_ID, Product_Name, Price
  2  FROM Product
  3  WHERE Price <
  4        (SELECT AVG(Price)
  5         FROM Product);

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
      1001
Aloe Vera Face Wash
       299

      1003
Coconut Hair Oil
       349

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------

      1005
Natural Lip Balm
       199

      1006
Neem Face Pack

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
       279

      1008
Natural Face Cleanser
       329

      1009

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
     PRICE
----------
Aloe Vera Body Lotion
       349

      1012
Rose Water Toner
       249


7 rows selected.

SQL> SELECT Customer_ID,
  2         SUM(Total_Amount) AS Total_Purchase
  3  FROM Orders
  4  GROUP BY Customer_ID;

CUSTOMER_ID TOTAL_PURCHASE
----------- --------------
          1           1648
          2            599
          3            999
          4            450
          5            750
          6           1749
          7            650
          8           1298
          9           1199
         10           1999

10 rows selected.

SQL> SELECT MAX(Total_Purchase)
  2  FROM (
  3      SELECT Customer_ID,
  4             SUM(Total_Amount) AS Total_Purchase
  5      FROM Orders
  6      GROUP BY Customer_ID
  7  );

MAX(TOTAL_PURCHASE)
-------------------
               1999

SQL> SELECT c.Customer_ID,
  2         c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  3         SUM(o.Total_Amount) AS Total_Purchase
  4  FROM Customer c
  5  JOIN Orders o
  6  ON c.Customer_ID = o.Customer_ID
  7  GROUP BY c.Customer_ID, c.First_Name, c.Last_Name
  8  HAVING SUM(o.Total_Amount) = (
  9      SELECT MAX(Total_Purchase)
 10      FROM (
 11          SELECT SUM(Total_Amount) AS Total_Purchase
 12          FROM Orders
 13          GROUP BY Customer_ID
 14      )
 15  );

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
         10
Harini Shah
          1999


SQL> SELECT c.Customer_ID,
  2         c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  3         o.Order_ID,
  4         o.Total_Amount
  5  FROM Customer c
  6  JOIN Orders o
  7  ON c.Customer_ID = o.Customer_ID
  8  WHERE o.Total_Amount > (
  9      SELECT AVG(Total_Amount)
 10      FROM Orders
 11  )
 12  ORDER BY o.Total_Amount DESC;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT
---------- ------------
          6
Nandhini Krishnan
       106         1200

         10
Harini Shah
       110         1100

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT
---------- ------------

          3
Rohan Verma
       103          999

          8
Pooja Rao

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT
---------- ------------
       108          899

         10
Harini Shah
       120          899

          1

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID TOTAL_AMOUNT
---------- ------------
Aarav Mehta
       111          850

          1
Aarav Mehta
       101          798


7 rows selected.
SQL> SELECT p.Product_ID,
  2         p.Product_Name,
  3         SUM(od.Total_Price) AS Total_Sales
  4  FROM Product p
  5  JOIN Order_Details od
  6  ON p.Product_ID = od.Product_ID
  7  GROUP BY p.Product_ID, p.Product_Name
  8  HAVING SUM(od.Total_Price) > (
  9      SELECT AVG(Product_Sales)
 10      FROM (
 11          SELECT SUM(Total_Price) AS Product_Sales
 12          FROM Order_Details
 13          GROUP BY Product_ID
 14      )
 15  )
 16  ORDER BY Total_Sales DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SALES
-----------
      1009
Aloe Vera Body Lotion
       1248

      1006
Neem Face Pack
       1200

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SALES
-----------

      1010
Vitamin C Face Serum
       1100

      1003
Coconut Hair Oil

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_SALES
-----------
        999

      1008
Natural Face Cleanser
        899



SQL> SELECT c.Customer_ID,
  2         c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  3         COUNT(o.Order_ID) AS Total_Orders,
  4         SUM(o.Total_Amount) AS Total_Purchase,
  5         AVG(o.Total_Amount) AS Average_Order_Value
  6  FROM Customer c
  7  JOIN Orders o
  8  ON c.Customer_ID = o.Customer_ID
  9  GROUP BY c.Customer_ID, c.First_Name, c.Last_Name
 10  ORDER BY Total_Purchase DESC;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER_VALUE
------------ -------------- -------------------
         10
Harini Shah
           2           1999               999.5

          6
Nandhini Krishnan
           2           1749               874.5

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER_VALUE
------------ -------------- -------------------

          1
Aarav Mehta
           2           1648                 824

          8
Pooja Rao

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER_VALUE
------------ -------------- -------------------
           2           1298                 649

          9
Sanjay Das
           2           1199               599.5

          3

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER_VALUE
------------ -------------- -------------------
Rohan Verma
           1            999                 999

          5
Arjun Singh
           1            750                 750


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER_VALUE
------------ -------------- -------------------
          7
Vishal Joshi
           1            650                 650

          2
Diya Nair
           1            599                 599

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_ORDERS TOTAL_PURCHASE AVERAGE_ORDER_VALUE
------------ -------------- -------------------

          4
Kavya Iyer
           1            450                 450


SQL> SELECT p.Product_ID,
  2         p.Product_Name,
  3         COUNT(DISTINCT od.Order_ID) AS Number_of_Orders,
  4         SUM(od.Quantity) AS Total_Quantity_Sold,
  5         SUM(od.Total_Price) AS Total_Sales,
  6         AVG(od.Unit_Price) AS Average_Price
  7  FROM Product p
  8  JOIN Order_Details od
  9  ON p.Product_ID = od.Product_ID
 10  GROUP BY p.Product_ID, p.Product_Name
 11  ORDER BY Total_Sales DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
NUMBER_OF_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE
---------------- ------------------- ----------- -------------
      1009
Aloe Vera Body Lotion
               2                   3        1248         449.5

      1006
Neem Face Pack
               1                   3        1200           400

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
NUMBER_OF_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE
---------------- ------------------- ----------- -------------

      1010
Vitamin C Face Serum
               1                   2        1100           550

      1003
Coconut Hair Oil

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
NUMBER_OF_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE
---------------- ------------------- ----------- -------------
               1                   2         999         499.5

      1008
Natural Face Cleanser
               1                   2         899         449.5

      1001

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
NUMBER_OF_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE
---------------- ------------------- ----------- -------------
Aloe Vera Face Wash
               1                   2         798           399

      1005
Natural Lip Balm
               1                   2         750           375


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
NUMBER_OF_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE
---------------- ------------------- ----------- -------------
      1007
Cucumber Moisturizer
               1                   1         650           650

      1002
Rose Face Cream
               1                   1         599           599

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
NUMBER_OF_ORDERS TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE
---------------- ------------------- ----------- -------------

      1004
Herbal Body Wash
               1                   1         450           450


10 rows selected.
SQL> SELECT cat.Category_ID,
  2         cat.Category_Name,
  3         COUNT(DISTINCT od.Order_ID) AS Total_Orders,
  4         SUM(od.Quantity) AS Total_Quantity_Sold,
  5         SUM(od.Total_Price) AS Total_Sales,
  6         AVG(od.Unit_Price) AS Average_Price
  7  FROM Category cat
  8  JOIN Product p
  9  ON cat.Category_ID = p.Category_ID
 10  JOIN Order_Details od
 11  ON p.Product_ID = od.Product_ID
 12  GROUP BY cat.Category_ID, cat.Category_Name
 13  ORDER BY Total_Sales DESC;

CATEGORY_ID CATEGORY_NAME                                      TOTAL_ORDERS
----------- -------------------------------------------------- ------------
TOTAL_QUANTITY_SOLD TOTAL_SALES AVERAGE_PRICE
------------------- ----------- -------------
          1 Face Care                                                     3
                  5        2497           516

          2 Body Care                                                     3
                  4        1698    449.666667

          3 Hair Care                                                     1
                  2         999         499.5

SQL> commit;

Commit complete.
