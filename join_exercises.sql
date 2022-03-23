USE employees;

-- write a query that shows each department along with the name of the current manager for that department.
SELECT departments.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
FROM employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
JOIN departments
ON departments.dept_no = dept_manager.dept_no
WHERE year(to_date) = 9999;

-- SELECT departments.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
-- FROM employees
-- JOIN dept_manager
-- ON dept_manager.emp_no = employees.emp_no
-- JOIN departments
-- ON departments.dept_no = dept_manager.dept_no
-- WHERE gender = 'F';
