show databases;
use employees;
show tables;

SELECT * 
FROM employees
WHERE
first_name in (
'Irena', 'Vidya', 'Maya'
);
-- 709

SELECT * 
FROM employees
WHERE
first_name = 'Irena' OR
first_name = 'Vidya' OR
first_name = 'Maya'
;
-- 709. It matches

SELECT * 
FROM employees
WHERE
(
first_name = 'Irena' OR
first_name = 'Vidya' OR
first_name = 'Maya'
) AND
gender = 'M'
;
-- 441

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
;

SELECT *
FROM employees
WHERE 
last_name LIKE 'E%'
OR 
last_name LIKE '%E'
;

SELECT *
FROM employees
WHERE last_name LIKE 'E%e'
;

SELECT *
FROM employees
WHERE last_name LIKE '%e'
;
-- 1000 employees whos last name
-- ends with e

SELECT *
FROM employees
WHERE 
hire_date LIKE '199%'
;
-- 1000 employees hired in the 90's

SELECT *
FROM employees
WHERE 
birth_date LIKE '%12-25'
;
-- 842 Employees born on christmas


SELECT *
FROM employees
WHERE 
hire_date LIKE '199%'
AND
birth_date LIKE '%12-25'
;
-- 362 employees hired in the 90's
-- and born on christmas

SELECT *
FROM employees
WHERE
last_name LIKE '%q%'
;
-- 1000 employees have a 'q' in
-- their name

SELECT *
FROM employees
WHERE 
last_name like '%q%'
AND
last_name NOT LIKE '%qu%'
;
-- 547 employees with 'q' in their
-- last name but not 'qu'



/* Find all employees with first names 
'Irena', 'Vidya', or 'Maya', 
and order your results returned by first name. 
In your comments, answer: 
What was the first and last name in the first row 
of the results? 
What was the first and last name of the last person 
in the table?*/

SELECT * 
FROM employees
WHERE
first_name = 'Irena' OR
first_name = 'Vidya' OR
first_name = 'Maya'
ORDER BY first_name DESC
;
-- Irena Reutenauer
-- Vidya Awdeh

/* Find all employees with first names 
'Irena', 'Vidya', or 'Maya', 
and order your results returned by 
first name and then last name. 
In your comments, answer: 
What was the first and last name 
in the first row of the results? 
What was the first and last name 
of the last person in the table?*/

SELECT * 
FROM employees
WHERE
first_name = 'Irena' OR
first_name = 'Vidya' OR
first_name = 'Maya'
ORDER BY first_name DESC, last_name DESC
;
-- Irena Acton
-- Vidya Zweizig


/* Find all employees with first names 
'Irena', 'Vidya', or 'Maya', 
and order your results returned by 
last name and then first name. 
In your comments, answer: 
What was the first and last name 
in the first row of the results? 
What was the first and last name 
of the last person in the table?*/

SELECT * 
FROM employees
WHERE
first_name = 'Irena' OR
first_name = 'Vidya' OR
first_name = 'Maya'
ORDER BY last_name DESC, first_name DESC
;
-- Irena Acton
-- Maya Zyda

/* Write a query to to find all employees 
whose last name starts and ends with 'E'. 
Sort the results by their employee number. 
Enter a comment with the number of employees 
returned, the first employee number and 
their first and last name, and the last 
employee number with their first and last name.*/

SELECT *
FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY emp_no
;
-- 899 employees returned
-- 10021, Ramzi Erde
-- 499648, Tadahiro Erde





/* Write a query to to find all employees 
whose last name starts and ends with 'E'. 
Sort the results by their hire date, so 
that the newest employees are listed first. 
Enter a comment with the number of employees 
returned, the name of the newest employee, 
and the name of the oldest employee.*/

SELECT *
FROM employees
WHERE last_name LIKE 'E%e'
ORDER BY hire_date DESC
;
-- 899 employees returned
-- Teiji Eldridge
-- Sergi Erde






/* Find all employees hired in the 90s and 
born on Christmas. Sort the results so that 
the oldest employee who was hired last is 
the first result. 
Enter a comment with the number of employees 
returned, the name of the oldest employee 
who was hired last, and the name of the 
youngest employee who was hired first.*/


SELECT * 
FROM employees
WHERE birth_date LIKE '%12-25'
AND
hire_date LIKE '199%'
ORDER BY birth_date, hire_date DESC
;
-- 362 employees returned
-- Khun Bernini
-- Douadi Pettis







