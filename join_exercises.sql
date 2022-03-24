USE employees;

-- write a query that shows each department along with the name of the current manager for that department.
-- SELECT departments.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
-- FROM employees
-- JOIN dept_manager
-- ON dept_manager.emp_no = employees.emp_no
-- JOIN departments
-- ON departments.dept_no = dept_manager.dept_no
-- WHERE year(to_date) = 9999;

-- Find the name of all departments currently managed by women.
-- SELECT departments.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager'
-- FROM employees
-- JOIN dept_manager
-- ON dept_manager.emp_no = employees.emp_no
-- JOIN departments
-- ON departments.dept_no = dept_manager.dept_no
-- WHERE gender = 'F' AND year(to_date) = 9999;

-- Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title AS 'Title', COUNT(titles.title) AS 'Total'
FROM current_dept_emp
JOIN titles
ON titles.emp_no = current_dept_emp.emp_no
WHERE current_dept_emp.dept_no = 'd009' AND year(titles.to_date) = 9999
GROUP BY titles.title;
