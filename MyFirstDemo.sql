USE sql_store;

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







