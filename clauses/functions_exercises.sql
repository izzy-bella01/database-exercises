USE employees;

-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;
-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY  first_name, last_name;
-- SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

-- SELECT CONCAT(first_name, ' ',last_name)
-- FROM employees
-- WHERE last_name LIKE 'E%'
--   AND last_name LIKE '%e'
-- ORDER BY emp_no;

-- SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e' ORDER BY emp_no DESC;

-- SELECT * FROM employees WHERE
--     MONTH(birth_date) = 12
--     AND DAY(birth_date) = 25;

-- SELECT * FROM employees WHERE
--         (MONTH(birth_date) = 12
--             AND DAY(birth_date) = 25)
--         AND YEAR(hire_date) BETWEEN 1990 AND 1999;

-- SELECT * FROM employees WHERE
--     (MONTH(birth_date) = 12
--     AND DAY(birth_date) = 25)
-- AND YEAR(hire_date) BETWEEN 1990 AND 1999 ORDER BY hire_date DESC, birth_date DESC;

SELECT CONCAT(first_name, ' ', last_name, ' has worked ' ,DATEDIFF(CURRENT_DATE, hire_date), ' days at the company') FROM employees WHERE
        (MONTH(birth_date) = 12
            AND DAY(birth_date) = 25)
        AND YEAR(hire_date) BETWEEN 1990 AND 1999;

