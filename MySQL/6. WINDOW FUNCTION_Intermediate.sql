-- WINDOW FUNCTION

SELECT gender, AVG(salary) 
FROM employee_demographics dem

JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
;

-- PARTITION BY
SELECT dem.first_name, dem.last_name, gender, AVG(salary) OVER(PARTITION BY gender)
FROM employee_demographics dem

JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

-- ROLLING TOTAL
 


SELECT dem.employee_id, dem.first_name, 
dem.last_name, 
gender, 
salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_mnum, -- ROW NUMBER
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num, -- RANK
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS dense_rank_num -- DENSE Rank
FROM employee_demographics dem

JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

