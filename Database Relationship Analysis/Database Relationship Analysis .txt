SQL> SELECT c.Customer_ID,
  2         c.First_Name,
  3         c.Last_Name,
  4         o.Order_ID,
  5         o.Total_Amount
  6  FROM Customer c
  7  JOIN Orders o
  8  ON c.Customer_ID = o.Customer_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID TOTAL_AMOUNT
-------------------------------------------------- ---------- ------------
          1 Aarav
Mehta                                                     101          798

          2 Diya
Nair                                                      102          599

          3 Rohan
Verma                                                     103          999


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID TOTAL_AMOUNT
-------------------------------------------------- ---------- ------------
          4 Kavya
Iyer                                                      104          450

          5 Arjun
Singh                                                     105          750

          6 Nandhini
Krishnan                                                  106         1200


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID TOTAL_AMOUNT
-------------------------------------------------- ---------- ------------
          7 Vishal
Joshi                                                     107          650

          8 Pooja
Rao                                                       108          899

          9 Sanjay
Das                                                       109          550


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID TOTAL_AMOUNT
-------------------------------------------------- ---------- ------------
         10 Harini
Shah                                                      110         1100

          1 Aarav
Mehta                                                     111          850

          6 Nandhini
Krishnan                                                  116          549


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID TOTAL_AMOUNT
-------------------------------------------------- ---------- ------------
          8 Pooja
Rao                                                       118          399

          9 Sanjay
Das                                                       119          649

         10 Harini
Shah                                                      120          899


15 rows selected.

SQL> SELECT c.Customer_ID,
  2         c.First_Name,
  3         c.Last_Name,
  4         o.Order_ID,
  5         o.Order_Date,
  6         o.Total_Amount
  7  FROM Customer c
  8  INNER JOIN Orders o
  9  ON c.Customer_ID = o.Customer_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
          1 Aarav
Mehta                                                     101 20-SEP-26
         798

          2 Diya
Nair                                                      102 21-SEP-26
         599

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------

          3 Rohan
Verma                                                     103 22-SEP-26
         999

          4 Kavya
Iyer                                                      104 23-SEP-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
         450

          5 Arjun
Singh                                                     105 24-SEP-26
         750

          6 Nandhini

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
Krishnan                                                  106 25-SEP-26
        1200

          7 Vishal
Joshi                                                     107 26-SEP-26
         650


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
          8 Pooja
Rao                                                       108 27-SEP-26
         899

          9 Sanjay
Das                                                       109 28-SEP-26
         550

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------

         10 Harini
Shah                                                      110 29-SEP-26
        1100

          1 Aarav
Mehta                                                     111 03-OCT-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
         850

          6 Nandhini
Krishnan                                                  116 25-SEP-26
         549

          8 Pooja

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
Rao                                                       118 27-SEP-26
         399

          9 Sanjay
Das                                                       119 28-SEP-26
         649


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
         10 Harini
Shah                                                      120 29-SEP-26
         899


15 rows selected.

SQL> SELECT o.Order_ID,
  2         o.Order_Date,
  3         o.Total_Amount,
  4         p.Payment_Method,
  5         p.Payment_Status,
  6         p.Amount
  7  FROM Orders o
  8  INNER JOIN Payment p
  9  ON o.Order_ID = p.Order_ID;

  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD       PAYMENT_STATUS
---------- --------- ------------ -------------------- --------------------
    AMOUNT
----------
       101 20-SEP-26          798 UPI                  Success
       798

       102 21-SEP-26          599 Card                 Success
       599

       103 22-SEP-26          999 UPI                  Success
       449


  ORDER_ID ORDER_DAT TOTAL_AMOUNT PAYMENT_METHOD       PAYMENT_STATUS
---------- --------- ------------ -------------------- --------------------
    AMOUNT
----------
       104 23-SEP-26          450 COD                  Success
       899

       105 24-SEP-26          750 Card                 Failed
       699
