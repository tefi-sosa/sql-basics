-- #1 --
SELECT first_name, last_name 
FROM employee 
WHERE city = 'Calgary';

-- #2 --
SELECT MAX(birth_date) 
from employee;

SELECT birth_date
FROM employee
ORDER BY birth_date DESC
LIMIT 1

-- #3 --
SELECT MIN(birth_date) 
from employee;

SELECT birth_date
FROM employee
ORDER BY birth_date ASC
LIMIT 1

-- #4 --
SELECT * 
FROM employee 
WHERE reports_to = 2;

SELECT *
FROM employee
WHERE reports_to = ( SELECT employee_id FROM employee WHERE first_name = 'Nancy')

-- #6 --
SELECT COUNT(*) 
FROM employee 
WHERE city = 'Lethbridge';