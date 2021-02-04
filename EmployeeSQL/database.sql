-- Note to instructors/graders. You'll note that I have pushed two separate database files 
-- onto the repository ("database.sql" and "database_correct_exl_importedfiles.sql"). I struggled 
-- importing the CSV files into my created tables (database.sql). I spent over 2 hours with the 
-- learning assistants to try to fix this issue. Only afterwards I realised I did not include 
-- the Primary Keys and Foreign Keys in the code. Hence I created a new 
-- code (database_correct_exl_importedfiles.sql) which includes primary and foreign keys. 
-- However, none of the CSV files would get imported (Failed: exit code 1, without any further comments).
-- For purposes of being able to do the analysis part of the homework assignment, I have therefore run 
-- the SQL analysis on the first database (database.sql) where the csv files were successfully imported. 
-- Could you therefore please look at both files? Thank you.


-- Create a new table departments
CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30) NOT NULL
);



-- View the table data departments
SELECT *
FROM departments;

-- Create a new table dept_emp
CREATE TABLE dept_emp (
  emp_no INT,
  dept_no VARCHAR(30) NOT NULL
);

-- View the table data dept_emp
SELECT *
FROM dept_emp;

-- Create a new table dept_manager
CREATE TABLE dept_manager (
  dept_no VARCHAR(30) NOT NULL,
  emp_no INT 
);

-- View the table data dept_manager
SELECT *
FROM dept_manager;

-- Create a new table employees
CREATE TABLE employees1 (
	emp_no INT   NOT NULL,
	emp_title VARCHAR NOT NULL,   
	birth_date    DATE NOT NULL,   
	first_name VARCHAR   NOT NULL,  
	last_name VARCHAR   NOT NULL,   
	sex VARCHAR   NOT NULL,    
	hire_date   DATE NOT NULL);
	DROP TABLE employees1
	SELECT * FROM employees
	C:\Users\wieggan\OneDrive - EY\Documents\Prive\Monash\Homework AW\Week 9\sql-challenge\EmployeeSQL
SET datestyle = mdy;

ALTER TABLE employees ALTER COLUMN hire_date 
TYPE DATE using to_date(hire_date, 'MM-DD-YYYY');

-- View the table data employees
SELECT * FROM employees
DROP TABLE employees1;

-- Create a new table salaries
CREATE TABLE salaries (
  emp_no INT,
  salary INT
);

-- View the table data salaries
SELECT *
FROM salaries;

-- Create a new table titles
CREATE TABLE titles1 (
  emp_title VARCHAR(30) NOT NULL,
  title VARCHAR(30) NOT NULL
);

-- View the table data titles
SELECT *
FROM titles;
