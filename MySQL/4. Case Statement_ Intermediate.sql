-- CASE STAMENT (add LOGIC)

SELECT first_name,
last_name,
age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >= 51 THEN "On the Death Door"
END AS age_bracket
FROM employee_demographics;



-- Pay increase and BONUS
-- < 50000 = 5%
-- > 50000 = 7%
-- Finance = 10% Bonus

SELECT first_name, last_name, salary, dept_id,

CASE
	WHEN salary < 50000 THEN salary * 1.05
    WHEN salary > 50000 THEN salary * 1.07
END AS New_salary,

CASE
	WHEN dept_id = 6 THEN salary * .10
END AS BONUS
FROM employee_salary AS emp_sal
;

SELECT *
FROM employee_salary;

SELECT *
FROM parks_departments;