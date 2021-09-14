/*
-- Example 6
06. Show everything from the products table where ‘Car’ is somewhere in the productLine. Then, order by MSRP (largest to smallest). Show only the first twenty rows.
*/

USE classicmodels;

SELECT *
FROM products
WHERE productLine LIKE '%Car%'
ORDER BY MSRP DESC
LIMIT 20;

/*
-- Example 
07. Show customerName, contactFirstName, contactLastName, and creditLimit where the contactFirstName only has 5 characters (i.e., 5 characters exactly, spacing not included).
Order by contactLastName (A-Z). You should use a TRIM function around contactFirstName in your SELECT statement to remove any leading and/or trailing spaces from this string
field. You should also use the TRIM function, TRIM(contactFirstName), with your WHERE clause to ensure you filter on people with only 5-character first names. There are a few ways
to solve for this. Try to solve this differently compared to how former students have solved it in this DB forum.
*/

USE classicmodels;
SELECT customerName, 
TRIM(contactFirstName) AS prettyFirstName, 
contactLastName, 
creditLimit
FROM customers
WHERE TRIM(contactFirstName) LIKE '_____';
-- WHERE prettyFirstName LIKE '_____';


/*
-- Example 08
08. Show productName, productLine, 
and productDescription where the productScale is 1:10. Order by productLine (A-Z), then order by productName (Z-A).to solve for this. 
Try to solve this differently compared to how former students have solved it in this DB forum.

*/

USE classicmodels;
SELECT productName,
productLine,
productDescription
FROM products
WHERE productScale LIKE '1:10'
ORDER BY productLine DESC, productNAME DESC;


