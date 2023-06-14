# SQL-Data-Analysis
This challenge looks at employee data for a fictional company (Pewlett Hackard) during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files. For this project, tables were designed to hold the data from the CSV files and the CSV files were then imported into a SQL database.

## Data Modeling
The CSV files were inspected and an Entity Relationship Diagram of the tables was sketched. To create the sketch, the QuickDBD tool was used. The ERD can be found in the main repository as a png file.

![Alt text](ERD.png)


## Data Engineering
Using the provided information table schema for each of the six CSV files was created and each CSV file was then imported in to its corresponding SQL table. This can be found in the table_schema file in the EmployeeSQL folder.

## Data Analysis
The following queries were created:

List of the employee number, last name, first name, sex, and salary of each employee List of the first name, last name, and hire date for the employees who were hired in 1986 List of the manager of each department along with their department number, department name, employee number, last name, and first name List of the department number for each employee along with that employee’s employee number, last name, first name, and department name List of first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B List of each employee in the Sales department, including their employee number, last name, and first name List of each employee in the Sales and Development departments, including their employee number, last name, first name, and department name List of the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

This can be found in the queries file in the EmployeeSQL folder..
