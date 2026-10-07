
SQL> CREATE TABLE Payment (
  2      Payment_ID NUMBER(10) PRIMARY KEY,
  3      Order_ID NUMBER(10) NOT NULL,
  4      Payment_Method VARCHAR2(20),
  5      Transaction_ID VARCHAR2(50) UNIQUE,
  6      Payment_Status VARCHAR2(20),
  7      Payment_Date DATE,
  8      Amount NUMBER(10,2) NOT NULL,
  9  CONSTRAINT FK_PAYMENT_ORDER
 10  FOREIGN KEY (Order_ID)
 11   REFERENCES Orders(Order_ID)
 12  );

Table created.

SQL> INSERT INTO Orders
  2  (Order_ID, Customer_ID, Order_Date, Total_Amount, Order_Status,
  3   Shipping_Address, Delivery_Date)
  4  VALUES
  5  (116, 6, DATE '2026-09-25', 549.00, 'Shipped',
  6   'Besant Nagar, Chennai', DATE '2026-09-29');

1 row created.

SQL> INSERT INTO Orders
  2  (Order_ID, Customer_ID, Order_Date, Total_Amount, Order_Status,
  3   Shipping_Address, Delivery_Date)
  4  VALUES
  5  (118, 8, DATE '2026-09-27', 399.00, 'Pending',
  6   'Porur, Chennai', DATE '2026-10-01');

1 row created.

SQL> INSERT INTO Orders
  2  (Order_ID, Customer_ID, Order_Date, Total_Amount, Order_Status,
  3   Shipping_Address, Delivery_Date)
  4  VALUES
  5  (119, 9, DATE '2026-09-28', 649.00, 'Delivered',
  6   'Guindy, Chennai', DATE '2026-10-02');

1 row created.

SQL> INSERT INTO Orders
  2  (Order_ID, Customer_ID, Order_Date, Total_Amount, Order_Status,
  3   Shipping_Address, Delivery_Date)
  4  VALUES
  5  (120, 10, DATE '2026-09-29', 899.00, 'Shipped',
  6   'Chromepet, Chennai', DATE '2026-10-03');

1 row created.

SQL> SELECT * FROM Orders;

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ --------------------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
DELIVERY_
---------
       101           1 20-SEP-26          798 Delivered
Chennai
23-SEP-26

       102           2 21-SEP-26          599 Delivered
Kochi
24-SEP-26

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ --------------------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
DELIVERY_
---------

       103           3 22-SEP-26          999 Shipped
Bangalore


       104           4 23-SEP-26          450 Delivered
Chennai

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ --------------------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
DELIVERY_
---------
26-SEP-26

       105           5 24-SEP-26          750 Shipped
Mumbai


       106           6 25-SEP-26         1200 Delivered

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ --------------------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
DELIVERY_
---------
Hyderabad
03-OCT-26

       107           7 26-SEP-26          650 Delivered
Delhi
29-SEP-26


  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ --------------------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
DELIVERY_
---------
       108           8 27-SEP-26          899 Shipped
Pune


       109           9 28-SEP-26          550 Pending
Kolkata


  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ --------------------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
DELIVERY_
---------

       110          10 29-SEP-26         1100 Delivered
Ahmedabad
02-OCT-26

       111           1 03-OCT-26          850 Shipped
Chennai

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ --------------------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
DELIVERY_
---------
06-OCT-26

       116           6 25-SEP-26          549 Shipped
Besant Nagar, Chennai
29-SEP-26

       118           8 27-SEP-26          399 Pending

  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ --------------------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
DELIVERY_
---------
Porur, Chennai
01-OCT-26

       119           9 28-SEP-26          649 Delivered
Guindy, Chennai
02-OCT-26


  ORDER_ID CUSTOMER_ID ORDER_DAT TOTAL_AMOUNT ORDER_STATUS
---------- ----------- --------- ------------ --------------------
SHIPPING_ADDRESS
--------------------------------------------------------------------------------
DELIVERY_
---------
       120          10 29-SEP-26          899 Shipped
Chromepet, Chennai
03-OCT-26


15 rows selected.

SQL> INSERT INTO Payment
  2  (Payment_ID, Order_ID, Payment_Method, Transaction_ID, Payment_Status, Payment_Date, Amount)
  3  VALUES
  4  (1, 101, 'UPI', 'TXN10001', 'Success', DATE '2026-09-20', 798.00);

1 row created.

