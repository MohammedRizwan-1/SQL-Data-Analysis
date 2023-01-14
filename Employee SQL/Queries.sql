
-- 1. List information regarding each employee;
--		Empoyee Number, Last Name, First Name, Sex, Salary.
select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sa.salaries
from employees as emp
inner join salaries as sa on
emp.emp_no = sa.emp_no;

-- 2. List first name, last name, and hire date
--		for employees who were hired in 1986.
select first_name, last_name, hire_date 
from employees
where hire_date like '%1986';


-- 3. List Manager for each Dept with Dept number Dept Name,
-- 		Emplyee Number and First and Last Name
select dema.dept_no, de.dept_name, dema.emp_no, emp.last_name, emp.first_name
from dept_manager as dema
inner join employees as emp on
emp.emp_no = dema.emp_no
inner join departments as de on
de.dept_no = dema.dept_no;



-- 4. List Department number for Each Employee along with that
--		Employees Employee Number, First and Last Name
select emp.emp_no, emp.last_name, emp.first_name, de.dept_name
from employees as emp
inner join dept_emp on 
dept_emp.emp_no = emp.emp_no
inner join departments as de on
dept_emp.dept_no = de.dept_no



-- 5. List First Name, Last Name, Sex of Employees whos First
--		Name is Hercules and Last Name starts with "B".
select first_name, last_name, sex 
from employees
where first_name = 'Hercules'
and last_name like 'B%'


-- 6. List all Employees in Sales Dept and their Employee Numbers
--		Last and First Name.
select emp.emp_no, emp.last_name, emp.first_name, de.dept_name
from employees as emp
inner join dept_emp on 
dept_emp.emp_no = emp.emp_no
inner join departments as de on
dept_emp.dept_no = de.dept_no
where de.dept_name = 'Sales'


-- 7. List all Employess in Sales & Development Dept, and their 
--		Employee Numbers, First and Last Name.
select emp.emp_no, emp.last_name, emp.first_name, de.dept_name
from employees as emp
inner join dept_emp on 
dept_emp.emp_no = emp.emp_no
inner join departments as de on
dept_emp.dept_no = de.dept_no
where de.dept_name = 'Sales'
or de.dept_name = 'Development'


-- 8. List Frequency Count in Descending Order, of Employees
-- 		Sharing Last Names.
select count(*), last_name
from employees
group by last_name
order by last_name desc


