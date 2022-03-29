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
-- SELECT title , COUNT(title)
-- FROM titles
-- JOIN dept_emp ON titles.emp_no = dept_emp.emp_no
-- JOIN departments ON dept_emp.dept_no = departments.dept_no
-- WHERE departments.dept_name = 'Customer Service'
-- AND YEAR (dept_emp.to_date) = 9999
-- AND YEAR (titles.to_date) = 9999
-- GROUP BY titles.title;

-- Find the current salary of all current managers.
-- SELECT departments.dept_name AS 'Department Name', CONCAT(first_name, ' ', last_name) AS 'Department Manager', salaries.salary AS 'Salary'
-- FROM employees
-- JOIN dept_manager
-- ON dept_manager.emp_no = employees.emp_no
-- JOIN departments
-- ON departments.dept_no = dept_manager.dept_no
-- JOIN salaries
-- ON salaries.emp_no = employees.emp_no
-- WHERE year(dept_manager.to_date) = 9999
-- AND year(salaries.to_date) = 9999;
