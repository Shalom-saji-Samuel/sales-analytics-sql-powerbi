USE sql_bi_workflow;
SET GLOBAL local_infile = 1;   

LOAD DATA LOCAL INFILE '(File_path)/Raw_sales.csv'
INTO TABLE raw_table
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(Order_id,@order_date,customer_name,product_name,category,quantity,unit_price,payment_method)
SET
raw_date_text = (@order_date),
order_date = STR_TO_DATE(@order_date, '%d-%m-%Y');

SELECT * FROM orders ;

#creating dim tables
#dim_customers :
CREATE TABLE customers AS 
SELECT customer_name ,
		ROW_NUMBER() OVER(ORDER BY customer_name) as customer_id 
FROM raw_table 
GROUP BY customer_name;

#dim_products + categories 
CREATE TABLE products AS
SELECT product_name ,
		ROW_NUMBER() OVER(ORDER BY product_name) as product_id ,
		category
FROM raw_table 
GROUP BY product_name , category;

#dim_payment_method 
CREATE TABLE payment_method AS 
SELECT TRIM(payment_method) as payment_method,
		ROW_NUMBER() OVER(ORDER BY TRIM(payment_method)) as method_id 
FROM raw_table 
GROUP BY TRIM(payment_method);

# creating the fact table
CREATE TABLE orders AS 
SELECT r.Order_id, r.order_date, c.customer_id, p.product_id, 
       r.quantity, r.unit_price, pm.method_id ,
       r.quantity * r.unit_price as total_rev
FROM raw_table r 
LEFT JOIN customers c ON r.customer_name = c.customer_name 
LEFT JOIN products p ON r.product_name = p.product_name 
LEFT JOIN payment_method pm ON TRIM(r.payment_method) = TRIM(pm.payment_method)
ORDER BY r.Order_id;   

# Some queries to test the newly created dataset 
# 1 . Rev per month 
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
		SUM(total_rev) AS revenue
FROM orders
GROUP BY month
ORDER BY month;
# 2 . Rev per product_category 
SELECT p.category , 
		SUM(o.total_rev) AS total_revenue 
FROM orders o 
JOIN products p ON o.product_id = p.product_id 
GROUP BY p.category;
# 3 . Rev per payment_method 
SELECT method_id , 
		SUM(total_rev) as total_revenue 
FROM orders 
GROUP BY method_id;
