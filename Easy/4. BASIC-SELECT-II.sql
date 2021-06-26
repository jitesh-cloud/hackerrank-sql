/* Query the two cities in STATION with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, 
choose the one that comes first when ordered alphabetically.*/
SELECT CITY,LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY), CITY LIMIT 1;
SELECT CITY,LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;


/* Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
Your result cannot contain duplicates.*/
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%';


/*Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
Your result cannot contain duplicates.*/
select distinct city from station
where city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u';

/*Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. 
Your result cannot contain duplicates.*/
SELECT DISTINCT CITY FROM STATION
WHERE (CITY LIKE 'A%' OR CITY LIKE 'E%' OR CITY LIKE 'I%' OR CITY LIKE 'O%' OR CITY LIKE 'U%') AND (CITY LIKE '%A' OR CITY LIKE '%E' OR CITY LIKE '%I' OR CITY LIKE '%O' OR CITY LIKE '%U');

/*Query the list of CITY names from STATION that do not start with vowels. 
Your result cannot contain duplicates.*/
SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^aeiou]';

/*Query the list of CITY names from STATION that do not end with vowels. 
Your result cannot contain duplicates.*/
select distinct city from station
where city not like '%a'
and city not like '%e'
and city not like '%o'
and city not like '%i'
and city not like '%u';
