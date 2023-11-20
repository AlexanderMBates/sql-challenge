# Pewlett Hackard Employee Database Project

## Background
As a newly hired data engineer at Pewlett Hackard, your primary task is to conduct a research project on employees who worked for the company during the 1980s and 1990s. The available data consists of six CSV files, and your responsibilities include designing tables, importing data into a SQL database, and performing data analysis.

## Project Structure

### Repository Setup
1. Create a new repository named `sql-challenge`.
2. Clone the repository to your local machine.

### Directory Structure
3. Inside the local repository, create a directory named `EmployeeSQL`.

### File Download
4. Download the required [Module 9 Challenge files](#) and place them in the `EmployeeSQL` folder.

## Data Modeling

### Entity Relationship Diagram (ERD)
5. Inspect the CSV files and sketch an Entity Relationship Diagram (ERD) using a tool like [QuickDBD](https://www.quickdatabasediagrams.com/).

## Data Engineering

### SQL Code Reference
6. Create table schemas for each CSV file using the provided information. Refer to the following SQL code snippets:

#### Titles Table
```sql
CREATE TABLE titles (
    title_id VARCHAR(60)   NOT NULL,
    title VARCHAR(60)   NOT NULL,
    PRIMARY KEY (title_id)
);

SELECT * FROM titles;
```

#### departments Table
```sql
CREATE TABLE departments (
    dept_no VARCHAR(60)   NOT NULL,
    dept_name VARCHAR(60)   NOT NULL,
    PRIMARY KEY (dept_no)
);

SELECT * FROM departments;
```

#### employees Table
```sql
CREATE TABLE employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR(60)   NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR(60)   NOT NULL,
    last_name VARCHAR(60)   NOT NULL,
    sex VARCHAR(60)   NOT NULL,
    hire_date DATE   NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;
```

#### salaries Table
```sql
CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;
```

#### dept_emp Table
```sql
CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR(60)   NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;
```

#### dept_manager Table
```sql
CREATE TABLE dept_manager (
    dept_no VARCHAR(60)   NOT NULL,
    emp_no INT   NOT NULL,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;
```

## Database Queries
7. The user may now build any sql queries to get any needed info from the database such as:
   
  *List the employee number, last name, first name, sex, and salary of each employee.
   
  *List the first name, last name, and hire date for employees hired in 1986.
  
  *List the manager of each department along with their department number, department name, employee number, last name, and first name.
  
  *List the department number for each employee along with their employee number, last name, first name, and department name.
  
  *List the first name, last name, and sex of each employee whose first name is Hercules and last name begins with the letter B.
  
  *List each employee in the Sales department, including their employee number, last name, and first name.
  
  *List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
  
  *List the frequency counts, in descending order, of all employee last names.
