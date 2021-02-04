-- Create a new table departments
CREATE TABLE departments (
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	PRIMARY KEY(dept_no)
);

-- View the table data departments
SELECT *
FROM departments;

-- Create a new table dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY(emp_no)
);

-- View the table data dept_manager

SELECT *
FROM dept_manager;

-- Create a new table titles
CREATE TABLE titles (
	emp_title VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_title)
);

-- View the table data titles
SELECT *
FROM titles;

-- Create a new table dept_emp
CREATE TABLE dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES dept_manager(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- View the table data dept_emp
SELECT *
FROM dept_emp;

-- Create a new table employees
CREATE TABLE employees (
	emp_no INT   NOT NULL,
	emp_title VARCHAR NOT NULL,   
	birth_date    DATE NOT NULL,   
	first_name VARCHAR   NOT NULL,  
	last_name VARCHAR   NOT NULL,   
	sex VARCHAR   NOT NULL,    
	hire_date   DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES dept_manager(emp_no),
	FOREIGN KEY (emp_title) REFERENCES titles(emp_title)
	);

SET datestyle = mdy;

-- View the table data employees
SELECT * FROM employees;

-- Create a new table salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT NOT NULL, 
	FOREIGN KEY (emp_no) REFERENCES dept_manager(emp_no)
);

-- View the table data salaries
SELECT *
FROM salaries;


