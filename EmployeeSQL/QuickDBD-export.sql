-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE departments (
    dept_no VARCHAR(60)   NOT NULL,
    dept_name VARCHAR(60)   NOT NULL,
    PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(60)   NOT NULL,
    PRIMARY KEY (emp_no)
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR(60)   NOT NULL,
    title VARCHAR(60)   NOT NULL,
    PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR(60)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(60)   NOT NULL,
    last_name VARCHAR(60)   NOT NULL,
    sex VARCHAR(60)   NOT NULL,
    hire_date DATE   NOT NULL,
    PRIMARY KEY (emp_no)
    FOREIGN KEY (emp_no) REFERENCES dept_emp(emp_no)
    FOREIGN KEY (emp_no) REFERENCES salaries(emp_no)
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(60)   NOT NULL,
    emp_no INT   NOT NULL,
    PRIMARY KEY (emp_no)
    FOREIGN KEY (dept_no) REFERENCES employees(dept_no)
);