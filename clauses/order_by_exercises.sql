USE employees;

-- PT 1
-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;
-- SELECT * FROM employees WHERE first_name LIKE 'E%';
-- SELECT * FROM employees WHERE last_name LIKE '%q%';
--
-- PT 2
-- SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';
--
-- SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e';
-- SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e';
-- SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';