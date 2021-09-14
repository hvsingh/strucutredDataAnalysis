-- Example 1

USE classicmodels;
SELECT *
FROM customers
WHERE state ='NY'

SELECT shippedDate, requiredDate
FROM orders
WHERE shippedDate > requiredDate;
-- WHERE hire_date = '1989-09-19'

