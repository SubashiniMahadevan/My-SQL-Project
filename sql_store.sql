#PART - 1

# TASK -1 - change the points to times by 10 and plus 100, show a discount header and changing the (point + 10) *100

use sql_store;
show tables;
SELECT last_name,first_name,points,(points+10)*100 AS discount_factor FROM customers;

# TASK -2- unit price, and new column called new price which is based on this expression, (unit price * 1.1 ).

use sql_store;
show tables;
SELECT name,unit_price,(unit_price*1.1) AS new_price FROM products ORDER BY name ASC;

# TASK -3 -  find all the customers with a birth date of > '1990-01-01'
use sql_store;
show tables;
SELECT customer_id,CONCAT(first_name,' ',last_name) AS Customer_name,birth_date FROM customers WHERE birth_date>'1990-01-01';
SELECT * FROM customers WHERE birth_date>'1990-01-01';


# TASK - 4 - query to find out the name of the product with most amount in stock.

use sql_inventory;
show tables;
SELECT * FROM products;
# using Sub query 
SELECT  name,quantity_in_stock FROM products WHERE quantity_in_stock = (SELECT max(quantity_in_stock) FROM products);
#using ORDER BY and LIMIT
SELECT  name,quantity_in_stock FROM products ORDER BY quantity_in_stock DESC LIMIT 1;

# TASK -5 - Most Expensive Product name #

use sql_inventory;
show tables;
SELECT * FROM products;
# using sub query
SELECT name FROM products WHERE unit_price=(SELECT max(unit_price) FROM products);
SELECT p.name AS most_expensive_product FROM products p JOIN(SELECT max(unit_price) As max_unit_price FROM products) AS p1 ON p.unit_price =p1.max_unit_price;
# using joins
SELECT p.name AS most_expensive_product FROM products p JOIN (SELECT max(unit_price) AS unit_price1 FROM products) AS prod ON p.unit_price = prod.unit_price1;

#TASK - 6 - Find out the first name, last name, address and the birthdate of the oldest customer.

use sql_store;
show tables;
SELECT * FROM customers;
SELECT first_name,last_name,address,birth_date FROM customers ORDER BY birth_date ASC LIMIT 1;

