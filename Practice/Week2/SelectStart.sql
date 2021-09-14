#SELECT Name, Population FROM city ORDER BY Population Desc;
USE classicmodels;
# Following fetches everything from the database
  SELECT * FROM customers;
# Following fetches just one column from the database, keep columns in the comma
  SELECT city,phone,country FROM customers;
# Following Count function can operate on the selected recorrd.
  SELECT COUNT(country) FROM customers;
  
  #Use the WHERE caluse to narrow down the results
  SELECT customerName, city, state, country FROM customers WHERE country = "USA";
  
#Use the WHERE caluse to narrow down the results
  SELECT * 
  FROM customers 
  WHERE country = "USA" AND salesRepEmployeeNumber=1166
  ORDER BY creditLimit DESC
  LIMIT 3;
/*
-- SELECT column you want
		--DISTINCT will only print out the unique value
        --COUNT will just give the cound
        --SUM will calculate SUM of all fields of intreset e.e. SELECT SUM(duration)
        --AVG will select the average of the seelcted field e.g. SELECT AVG(duration)
        --MIN will select the minimum of the seelcted field e.g. SELECT MIN(duration)
        --MAX will select the maximum of the seelcted field e.g. SELECT MAX(duration)
        -- + - * /, can also be used on seceted cells e.g SELECT title,(duration/60.0) AS duration_hours FROM films
        SELECT (AVG(duration)/60.0) AS avg_duration_hours FROM films
        
        
# FROM the table you want in the database
# WHERE the logical condition is met, 
	# AND OR can be used, for numberical use >, < =, <>. For text use = and ''
    # LIKE and NOT LIKE, is used for comapring similar text. similar to regex _(Mathc one digit) % match 0 or more
	# Close cousin is BETWEEN e.g. BETWEEEN X AND Y --> X & Y are inclusive
    # IN can be used to make an array and to check for OR e.g. WHERE language IN ('English', 'Hindi', 'French')
    # IS NULL is used to filter out the invalid or missing values. e.g. WHERE budget IS NULL
# HAVING -- A close cousin of WHERE but allows for having aggregate functions as the search criteria. example
	-- HAVING COUNT(TITLE) > 10 will search years where there were >10 films
    
# ORDER BY sets forth rules how to display the results, can be DESC or ASC
	-- ORDER BY can be used with two colums, first key will be first column then second ... e.g. ORDER BY name, birthdate
# LIMIT N controls how much values to print, prints N
# OFFSET will skip the N element

# GROUP BY sets multiple group based on columns, recommeneded to do it for less distinict values. e.g. sex
	-- e.g. SELECT sex, count(*) FROM employees GROUP BY sex ORDER BY count DESC;
    SELECT release_year, AVG(duration)
	FROM films
	GROUP BY release_year



*/

  
  #count unique and distinct values
 SELECT COUNT(DISTINCT(language))
FROM films;
  
  SELECT * FROM customers;
#Select firstName, lastName, officeCode FROM employees ORDER BY officeCode ;
SELECT COUNT(country) FROM customers;
-- good examples
/*
Question:
 Difference between WHERE release_year IN (2000, 2012) and 
 WHERE release_year BETWEEN 2000 AND 2012



/*
SELECT 
    --COUNT(*) AS total,
    COUNT(deathdate) * 100.0 / COUNT(*) AS percentage_dead
FROM people*


/*
--Good Example 2
SELECT release_year, country, MAX(budget)
FROM films
GROUP BY release_year, country
ORDER BY release_year, country
Get the release year, country, and highest budget spent making a film for each year, for each country. Sort your results by release year and country.

--Good Example 3
In how many different years were more than 200 movies released?

SELECT release_year, COUNT(*)
FROM films
GROUP BY release_year
HAVING COUNT(title) > 200
ORDER BY release_year
*/

/* Good Example 4

SELECT country, 
AVG(budget) as avg_budget, 
AVG(gross) as avg_gross
FROM films
GROUP BY country
HAVING (COUNT(title) > 10)
ORDER BY country
LIMIT 5
*/

/* Good example 3
Now you're going to write a query that returns the average budget and average gross earnings for films in each year after 1990, if the average budget is greater than $60 million.
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000

*/

/