SQL> INSERT INTO Payment
  2  (Payment_ID, Order_ID, Payment_Method, Transaction_ID, Payment_Status, Payment_Date, Amount)
  3  VALUES
  4  (2, 102, 'Card', 'TXN10002', 'Success', DATE '2026-09-21', 599.00);

1 row created.

SQL> INSERT INTO Payment
  2  (Payment_ID, Order_ID, Payment_Method, Transaction_ID, Payment_Status, Payment_Date, Amount)
  3  VALUES
  4  (3, 103, 'UPI', 'TXN10003', 'Pending', DATE '2026-09-22', 449.00);

1 row created.

SQL> INSERT INTO Payment
  2  (Payment_ID, Order_ID, Payment_Method, Transaction_ID, Payment_Status, Payment_Date, Amount)
  3  VALUES
  4  (4, 104, 'COD', 'TXN10004', 'Success', DATE '2026-09-23', 899.00);

1 row created.

SQL>
SQL> INSERT INTO Payment
  2  (Payment_ID, Order_ID, Payment_Method, Transaction_ID, Payment_Status, Payment_Date, Amount)
  3  VALUES
  4  (5, 105, 'Card', 'TXN10005', 'Failed', DATE '2026-09-24', 699.00);

1 row created.

SQL> SELECT * FROM Payment;

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------
TRANSACTION_ID                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         1        101 UPI
TXN10001                                           Success
20-SEP-26        798

         2        102 Card
TXN10002                                           Success
21-SEP-26        599

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------
TRANSACTION_ID                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------

         3        103 UPI
TXN10003                                           Pending
22-SEP-26        449

         4        104 COD
TXN10004                                           Success

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------
TRANSACTION_ID                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
23-SEP-26        899

         5        105 Card
TXN10005                                           Failed
24-SEP-26        699


SQL> SELECT *
  2  FROM Payment
  3  WHERE Payment_Status = 'Success';

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------
TRANSACTION_ID                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         1        101 UPI
TXN10001                                           Success
20-SEP-26        798

         2        102 Card
TXN10002                                           Success
21-SEP-26        599

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------
TRANSACTION_ID                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------

         4        104 COD
TXN10004                                           Success
23-SEP-26        899


SQL> SELECT *
  2  FROM Payment
  3  WHERE Payment_Status = 'Failed';

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------
TRANSACTION_ID                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         5        105 Card
TXN10005                                           Failed
24-SEP-26        699


SQL> UPDATE Payment
  2  SET Payment_Status = 'Success'
  3  WHERE Payment_ID = 3;

1 row updated.

SQL> SELECT *
  2  FROM Payment
  3  WHERE Payment_ID = 3;

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------
TRANSACTION_ID                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         3        103 UPI
TXN10003                                           Success
22-SEP-26        449


SQL> UPDATE Payment
  2  SET Payment_Status = 'Failed'
  3  WHERE Payment_ID = 5;

1 row updated.

SQL> SELECT
  2      Payment_ID,
  3      Order_ID,
  4      Payment_Method,
  5      Transaction_ID,
  6      Payment_Status,
  7      Payment_Date,
  8      Amount
  9  FROM Payment
 10  WHERE Payment_Status IN ('Success', 'Failed')
 11  ORDER BY Payment_ID;

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------
TRANSACTION_ID                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
         1        101 UPI
TXN10001                                           Success
20-SEP-26        798

         2        102 Card
TXN10002                                           Success
21-SEP-26        599

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------
TRANSACTION_ID                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------

         3        103 UPI
TXN10003                                           Success
22-SEP-26        449

         4        104 COD
TXN10004                                           Success

PAYMENT_ID   ORDER_ID PAYMENT_METHOD
---------- ---------- --------------------
TRANSACTION_ID                                     PAYMENT_STATUS
-------------------------------------------------- --------------------
PAYMENT_D     AMOUNT
--------- ----------
23-SEP-26        899

         5        105 Card
TXN10005                                           Failed
24-SEP-26        699


SQL> SELECT
  2      Payment_Method,
  3      COUNT(*) AS Total_Transactions
  4  FROM Payment
  5  GROUP BY Payment_Method
  6  ORDER BY Payment_Method;

PAYMENT_METHOD       TOTAL_TRANSACTIONS
-------------------- ------------------
COD                                   1
Card                                  2
UPI                                   2

SQL> SELECT
  2      Payment_Method,
  3      SUM(Amount) AS Total_Amount
  4  FROM Payment
  5  GROUP BY Payment_Method
  6  ORDER BY Payment_Method;

PAYMENT_METHOD       TOTAL_AMOUNT
-------------------- ------------
COD                           899
Card                         1298
UPI                          1247

