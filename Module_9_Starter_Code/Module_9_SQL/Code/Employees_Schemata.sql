-- Create Titles Table
CREATE TABLE titles (
	title_id VARCHAR NOT NULL,
	title VARCHAR (50),
	PRIMARY KEY (title_id)
);

-- Create Employees Table
-- The "Employees Table" is completed next because of the association with the "Titles Table" foreign key.
CREATE TABLE employees (
	emp_no INT NOT NULL,
	title_id VARCHAR NOT NULL,
	birth_date VARCHAR(10),
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR(1),
	hire_date VARCHAR(10),
	PRIMARY KEY (emp_no),
	FOREIGN KEY (title_id) REFERENCES titles(title_id)
);

-- Create Salaries Table
-- The "Salaries Table" is completed next because of the association with the "Employees Table" foreign key.
CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Create Departments Table
-- The "Departments Table" is completed next because of the association with the "Salaries Table" foreign key.
CREATE TABLE departments (
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR,
	PRIMARY KEY (dept_no)
);

-- Create Department Employees Table
-- The "Department Employees Table" is completed next because of the association with the "Departments Table" foreign key.
CREATE TABLE dept_employees (
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Create Department Managers Table
-- The "Departments Managers Table" is completed next because of the association with the "Department Employees Table" foreign key.
CREATE TABLE dept_manager (
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (emp_no, dept_no)
);