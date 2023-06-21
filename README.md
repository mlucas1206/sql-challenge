# SQL Postgres Challenge

This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

## Data Modeling
Inspect the CSV files, and then sketch an Entity Relationship Diagram of the tables. To create the sketch, feel free to use a tool like QuickDBD.

> Blocks will represent Author's Note
> 
>I opened QuickDBD tnen set up the groups, the primary and foreign keys, and the relationships. I then exported it in a postgres format. It took a lot of tries to realize that some inputs will really affect your code. In the end, the exported code was edited to match postgres commands.

## Data Engineering
1. Use the provided information to create a table schema for each of the six CSV files. Be sure to do the following:

    - Remember to specify the data types, primary keys, foreign keys, and other constraints.

    - For the primary keys, verify that the column is unique. Otherwise, create a composite key, which takes two primary keys to uniquely identify a row.

    - Be sure to create the tables in the correct order to handle the foreign keys.

2. Import each CSV file into its corresponding SQL table.

>This was simple enough that it just took time to set up the tables. What took me a couple of tries was the Importation. Due to the relationships being set by ALTER TABLE commands, one should import data starting with the files that have no foreign key so that the tables with foreign keys have something to base on.
 
## Data Analysis
1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.
a
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

>This was a fun assignment because it felt like I was connecting code like legos. It did take some time but the code is very straightforward. I tried doing multiple joins and I even tried doing one subquery. Overall this assignment was simple yet tedious. It also has many areas for minor mistakes.

---
## Author
mlucas1206

