--> 1
SELECT * FROM CITY WHERE ID = 1661;

--> 2
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

--> 3
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN';

--> 4 Query a list of CITY and STATE from the STATION table.
SELECT CITY,STATE FROM STATION;

--> 5 Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT CITY FROM STATION WHERE ID % 2 = 0;