SQL> SELECT p.Product_ID,
  2         p.Product_Name,
  3         od.Order_ID,
  4         od.Quantity,
  5         od.Unit_Price,
  6         od.Total_Price
  7  FROM Product p
  8  INNER JOIN Order_Details od
  9  ON p.Product_ID = od.Product_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  ORDER_ID   QUANTITY UNIT_PRICE TOTAL_PRICE
---------- ---------- ---------- -----------
      1009
Aloe Vera Body Lotion
       101          2        349         698
       SQL> SELECT c.Customer_ID,
  2         c.First_Name,
  3         c.Last_Name,
  4         o.Order_ID,
  5         o.Order_Date,
  6         o.Total_Amount
  7  FROM Customer c
  8  LEFT JOIN Orders o
  9  ON c.Customer_ID = o.Customer_ID
 10  ORDER BY c.Customer_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
          1 Aarav
Mehta                                                     101 20-SEP-26
         798

          1 Aarav
Mehta                                                     111 03-OCT-26
         850

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------

          2 Diya
Nair                                                      102 21-SEP-26
         599

          3 Rohan
Verma                                                     103 22-SEP-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
         999

          4 Kavya
Iyer                                                      104 23-SEP-26
         450

          5 Arjun

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
Singh                                                     105 24-SEP-26
         750

          6 Nandhini
Krishnan                                                  116 25-SEP-26
         549


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
          6 Nandhini
Krishnan                                                  106 25-SEP-26
        1200

          7 Vishal
Joshi                                                     107 26-SEP-26
         650

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------

          8 Pooja
Rao                                                       108 27-SEP-26
         899

          8 Pooja
Rao                                                       118 27-SEP-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
         399

          9 Sanjay
Das                                                       119 28-SEP-26
         649

          9 Sanjay

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
Das                                                       109 28-SEP-26
         550

         10 Harini
Shah                                                      120 29-SEP-26
         899


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
TOTAL_AMOUNT
------------
         10 Harini
Shah                                                      110 29-SEP-26
        1100


15 rows selected.
SQL> SELECT c.Customer_ID,
  2         c.First_Name,
  3         c.Last_Name,
  4         o.Order_ID,
  5         o.Order_Date,
  6         o.Order_Status,
  7         o.Total_Amount
  8  FROM Customer c
  9  RIGHT JOIN Orders o
 10  ON c.Customer_ID = o.Customer_ID
 11  ORDER BY o.Order_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
          1 Aarav
Mehta                                                     101 20-SEP-26
Delivered                     798

          2 Diya
Nair                                                      102 21-SEP-26
Delivered                     599

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------

          3 Rohan
Verma                                                     103 22-SEP-26
Shipped                       999

          4 Kavya
Iyer                                                      104 23-SEP-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
Delivered                     450

          5 Arjun
Singh                                                     105 24-SEP-26
Shipped                       750

          6 Nandhini

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
Krishnan                                                  106 25-SEP-26
Delivered                    1200

          7 Vishal
Joshi                                                     107 26-SEP-26
Delivered                     650


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
          8 Pooja
Rao                                                       108 27-SEP-26
Shipped                       899

          9 Sanjay
Das                                                       109 28-SEP-26
Pending                       550

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------

         10 Harini
Shah                                                      110 29-SEP-26
Delivered                    1100

          1 Aarav
Mehta                                                     111 03-OCT-26

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
Shipped                       850

          6 Nandhini
Krishnan                                                  116 25-SEP-26
Shipped                       549

          8 Pooja

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
Rao                                                       118 27-SEP-26
Pending                       399

          9 Sanjay
Das                                                       119 28-SEP-26
Delivered                     649


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
ORDER_STATUS         TOTAL_AMOUNT
-------------------- ------------
         10 Harini
Shah                                                      120 29-SEP-26
Shipped                       899


15 rows selected.

