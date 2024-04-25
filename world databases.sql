#PART - 2 - WORLD Databases Tasks

use world;
show tables;

#TASK -1 - Using Count Number Of cities in USA
use world;
show tables;
SELECT COUNT(DISTINCT Name) AS USA_city_count FROM city WHERE CountryCode='USA' GROUP BY CountryCode;

#TASK 2 - ARGENTINA AVG Life Expectancy and Population
use world;
show tables;
SELECT *FROM country;
SELECT Name,Code,Population,round(AVG(LifeExpectancy),2) AS Avg_Life_Exp FROM country WHERE Code='ARG' GROUP BY Code;

#TASK 3 - Country with Highest Life Expectancy Using ORDER BY,LIMIT
use world;
show tables;
SELECT Name,LifeExpectancy FROM country ORDER BY LifeExpectancy DESC LIMIT 1;

#TASK 4 - 25 cities starting with letter'F'

use world;
show tables;
SELECT Name FROM city WHERE Name LIKE 'F%' LIMIT 25;

#TASK 5 - Display columns Id,Name, Population From City table Limit to first 10 rows

use world;
show tables;
SELECT ID,Name,Population FROM city LIMIT 10;

# Task 5 -Retrieve Id,Name,Population - rows 31-40 From City Table
use world;
show tables;
SELECT ID,Name,Population FROM city ORDER BY ID LIMIT 30, 10;

#Task 6
#City with Population >2000000

use world;
show tables;
SELECT Id,Name,Population FROM city WHERE Population>2000000 ORDER BY Population;

#TASK 7
#City names Starting with "Be"
use world;
show tables;
SELECT Name FROM city WHERE Name LIKE "Be%";

#TASK 8 
#Cities Population Between 500000-1000000
SELECT Name,Population FROM city WHERE Population BETWEEN 500000 AND 1000000 ORDER BY Population;

#TASK 9
#City With Lowest Population
SELECT Name,Population FROM city ORDER BY Population ASC LIMIT 1;

#All the City names in Ascending order 
SELECT DISTINCT(Name) FROM city ORDER BY Name ASC;

#Country with Largest Population
SELECT Name,Population FROM country ORDER BY Population DESC LIMIT 1;

#  JOINS TASKS  #

#Find Capital of Spain (ESP)
use world;
SELECT * FROM country;
SELECT * FROM city;
SELECT co.Name AS Country,c.CountryCode,c.Name AS Capital,co.Capital FROM country AS co INNER JOIN city AS c ON c.ID=co.Capital AND co.Code='ESP';

#Country with Highest Life Expectancy Use JOINS

SELECT c1.Name AS Country_high_life_expectancy,c1.LifeExpectancy FROM country AS c1 JOIN (SELECT Max(LifeExpectancy) AS life FROM country) AS c2 ON c1.LifeExpectancy = c2.life;

#	Create a SQL statement to find all cities from the Europe continent. Use JOINS

SELECT DISTINCT c.Name AS Cities_in_Europe FROM city AS c INNER JOIN country AS co ON c.CountryCode=co.Code AND co.Continent='Europe';

# Create a SQL statement to find the most populated city in the city table. USE JOINS

SELECT c.name FROM city AS c LEFT JOIN city AS c1 ON c.Population < c1.Population WHERE c1.Population IS NULL;

