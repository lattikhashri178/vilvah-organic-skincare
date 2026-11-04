SQL> SELECT COUNT(Order_ID) AS Total_Orders
  2  FROM Orders;

TOTAL_ORDERS
------------
          15

SQL> SELECT SUM(Total_Amount) AS Total_Sales
  2  FROM Orders;

TOTAL_SALES
-----------
      11341

SQL> SELECT AVG(Total_Amount) AS Average_Order_Amount
  2  FROM Orders;

AVERAGE_ORDER_AMOUNT
--------------------
          756.066667

SQL> SELECT MIN(Total_Amount) AS Minimum_Order
  2  FROM Orders;

MINIMUM_ORDER
-------------
          399

SQL> SELECT MAX(Total_Amount) AS Maximum_Order
  2  FROM Orders;

MAXIMUM_ORDER
-------------
         1200

SQL> SELECT
  2      COUNT(Order_ID) AS Total_Orders,
  3      SUM(Total_Amount) AS Total_Sales,
  4      AVG(Total_Amount) AS Average_Order_Value,
  5      MIN(Total_Amount) AS Minimum_Order,
  6      MAX(Total_Amount) AS Maximum_Order
  7  FROM Orders;

TOTAL_ORDERS TOTAL_SALES AVERAGE_ORDER_VALUE MINIMUM_ORDER MAXIMUM_ORDER
------------ ----------- ------------------- ------------- -------------
          15       11341          756.066667           399          1200

SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  4      SUM(o.Total_Amount) AS Total_Purchase
  5  FROM Customer c
  6  JOIN Orders o
  7  ON c.Customer_ID = o.Customer_ID
  8  GROUP BY
  9      c.Customer_ID,
 10      c.First_Name,
 11      c.Last_Name
 12  ORDER BY Total_Purchase DESC;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
         10
Harini Shah
          1999

          6
Nandhini Krishnan
          1749

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------

          1
Aarav Mehta
          1648

          8
Pooja Rao

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
          1298

          9
Sanjay Das
          1199

          3

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
Rohan Verma
           999

          5
Arjun Singh
           750


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
          7
Vishal Joshi
           650

          2
Diya Nair
           599

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------

          4
Kavya Iyer
           450


10 rows selected.

SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  4      SUM(o.Total_Amount) AS Total_Purchase
  5  FROM Customer c
  6  JOIN Orders o
  7  ON c.Customer_ID = o.Customer_ID
  8  GROUP BY
  9      c.Customer_ID,
 10      c.First_Name,
 11      c.Last_Name
 12  ORDER BY Total_Purchase DESC;

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
         10
Harini Shah
          1999

          6
Nandhini Krishnan
          1749

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------

          1
Aarav Mehta
          1648

          8
Pooja Rao

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
          1298

          9
Sanjay Das
          1199

          3

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
Rohan Verma
           999

          5
Arjun Singh
           750


CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------
          7
Vishal Joshi
           650

          2
Diya Nair
           599

CUSTOMER_ID
-----------
CUSTOMER_NAME
--------------------------------------------------------------------------------
TOTAL_PURCHASE
--------------

          4
Kavya Iyer
           450


10 rows selected.

SQL> SELECT
  2      p.Product_ID,
  3      p.Product_Name,
  4      SUM(od.Quantity) AS Total_Quantity_Sold
  5  FROM Product p
  6  JOIN Order_Details od
  7  ON p.Product_ID = od.Product_ID
  8  GROUP BY
  9      p.Product_ID,
 10      p.Product_Name
 11  ORDER BY Total_Quantity_Sold DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD
-------------------
      1009
Aloe Vera Body Lotion
                  2


SQL> SELECT
  2      p.Product_ID,
  3      p.Product_Name,
  4      SUM(od.Quantity) AS Total_Quantity_Sold,
  5      SUM(od.Total_Price) AS Total_Sales
  6  FROM Product p
  7  JOIN Order_Details od
  8  ON p.Product_ID = od.Product_ID
  9  GROUP BY
 10      p.Product_ID,
 11      p.Product_Name
 12  ORDER BY Total_Sales DESC;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
      1009
Aloe Vera Body Lotion
                  2         698
 SQL> SELECT
  2      c.Category_ID,
  3      c.Category_Name,
  4      SUM(od.Quantity) AS Total_Quantity_Sold,
  5      SUM(od.Total_Price) AS Total_Sales
  6  FROM Category c
  7  JOIN Product p
  8  ON c.Category_ID = p.Category_ID
  9  JOIN Order_Details od
 10  ON p.Product_ID = od.Product_ID
 11  GROUP BY
 12      c.Category_ID,
 13      c.Category_Name
 14  ORDER BY Total_Sales DESC;

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
TOTAL_QUANTITY_SOLD TOTAL_SALES
------------------- -----------
          2 Body Care
                  2         698

SQL> SELECT
  2      c.First_Name || ' ' || c.Last_Name AS Customer_Name,
  3      o.Order_ID,
  4      p.Product_Name,
  5      cat.Category_Name,
  6      od.Quantity,
  7      od.Total_Price
  8  FROM Customer c
  9  JOIN Orders o
 10  ON c.Customer_ID = o.Customer_ID
 11  JOIN Order_Details od
 12  ON o.Order_ID = od.Order_ID
 13  JOIN Product p
 14  ON od.Product_ID = p.Product_ID
 15  JOIN Category cat
 16  ON p.Category_ID = cat.Category_ID
 17  ORDER BY o.Order_ID;

CUSTOMER_NAME
--------------------------------------------------------------------------------
  ORDER_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
CATEGORY_NAME                                        QUANTITY TOTAL_PRICE
-------------------------------------------------- ---------- -----------
Aarav Mehta
       101
Aloe Vera Body Lotion
Body Care                                                   2         698