SQL> SELECT c.Customer_ID,
  2         c.First_Name,
  3         c.Last_Name,
  4         o.Order_ID,
  5         o.Order_Date,
  6         p.Product_Name,
  7         od.Quantity,
  8         od.Unit_Price,
  9         od.Discount,
 10         od.Total_Price,
 11         pay.Payment_Method,
 12         pay.Payment_Status
 13  FROM Customer c
 14  JOIN Orders o
 15  ON c.Customer_ID = o.Customer_ID
 16  JOIN Order_Details od
 17  ON o.Order_ID = od.Order_ID
 18  JOIN Product p
 19  ON od.Product_ID = p.Product_ID
 20  LEFT JOIN Payment pay
 21  ON o.Order_ID = pay.Order_ID
 22  ORDER BY o.Order_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT TOTAL_PRICE PAYMENT_METHOD
---------- ---------- ---------- ----------- --------------------
PAYMENT_STATUS
--------------------
          1 Aarav
Mehta                                                     101 20-SEP-26
Aloe Vera Body Lotion

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY UNIT_PRICE   DISCOUNT TOTAL_PRICE PAYMENT_METHOD
---------- ---------- ---------- ----------- --------------------
PAYMENT_STATUS
--------------------
         2        349          0         698 UPI
Success


SQL> SELECT c.Customer_ID,
  2         c.First_Name,
  3         c.Last_Name,
  4         o.Order_ID,
  5         o.Order_Date,
  6         p.Product_Name,
  7         od.Quantity,
  8         od.Total_Price
  9  FROM Customer c
 10  JOIN Orders o
 11  ON c.Customer_ID = o.Customer_ID
 12  JOIN Order_Details od
 13  ON o.Order_ID = od.Order_ID
 14  JOIN Product p
 15  ON od.Product_ID = p.Product_ID
 16  ORDER BY c.Customer_ID, o.Order_Date;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID ORDER_DAT
-------------------------------------------------- ---------- ---------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY TOTAL_PRICE
---------- -----------
          1 Aarav
Mehta                                                     101 20-SEP-26
Aloe Vera Body Lotion
         2         698


SQL> SELECT c.Customer_ID,
  2         c.First_Name,
  3         c.Last_Name,
  4         o.Order_ID,
  5         p.Product_Name,
  6         od.Quantity,
  7         o.Total_Amount,
  8         pay.Payment_Method,
  9         pay.Payment_Status
 10  FROM Customer c
 11  JOIN Orders o
 12  ON c.Customer_ID = o.Customer_ID
 13  JOIN Order_Details od
 14  ON o.Order_ID = od.Order_ID
 15  JOIN Product p
 16  ON od.Product_ID = p.Product_ID
 17  LEFT JOIN Payment pay
 18  ON o.Order_ID = pay.Order_ID
 19  ORDER BY c.Customer_ID;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PRODUCT_NAME
--------------------------------------------------------------------------------
  QUANTITY TOTAL_AMOUNT PAYMENT_METHOD       PAYMENT_STATUS
---------- ------------ -------------------- --------------------
          1 Aarav
Mehta                                                     101
Aloe Vera Body Lotion
         2          798 UPI                  Success


SQL> SELECT c.Customer_ID,
  2         c.First_Name,
  3         c.Last_Name,
  4         COUNT(DISTINCT o.Order_ID) AS Total_Orders,
  5         SUM(od.Quantity) AS Total_Quantity,
  6         SUM(od.Total_Price) AS Total_Product_Value
  7  FROM Customer c
  8  JOIN Orders o
  9  ON c.Customer_ID = o.Customer_ID
 10  JOIN Order_Details od
 11  ON o.Order_ID = od.Order_ID
 12  GROUP BY c.Customer_ID,
 13           c.First_Name,
 14           c.Last_Name
 15  ORDER BY Total_Product_Value DESC;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          TOTAL_ORDERS TOTAL_QUANTITY
-------------------------------------------------- ------------ --------------
TOTAL_PRODUCT_VALUE
-------------------
          1 Aarav
Mehta                                                         1              4
               1496

          6 Nandhini
