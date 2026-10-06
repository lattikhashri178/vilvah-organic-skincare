CREATE TABLE Review (
    Review_ID NUMBER(10) PRIMARY KEY,
    Customer_ID NUMBER(10) NOT NULL,
    Product_ID NUMBER(10) NOT NULL,
    Review_Text VARCHAR2(500),
    Review_Date DATE,

    CONSTRAINT FK_REVIEW_CUSTOMER
        FOREIGN KEY (Customer_ID)
        REFERENCES Customer(Customer_ID),

    CONSTRAINT FK_REVIEW_PRODUCT
        FOREIGN KEY (Product_ID)
        REFERENCES Product(Product_ID)
);
Table created.
SQL> INSERT INTO Product
  2  VALUES (1002, 'Rose Face Cream', 1, 202, 399.00, '50g',
  3          'Rose, Shea Butter', 'Dry Skin', 'Vilvah', DATE '2027-10-15');

1 row created.
 INSERT INTO Product
  2  VALUES (1001, 'Aloe Vera Face Wash', 1, 201, 299.00, '100ml',
  3          'Aloe Vera, Neem', 'All Skin Types', 'Vilvah', DATE '2027-09-20');

1 row created.

SQL> INSERT INTO Product
  2  VALUES (1003, 'Coconut Hair Oil', 3, 203, 349.00, '200ml',
  3          'Coconut Oil, Vitamin E', 'All Hair Types', 'Vilvah', DATE '2027-11-10');

1 row created.

SQL> INSERT INTO Product
  2  VALUES (1004, 'Herbal Body Wash', 2, 204, 449.00, '250ml',
  3          'Herbal Extracts, Aloe Vera', 'All Skin Types', 'Vilvah', DATE '2027-12-05');

1 row created.

SQL> INSERT INTO Product
  2  VALUES (1005, 'Natural Lip Balm', 5, 205, 199.00, '10g',
  3          'Beeswax, Coconut Oil', 'All Skin Types', 'Vilvah', DATE '2027-12-20');

1 row created.

SQL> INSERT INTO Product
  2  VALUES (1006, 'Neem Face Pack', 7, 201, 279.00, '100g',
  3          'Neem, Turmeric, Multani Mitti', 'Oily Skin', 'Vilvah', DATE '2027-10-25');

1 row created.

 INSERT INTO Product
    VALUES (1007, 'Cucumber Moisturizer', 8, 202, 449.00, '100ml',
            'Cucumber, Aloe Vera, Vitamin E', 'Normal Skin', 'Vilvah', DATE '2027-11-18');

 row created.

 INSERT INTO Product
  2  VALUES (1008, 'Natural Face Cleanser', 9, 203, 329.00, '150ml',
  3          'Aloe Vera, Green Tea', 'Combination Skin', 'Vilvah', DATE '2027-12-12');

1 row created.

 COMMIT;

Commit complete.

 SELECT Product_ID, Product_Name
  2  FROM Product
  3  ORDER BY Product_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
      1001
Aloe Vera Face Wash

      1002
Rose Face Cream

      1003
Coconut Hair Oil


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
      1004
Herbal Body Wash

      1005
Natural Lip Balm

      1006
Neem Face Pack


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
      1007
Cucumber Moisturizer

      1008
Natural Face Cleanser


8 rows selected.
SQL> INSERT INTO Review
  2  VALUES (1, 1, 1001, 'Very good product and suitable for my skin.', DATE '2026-09-20');

1 row created.

SQL> INSERT INTO Review
  2  VALUES (2, 2, 1002, 'The product quality is excellent.', DATE '2026-09-21');

1 row created.

SQL> INSERT INTO Review
  2  VALUES (3, 3, 1003, 'Good product with a pleasant fragrance.', DATE '2026-09-22');

1 row created.

SQL> INSERT INTO Review
  2  VALUES (4, 4, 1004, 'The product is useful and effective.', DATE '2026-09-23');

1 row created.

SQL> INSERT INTO Review
  2  VALUES (5, 5, 1005, 'Nice product and good quality.', DATE '2026-09-24');

