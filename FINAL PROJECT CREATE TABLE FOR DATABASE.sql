
 -- Create the CUSTOMERS table :
 -----------------------------------------
CREATE TABLE CUSTOMERS (
    customer_id VARCHAR(50) PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    country VARCHAR(50),
   [ state] VARCHAR(50),
    region VARCHAR(50),
    segment VARCHAR(50),
    city VARCHAR(50),
    postal_code VARCHAR(20)  )

	----------------------------------------------------------------------------------
-- Create the ORDERS table :
-------------------------------
CREATE TABLE ORDERS (
    order_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50),
    order_date DATETIME,
    ship_date DATETIME,
    ship_mode VARCHAR(255),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id) )

--------------------------------------------------------------------------------------
-- Create the PRODUCTS table
-----------------------------------
CREATE TABLE PRODUCTS (
    product_id VARCHAR(50) PRIMARY KEY, 
    product_name VARCHAR(50),
    sales DECIMAL(10, 3), 
    category VARCHAR(50),
    subcategory VARCHAR(50) )
	----------------------------------------------------------------------------------

-- Create the table (for the Many-to-Many relationship between ORDERS and PRODUCTS)
CREATE TABLE Order_Details (
    order_id VARCHAR(50),
    product_id VARCHAR(50),
    PRIMARY KEY (order_id, product_id),  
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),  
    FOREIGN KEY (product_id) REFERENCES PRODUCTS(product_id) ) 


--------------------------------------------------------------------------------------
-- DISPLAY ALL TABLES:
-----------------------------
SELECT * FROM CUSTOMERS
SELECT * FROM ORDERS
SELECT * FROM PRODUCTS
SELECT * FROM Order_Details

--------------------------------------------------------------------------------------