/*
04. What is the average MSRP across all products in the products table?
*/

USE classicmodels;
SELECT AVG(MSRP) 
FROM products;
/*
05. What is the average MSRP across all products in the products table?
For ‘total revenue,’ we will use the formula sum(quantityOrdered * priceEach). 
*/

USE classicmodels;
SELECT SUM(quantityOrdered*priceEach) AS "Total Revenue"
-- SELECT (quantityOrdered*priceEach) AS "Revenue"
FROM orderdetails;

/*
07. How many products does each productline have? 
Show only the productline(s) with 10 or more products. Order by most to least.
*/
USE classicmodels;
SELECT productLine, 
count(productLine) AS "Number of products"
FROM products
GROUP BY productLine
HAVING COUNT(productLine) > 10
ORDER BY productLine;

-- Error Code: 1140. In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'classicmodels.products.productCode'; this is incompatible with sql_mode=only_full_group_by
-- Error Code: 1055. Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'classicmodels.products.productCode' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
-- Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'FROM products GROUP BY productLine HAVING COUNT(productLine) > 10 ORDER BY produ' at line 2

/*
08. Show the ‘total revenue’ (i.e., sum (quantityOrdered * priceEach)) for each orderNumber. 
Order by highest to lowest revenue.
*/
USE classicmodels;
SELECT orderNumber, 
SUM(quantityOrdered * priceEach) AS "Total Revenue"
FROM orderdetails
GROUP BY orderNumber
ORDER BY SUM(quantityOrdered * priceEach) DESC;
-- Error Code: 1055. Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'classicmodels.orderdetails.productCode' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by

/*
09. How many orders have been cancelled (i.e., status = ‘cancelled’)?
*/
USE classicmodels;
SELECT COUNT(*) AS "Number of Orders"
FROM orders
WHERE status = "Cancelled";


USE classicmodels;
SELECT status,
COUNT(status) AS "Number of Orders"
FROM orders
WHERE status = "Cancelled"
GROUP BY status
