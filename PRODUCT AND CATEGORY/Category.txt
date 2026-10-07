CREATE TABLE Category (
  2      Category_ID NUMBER(10),
  3      Category_Name VARCHAR2(50) NOT NULL,
  4      Category_Description VARCHAR2(200),
  5      Status VARCHAR2(20),
  6  CONSTRAINT PK_CATEGORY PRIMARY KEY (Category_ID),
  7  CONSTRAINT UQ_CATEGORY_NAME UNIQUE (Category_Name),
  8  CONSTRAINT CHK_CATEGORY_STATUS
  9   CHECK (Status IN ('Active', 'Inactive'))
 10  );

Table created.

SQL> INSERT INTO Category VALUES(1, 'Face Care', 'Products for facial skincare', 'Active');

1 row created.

SQL> INSERT INTO Category VALUES(2, 'Body Care', 'Products for body skincare', 'Active');

1 row created.

SQL> INSERT INTO Category VALUES(3, 'Hair Care', 'Products for healthy hair and scalp', 'Active');

1 row created.
INSERT INTO Category VALUES(4, 'Bath and Shower', 'Products for bathing and cleansing', 'Active');

1 row created.

SQL> INSERT INTO Category VALUES(5, 'Lip Care', 'Products for lip moisturizing', 'Active');

1 row created.

SQL> INSERT INTO Category VALUES(6, 'Skin Care', 'Products for overall skin health', 'Active');

1 row created.

SQL> INSERT INTO Category VALUES(7, 'Face Masks', 'Products for face treatment', 'Active');

1 row created.

SQL> INSERT INTO Category VALUES(8, 'Moisturizers', 'Products for skin hydration', 'Active');

1 row created.

SQL> INSERT INTO Category VALUES(9, 'Cleansers', 'Products for cleansing skin', 'Active');

1 row created.

SQL> INSERT INTO Category VALUES(10, 'Sunscreen', 'Products for sun protection', 'Active');

1 row created.

SQL> SELECT * FROM Category;

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
CATEGORY_DESCRIPTION
--------------------------------------------------------------------------------
STATUS
--------------------
          1 Face Care
Products for facial skincare
Active

          2 Body Care
Products for body skincare
Active

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
CATEGORY_DESCRIPTION
--------------------------------------------------------------------------------
STATUS
--------------------

          3 Hair Care
Products for healthy hair and scalp
Active

          4 Bath and Shower
Products for bathing and cleansing

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
CATEGORY_DESCRIPTION
--------------------------------------------------------------------------------
STATUS
--------------------
Active

          5 Lip Care
Products for lip moisturizing
Active

          6 Skin Care

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
CATEGORY_DESCRIPTION
--------------------------------------------------------------------------------
STATUS
--------------------
Products for overall skin health
Active

          7 Face Masks
Products for face treatment
Active


CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
CATEGORY_DESCRIPTION
--------------------------------------------------------------------------------
STATUS
--------------------
          8 Moisturizers
Products for skin hydration
Active

          9 Cleansers
Products for cleansing skin
Active

CATEGORY_ID CATEGORY_NAME
----------- --------------------------------------------------
CATEGORY_DESCRIPTION
--------------------------------------------------------------------------------
STATUS
--------------------

         10 Sunscreen
Products for sun protection
Active


10 rows selected.

SQL> COMMIT;

Commit complete.
SELECT
  2      c.Category_ID,
  3      c.Category_Name,
  4      COUNT(p.Product_ID) AS Total_Products
  5  FROM Category c
  6  LEFT JOIN Product p
  7  ON c.Category_ID = p.Category_ID
  8  GROUP BY c.Category_ID, c.Category_Name
  9  ORDER BY c.Category_ID;

CATEGORY_ID CATEGORY_NAME                                      TOTAL_PRODUCTS
----------- -------------------------------------------------- --------------
          1 Face Care                                                       1
          2 Body Care                                                       1
          3 Hair Care                                                       1
          4 Bath and Shower                                                 1
          5 Lip Care                                                        1
          6 Skin Care                                                       1
          7 Face Masks                                                      1
          8 Moisturizers                                                    1
          9 Cleansers                                                       0
         10 Sunscreen                                                       0

10 rows selected.
