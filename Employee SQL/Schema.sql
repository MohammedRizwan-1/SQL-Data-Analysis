
-- Schema for Tables 

-- Creating Table for titles & importing CSV into table
create table titles (

	title_id varchar primary key,
	title varchar
);

-- Creating Table for employees & importing CSV into table
create table employees (

	emp_no integer primary key,
	emp_title_id varchar,
-- Link emp_title_id to refer to titles id
	foreign key (emp_title_id) references titles(title_id),
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	sex varchar,
	hire_date varchar
);

-- Creating Table for salaries & importing CSV into table
create table salaries (

	emp_no integer primary key,
	foreign key (emp_no) references employees(emp_no),
	salaries integer
	
);

-- Creating Table for Departments & importing CSV into table
create table departments (

	dept_no varchar primary key,
	dept_name varchar
);


-- Creating Table for Departments & importing CSV into table
create table dept_manager (

	dept_no varchar,
	foreign key (dept_no) references departments(dept_no),
	emp_no integer primary key
);

-- Creating Table for Departments & importing CSV into table

create table dept_emp (

	emp_no integer,
	foreign key (emp_no) references employees(emp_no),
	dept_no varchar,
	foreign key (dept_no) references departments(dept_no),
	primary key (emp_no, dept_no)
	
);