1 row created.

SQL> INSERT INTO Review
  2  VALUES (6, 1, 1006, 'Very effective face pack.', DATE '2026-09-25');

1 row created.

SQL> INSERT INTO Review
  2  VALUES (7, 2, 1007, 'Good moisturizer for daily use.', DATE '2026-09-26');

1 row created.

SQL> INSERT INTO Review
  2  VALUES (8, 3, 1008, 'Gentle and refreshing cleanser.', DATE '2026-09-27');

1 row created.

SQL> COMMIT;

Commit complete.

SQL> SELECT Product_ID, Product_Name
  2  FROM Product
  3  ORDER BY Product_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
      1001
Aloe Vera Face Wash

      1002
Rose Face Cream

      1003
Coconut Hair Oil


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
      1004
Herbal Body Wash

      1005
Natural Lip Balm

      1006
Neem Face Pack


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
      1007
Cucumber Moisturizer

      1008
Natural Face Cleanser


8 rows selected.

SQL> SELECT
  2      p.Product_ID,
  3      p.Product_Name,
  4      r.Review_ID,
  5      r.Customer_ID,
  6      r.Review_Text,
  7      r.Review_Date
  8  FROM Product p
  9  JOIN Review r
 10      ON p.Product_ID = r.Product_ID
 11  ORDER BY p.Product_ID;

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
      1001
Aloe Vera Face Wash
         1           1

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Very good product and suitable for my skin.
20-SEP-26


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
      1002
Rose Face Cream
         2           2

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
The product quality is excellent.
21-SEP-26


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
      1003
Coconut Hair Oil
         3           3

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Good product with a pleasant fragrance.
22-SEP-26


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
      1004
Herbal Body Wash
         4           4

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
The product is useful and effective.
23-SEP-26


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
      1005
Natural Lip Balm
         5           5

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Nice product and good quality.
24-SEP-26


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
      1006
Neem Face Pack
         6           1

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Very effective face pack.
25-SEP-26


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
      1007
Cucumber Moisturizer
         7           2

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Good moisturizer for daily use.
26-SEP-26


PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
      1008
Natural Face Cleanser
         8           3

PRODUCT_ID
----------
PRODUCT_NAME
--------------------------------------------------------------------------------
 REVIEW_ID CUSTOMER_ID
---------- -----------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Gentle and refreshing cleanser.
27-SEP-26


8 rows selected.
SQL> SELECT
  2      c.Customer_ID,
  3      c.First_Name,
  4      c.Last_Name,
  5      p.Product_Name,
  6      r.Review_Text,
  7      r.Review_Date
  8  FROM Review r
  9  JOIN Customer c
 10      ON r.Customer_ID = c.Customer_ID
 11  JOIN Product p
 12      ON r.Product_ID = p.Product_ID
 13  ORDER BY r.Review_Date;

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
          1 Aarav
Mehta
Aloe Vera Face Wash

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Very good product and suitable for my skin.
20-SEP-26


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
          2 Diya
Nair
Rose Face Cream

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
The product quality is excellent.
21-SEP-26


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
          3 Rohan
Verma
Coconut Hair Oil

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Good product with a pleasant fragrance.
22-SEP-26


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
          4 Kavya
Iyer
Herbal Body Wash

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
The product is useful and effective.
23-SEP-26


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
          5 Arjun
Singh
Natural Lip Balm

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Nice product and good quality.
24-SEP-26


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
          1 Aarav
Mehta
Neem Face Pack

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Very effective face pack.
25-SEP-26


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
          2 Diya
Nair
Cucumber Moisturizer

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Good moisturizer for daily use.
26-SEP-26


CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
          3 Rohan
Verma
Natural Face Cleanser

CUSTOMER_ID FIRST_NAME
----------- --------------------------------------------------
LAST_NAME
--------------------------------------------------
PRODUCT_NAME
--------------------------------------------------------------------------------
REVIEW_TEXT
--------------------------------------------------------------------------------
REVIEW_DA
---------
Gentle and refreshing cleanser.
27-SEP-26


8 rows selected.