SQL> SELECT
  2      Payment_Method,
  3      COUNT(*) AS Successful_Transactions,
  4      SUM(Amount) AS Total_Amount
  5  FROM Payment
  6  WHERE Payment_Status = 'Success'
  7  GROUP BY Payment_Method
  8  ORDER BY Payment_Method;

PAYMENT_METHOD       SUCCESSFUL_TRANSACTIONS TOTAL_AMOUNT
-------------------- ----------------------- ------------
COD                                        1          899
Card                                       1          599
UPI                                        2         1247

SQL> SELECT
  2      o.Customer_ID,
  3      p.Payment_Method,
  4      p.Payment_Status,
  5      p.Amount
  6  FROM Payment p
  7  JOIN Orders o
  8      ON p.Order_ID = o.Order_ID
  9  ORDER BY o.Customer_ID;

CUSTOMER_ID PAYMENT_METHOD       PAYMENT_STATUS           AMOUNT
----------- -------------------- -------------------- ----------
          1 UPI                  Success                     798
          2 Card                 Success                     599
          3 UPI                  Success                     449
          4 COD                  Success                     899
          5 Card                 Failed                      699

SQL> SELECT
  2      Payment_ID,
  3      Order_ID,
  4      Transaction_ID,
  5      Payment_Method,
  6      Payment_Date,
  7      Payment_Status,
  8      Amount
  9  FROM Payment
 10  ORDER BY Payment_Date;

PAYMENT_ID   ORDER_ID TRANSACTION_ID
---------- ---------- --------------------------------------------------
PAYMENT_METHOD       PAYMENT_D PAYMENT_STATUS           AMOUNT
-------------------- --------- -------------------- ----------
         1        101 TXN10001
UPI                  20-SEP-26 Success                     798

         2        102 TXN10002
Card                 21-SEP-26 Success                     599

         3        103 TXN10003
UPI                  22-SEP-26 Success                     449


PAYMENT_ID   ORDER_ID TRANSACTION_ID
---------- ---------- --------------------------------------------------
PAYMENT_METHOD       PAYMENT_D PAYMENT_STATUS           AMOUNT
-------------------- --------- -------------------- ----------
         4        104 TXN10004
COD                  23-SEP-26 Success                     899

         5        105 TXN10005
Card                 24-SEP-26 Failed                      699


SQL> SELECT
  2      p.Payment_ID,
  3      o.Customer_ID,
  4      p.Order_ID,
  5      p.Transaction_ID,
  6      p.Payment_Method,
  7      p.Payment_Date,
  8      p.Payment_Status,
  9      p.Amount
 10  FROM Payment p
 11  JOIN Orders o
 12      ON p.Order_ID = o.Order_ID
 13  ORDER BY p.Payment_Date;

PAYMENT_ID CUSTOMER_ID   ORDER_ID
---------- ----------- ----------
TRANSACTION_ID                                     PAYMENT_METHOD
-------------------------------------------------- --------------------
PAYMENT_D PAYMENT_STATUS           AMOUNT
--------- -------------------- ----------
         1           1        101
TXN10001                                           UPI
20-SEP-26 Success                     798

         2           2        102
TXN10002                                           Card
21-SEP-26 Success                     599

PAYMENT_ID CUSTOMER_ID   ORDER_ID
---------- ----------- ----------
TRANSACTION_ID                                     PAYMENT_METHOD
-------------------------------------------------- --------------------
PAYMENT_D PAYMENT_STATUS           AMOUNT
--------- -------------------- ----------

         3           3        103
TXN10003                                           UPI
22-SEP-26 Success                     449

         4           4        104
TXN10004                                           COD

PAYMENT_ID CUSTOMER_ID   ORDER_ID
---------- ----------- ----------
TRANSACTION_ID                                     PAYMENT_METHOD
-------------------------------------------------- --------------------
PAYMENT_D PAYMENT_STATUS           AMOUNT
--------- -------------------- ----------
23-SEP-26 Success                     899

         5           5        105
TXN10005                                           Card
24-SEP-26 Failed                      699


SQL> SELECT
  2      Payment_Status,
  3      COUNT(*) AS Total_Transactions,
  4      SUM(Amount) AS Total_Amount
  5  FROM Payment
  6  GROUP BY Payment_Status
  7  ORDER BY Payment_Status;

PAYMENT_STATUS       TOTAL_TRANSACTIONS TOTAL_AMOUNT
-------------------- ------------------ ------------
Failed                                1          699
Success                               4         2745

SQL> COMMIT;

Commit complete.
