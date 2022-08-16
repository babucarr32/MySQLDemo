-- USE world;

-- --------COUNTING THE NUMBER OF VALUES
-- SELECT count(*)
-- FROM country
-- WHERE IndepYear IS NULL

-- ------- SELCT COUNTRIES THAT START WITH G
-- SELECT *
-- FROM country
-- WHERE name REGEXP '^G'

-- ----------- SELECT COUNTRY WITH THE HIGHEST SurfaceArea
-- SELECT * 
-- FROM country
-- ORDER BY SurfaceArea DESC
-- LIMIT 1

-- --------SELECT COUNTRY WITH Islamic Emirate
-- SELECT * 
-- FROM country
-- WHERE GovernmentForm = 'Islamic Emirate'

-- ----------WAS SEARCHING FOR SAUDI ARABIA
-- SELECT * 
-- FROM country 
-- WHERE NAME REGEXP '^Saudi'

-- -----SELECT COUNTRY WITH THE TOP 5 HIGHEST NUMBER
-- SELECT *
-- FROM COUNTRY
-- ORDER BY Population DESC
-- LIMIT 5

-- -----SELECT COUNTRY WITH THE TOP 50 	LOWEST NUMBER
-- SELECT *
-- FROM COUNTRY
-- ORDER BY Population
-- LIMIT 50

USE sql_store;
SELECT c.first_name,
		c.last_name,
        c.address,
        p.name AS products,
        oi.quantity
FROM customers c
JOIN order_items oi
	ON oi.order_id = c.customer_id
JOIN products p
	ON p.product_id = oi.product_id
















