-- Delete Tables Query
DROP TABLE salaries;
DROP TABLE department_employees;
DROP TABLE department_manager;
DROP TABLE departments;
DROP TABLE employees;
DROP TABLE titles;

-- Create Tables
CREATE TABLE departments (
    dept_no VARCHAR(40)   NOT NULL,
    dept_name VARCHAR(40)   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE department_employees (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(40)   NOT NULL
);

CREATE TABLE department_manager (
    dept_no VARCHAR(40)   NOT NULL,
    emp_no INT   NOT NULL
);

CREATE TABLE employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR(40)   NOT NULL,
    birth_date date   NOT NULL,
    first_name VARCHAR(40)   NOT NULL,
    last_name VARCHAR(40)   NOT NULL,
    sex VARCHAR(40)   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL
);

CREATE TABLE titles (
    title_id VARCHAR(40)   NOT NULL,
    title VARCHAR(40)   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (
        title_id
     )
);

ALTER TABLE department_employees ADD CONSTRAINT fk_department_employees_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE department_employees ADD CONSTRAINT fk_department_employees_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE department_manager ADD CONSTRAINT fk_department_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE department_manager ADD CONSTRAINT fk_department_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES titles (title_id);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);
