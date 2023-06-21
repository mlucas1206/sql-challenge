--DATA ANALYSIS

-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT a.emp_no, last_name, first_name, salary FROM employees a
JOIN salaries b
ON a.emp_no = b.emp_no;

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date >= '1/1/1986' AND hire_date < '1/1/1987';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT a.dept_no, c.dept_name, a.emp_no, b.last_name, b.first_name FROM department_manager a
JOIN employees b
ON a.emp_no = b.emp_no
JOIN departments c
ON a.dept_no = c.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT b.dept_no, a.emp_no, a.last_name, a.first_name, c.dept_name FROM employees a
JOIN department_employees b
ON a.emp_no = b.emp_no
JOIN departments c
ON b.dept_no = c.dept_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT a.emp_no, a.last_name, a.first_name FROM employees a
JOIN department_employees b
ON a.emp_no = b.emp_no
WHERE b.dept_no IN (
	SELECT dept_no FROM departments
	WHERE dept_name = 'Sales');

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT a.emp_no, a.last_name, a.first_name, c.dept_name FROM employees a
JOIN department_employees b
ON a.emp_no = b.emp_no
JOIN departments c
ON b.dept_no = c.dept_no
WHERE c.dept_name IN ('Sales', 'Development');

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT last_name, COUNT (last_name) FROM employees
GROUP BY last_name
ORDER BY last_name DESC;

