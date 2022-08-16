-- USE sql_store;

-- SELECT *
-- FROM CUSTOMERS
-- WHERE customer_id = 1

-- Use select to select the columns
-- SELECT CITY, ADDRESS
-- FROM CUSTOMERS
-- WHERE customer_id = 2


-- To order items
-- SELECT *
-- FROM CUSTOMERS
-- -- WHERE customer_id = 2
-- ORDER BY first_name

-- Use the AS method to specify new vars(columns)
-- SELECT first_name, last_name, points, points + 1.3 AS New_Points
-- FROM CUSTOMERS


-- TO get unique values to remove duplicates
-- SELECT *
-- FROM CUSTOMERS

-- EXERCISE
-- SELECT name, unit_price, unit_price * 1.1 AS new_price
-- FROM products

-- SELECT * 
-- FROM customers
-- WHERE state NOT IN ('VA', 'TN', 'CA')

-- EXERCISE
-- SELECT * 
-- FROM products
-- WHERE quantity_in_stock IN ('49', '38', '72')

-- SELECT * 
-- FROM customers
-- WHERE points BETWEEN 1000 AND 3000

-- EXERCISE
-- SELECT * 
-- FROM customers
-- WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01'

-- SELECT *
-- FROM customers
-- WHERE last_name LIKE 'b%' -- last name starts with b
-- WHERE last_name  LIKE '%b%' -- Where b is found somewhere in the last name
-- WHERE last_name LIKE '_____y' -- last name six characters and last letter is y
-- WHERE last_name LIKE 'b____y' -- six characters long where first name is B and last name is Y

-- EXERCISE
-- SELECT * 
-- FROM customers
-- WHERE address LIKE '%Trail%' OR address LIKE '%Avenue%'  OR phone LIKE '%9'

-- SELECT * 
-- FROM customers
-- WHERE last_name REGEXP 'field' -- have field inn their lastname
-- WHERE last_name REGEXP 'field|mac|rose' -- in their last name
-- WHERE last_name REGEXP '^field|mac|rose' -- should start with these
-- WHERE last_name REGEXP 'field$|mac|rose' -- should end with these
-- WHERE last_name REGEXP '[gim]e' -- have ge, ie, me in them
-- WHERE last_name REGEXP '[a-h]e' -- range a-h have concates with e in them

-- EXERCISE
-- SELECT * 
-- FROM customers
-- WHERE first_name REGEXP 'Elka|Ambur' -- first name are
-- WHERE last_name REGEXP 'ey$|^on' -- last name starts or ends
-- WHERE last_name REGEXP '^my|se' -- last name ends
-- WHERE last_name REGEXP '[b]r|[b]u' -- You can also us 'b[ru]' or 'br|bu'

-- Get Null values
-- SELECT * 
-- FROM customers
-- WHERE phone IS NULL 

-- EXERCISE 
-- SELECT * 
-- FROM orders
-- WHERE shipped_date IS NULL


-- ORDER ITEMS
-- SELECT *
-- FROM customers
-- ORDER BY state -- order by state
-- ORDER BY first_name, last_name -- order by these two
-- ORDER BY first_name DESC -- order by first_name by descending order

-- EXERCISE
-- SELECT *, unit_price * quantity AS Total
-- FROM order_items 
-- WHERE order_id = 2
-- ORDER BY Total DESC

-- THE LIMIT CLAUSE
-- SELECT *
-- FROM customers
-- LIMIT 3 -- Select only the first three items
-- LIMIT 6, 3 -- Select range 7-9
-- LIMIT 3, 3 -- Select range 4-6

-- EXERCISE
-- SELECT THE THREE LOYAL CUSTOMERS
-- SELECT * 
-- FROM CUSTOMERS
-- ORDER BY points DESC
-- LIMIT 3

-- -------------------------------------- MULTIPLE TABLES INNER JOIN -------------------------------------
-- SELECT * 
-- FROM orders
-- JOIN customers ON orders.customer_id = customers.customer_id

-- SELECT order_id, first_name,  last_name, orders.customer_id
-- FROM orders
-- JOIN customers ON orders.customer_id = customers.customer_id

-- ------- USING ALIAS
-- SELECT order_id, first_name,  last_name, o.customer_id
-- FROM orders o
-- JOIN customers c ON o.customer_id = c.customer_id

-- EXERCISE
-- SELECT o.order_id, p.product_id, quantity, o.unit_price
-- FROM order_items o
-- JOIN products p ON p.product_id = o.product_id

-- -------------------------------------- CROSS DATABASE JOIN -------------------------------------
-- USE sql_inventory;

-- SELECT * 
-- FROM sql_store.order_items oi
-- JOIN products p ON oi.product_id = p.product_id

-- -------------------------------------- SELF JOIN -------------------------------------
-- USE sql_hr;

-- SELECT *
-- FROM employees e
-- JOIN employees m ON e.reports_to = m.employee_id

-- USE sql_hr;

-- SELECT e.employee_id, e.first_name, m.first_name AS manager
-- FROM employees e
-- JOIN employees m ON e.reports_to = m.employee_id

-- -------------------------------------- JOINING MULTIPLE TABLES -------------------------------------
-- USE sql_store;
-- SELECT o.order_id, c.first_name, c.last_name, os.name AS status
-- FROM orders o
-- JOIN customers c ON o.customer_id = c.customer_id
-- JOIN order_statuses os ON o.status = os.order_status_id

-- EXERCISE
-- USE sql_invoicing;
-- SELECT clients.name, clients.address, payments.date, payment_methods.name AS payment_method
-- FROM payments
-- JOIN clients ON  payments.client_id = clients.client_id
-- JOIN payment_methods ON payments.payment_method = payment_methods.payment_method_id






