SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'

SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM dept_manager AS dm
JOIN employees AS e
ON dm.emp_no = e.emp_no
JOIN departments d
ON dm.dept_no = d.dept_no
ORDER BY d.dept_name ASC;

SELECT de.dept_no,e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
ORDER BY d.dept_name ASC;

SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name ASC;

SELECT e.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
ORDER BY d.dept_name ASC;

SELECT last_name, count(emp_no) as num_employees_with_same_last_name
FROM employees
GROUP BY last_name
ORDER BY num_employees_with_same_last_name DESC;