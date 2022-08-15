USE world;

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



















