-- STRING FUNCTION

SELECT LENGTH('skyfall');

SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2
;

-- EXAMPLE OF UPPERCASE
SELECT UPPER('sky');
SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

-- EXAMPLE OF LOWERCASE
SELECT LOWER('SKY');

SELECT first_name, LOWER(first_name)
FROM employee_demographics
;



-- TRIM

SELECT TRIM('           sky         '); -- TRIM
SELECT LTRIM('           sky         '); -- LEFT TRIM
SELECT RTRIM('           sky         '); -- RIGHT TRIM


-- SUBSTRING
SELECT first_name, 
LEFT(first_name, 4),
RIGHT(first_name, 4),
SUBSTRING(first_name, 3, 2), 
birth_date,
SUBSTRING(birth_date, 6, 2)
FROM employee_demographics;


-- REPLACE

SELECT first_name, REPLACE(first_name,'a', 'z')
FROM employee_demographics;


-- LOCATE
SELECT LOCATE('x', 'Alexander');

SELECT first_name, LOCATE('An', first_name)
FROM employee_demographics;

-- CONCAT
SELECT first_name, last_name,
CONCAT(first_name, ' ',  last_name) AS full_name
FROM employee_demographics;