Krishnan                                                      1              3
               1200

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          TOTAL_ORDERS TOTAL_QUANTITY
-------------------------------------------------- ------------ --------------
TOTAL_PRODUCT_VALUE
-------------------

         10 Harini
Shah                                                          1              2
               1100

          3 Rohan
Verma                                                         1              2

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          TOTAL_ORDERS TOTAL_QUANTITY
-------------------------------------------------- ------------ --------------
TOTAL_PRODUCT_VALUE
-------------------
                999

          8 Pooja
Rao                                                           1              2
                899

          5 Arjun

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          TOTAL_ORDERS TOTAL_QUANTITY
-------------------------------------------------- ------------ --------------
TOTAL_PRODUCT_VALUE
-------------------
Singh                                                         1              2
                750

          7 Vishal
Joshi                                                         1              1
                650


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          TOTAL_ORDERS TOTAL_QUANTITY
-------------------------------------------------- ------------ --------------
TOTAL_PRODUCT_VALUE
-------------------
          2 Diya
Nair                                                          1              1
                599

          9 Sanjay
Das                                                           1              1
                550

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME                                          TOTAL_ORDERS TOTAL_QUANTITY
-------------------------------------------------- ------------ --------------
TOTAL_PRODUCT_VALUE
-------------------

          4 Kavya
Iyer                                                          1              1
                450


10 rows selected.

SQL> SELECT pay.Payment_ID,
  2         pay.Transaction_ID,
  3         c.Customer_ID,
  4         c.First_Name,
  5         c.Last_Name,
  6         o.Order_ID,
  7         pay.Payment_Method,
  8         pay.Payment_Date,
  9         pay.Payment_Status,
 10         pay.Amount
 11  FROM Payment pay
 12  JOIN Orders o
 13  ON pay.Order_ID = o.Order_ID
 14  JOIN Customer c
 15  ON o.Customer_ID = c.Customer_ID
 16  ORDER BY pay.Payment_Date;

PAYMENT_ID TRANSACTION_ID                                     CUSTOMER_ID
---------- -------------------------------------------------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PAYMENT_METHOD       PAYMENT_D PAYMENT_STATUS           AMOUNT
-------------------- --------- -------------------- ----------
         1 TXN10001                                                     1
Aarav
Mehta                                                     101
UPI                  20-SEP-26 Success                     798


PAYMENT_ID TRANSACTION_ID                                     CUSTOMER_ID
---------- -------------------------------------------------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PAYMENT_METHOD       PAYMENT_D PAYMENT_STATUS           AMOUNT
-------------------- --------- -------------------- ----------
         2 TXN10002                                                     2
Diya
Nair                                                      102
Card                 21-SEP-26 Success                     599


PAYMENT_ID TRANSACTION_ID                                     CUSTOMER_ID
---------- -------------------------------------------------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PAYMENT_METHOD       PAYMENT_D PAYMENT_STATUS           AMOUNT
-------------------- --------- -------------------- ----------
         3 TXN10003                                                     3
Rohan
Verma                                                     103
UPI                  22-SEP-26 Success                     449


PAYMENT_ID TRANSACTION_ID                                     CUSTOMER_ID
---------- -------------------------------------------------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PAYMENT_METHOD       PAYMENT_D PAYMENT_STATUS           AMOUNT
-------------------- --------- -------------------- ----------
         4 TXN10004                                                     4
Kavya
Iyer                                                      104
COD                  23-SEP-26 Success                     899


PAYMENT_ID TRANSACTION_ID                                     CUSTOMER_ID
---------- -------------------------------------------------- -----------
FIRST_NAME
--------------------------------------------------
LAST_NAME                                            ORDER_ID
-------------------------------------------------- ----------
PAYMENT_METHOD       PAYMENT_D PAYMENT_STATUS           AMOUNT
-------------------- --------- -------------------- ----------
         5 TXN10005                                                     5
Arjun
Singh                                                     105
Card                 24-SEP-26 Failed                      699
