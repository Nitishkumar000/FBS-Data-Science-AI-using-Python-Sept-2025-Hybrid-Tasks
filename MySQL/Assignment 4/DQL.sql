--1. Write a query to display the names (first_name, last_name) using alias
--name “First Name", "Last Name.
 SELECT first_name AS "First Name", last_name AS "Last Name"
    -> FROM employees;
+------------+-----------+
| First Name | Last Name |
+------------+-----------+
| Steven     | King      |
| Neena      | Kochhar   |
| Lex        | De Haan   |
| Alexander  | Hunold    |
| Bruce      | Ernst     |
| David      | Austin    |
| Valli      | Pataballa |
| Diana      | Lorentz   |
| Nancy      | Greenberg |
| Daniel     | Faviet    |
+------------+-----------+
10 rows in set (0.00 sec)

--2. Write a query to get unique department ID from employee table.
mysql> select departmemt_id unique;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'unique' at line 1
mysql> SELECT DISTINCT department_id
    -> FROM employees;
+---------------+
| department_id |
+---------------+
|            10 |
|            30 |
|            60 |
|            80 |
+---------------+
4 rows in set (0.02 sec)


--3. Write a query to get all employee details from the employee table order
--by first name, descending

mysql> SELECT * FROM employees
    -> ORDER BY first_name DESC;
+-------------+------------+-----------+---------------+--------------+------------+----------+------------+------------+---------------+---------+
| employee_id | first_name | last_name | email         | phone_number | hire_date  | salary   | commission | manager_id | department_id | job_id  |
+-------------+------------+-----------+---------------+--------------+------------+----------+------------+------------+---------------+---------+
|         106 | Valli      | Pataballa | not available | 590.423.4560 | 1987-06-23 |  5280.00 |       0.10 |        103 |            60 | IT_PROG |
|         100 | Steven     | King      | not available | 515.123.4567 | 1987-06-17 | 26400.00 |       0.10 |        200 |            10 | AD_PRES |
|         101 | Neena      | Kochhar   | not available | 515.123.4568 | 1987-06-18 | 18700.00 |       0.10 |        200 |            10 | AD_VP   |
|         108 | Nancy      | Greenberg | not available | 515.124.4569 | 1987-06-25 | 13200.00 |       0.10 |        145 |            80 | SA_MAN  |
|         102 | Lex        | De Haan   | not available | 515.123.4569 | 1987-06-19 | 18700.00 |       0.10 |        200 |            10 | AD_VP   |
|         107 | Diana      | Lorentz   | not available | 590.423.5567 | 1987-06-24 |  4620.00 |       0.10 |        114 |            30 | IT_PROG |
|         105 | David      | Austin    | not available | 590.423.4569 | 1987-06-22 |  5280.00 |       0.10 |        103 |            60 | IT_PROG |
|         109 | Daniel     | Faviet    | not available | 515.124.4169 | 1987-06-26 |  9900.00 |       0.10 |        145 |            80 | SA_MAN  |
|         104 | Bruce      | Ernst     | not available | 590.423.4568 | 1987-06-21 |  6600.00 |       0.10 |        103 |            60 | IT_PROG |
|         103 | Alexander  | Hunold    | not available | 590.423.4567 | 1987-06-20 |  9900.00 |       0.10 |        103 |            60 | IT_PROG |
+-------------+------------+-----------+---------------+--------------+------------+----------+------------+------------+---------------+---------+
10 rows in set (0.01 sec)

--4. Write a query to get the names (first_name, last_name), salary, PF of all
--the employees (PF is calculated as 15% of salary).
mysql> SELECT first_name, last_name, salary, (salary * 0.15) AS PF
    -> FROM employees;
+------------+-----------+----------+-----------+
| first_name | last_name | salary   | PF        |
+------------+-----------+----------+-----------+
| Steven     | King      | 26400.00 | 3960.0000 |
| Neena      | Kochhar   | 18700.00 | 2805.0000 |
| Lex        | De Haan   | 18700.00 | 2805.0000 |
| Alexander  | Hunold    |  9900.00 | 1485.0000 |
| Bruce      | Ernst     |  6600.00 |  990.0000 |
| David      | Austin    |  5280.00 |  792.0000 |
| Valli      | Pataballa |  5280.00 |  792.0000 |
| Diana      | Lorentz   |  4620.00 |  693.0000 |
| Nancy      | Greenberg | 13200.00 | 1980.0000 |
| Daniel     | Faviet    |  9900.00 | 1485.0000 |
+------------+-----------+----------+-----------+
10 rows in set (0.00 sec)

--5. Write a query to get the employee ID, names (first_name, last_name),
--salary in ascending order of salary.
mysql> SELECT employee_id, first_name, last_name, salary
    -> FROM employees
    -> ORDER BY salary ASC;
+-------------+------------+-----------+----------+
| employee_id | first_name | last_name | salary   |
+-------------+------------+-----------+----------+
|         107 | Diana      | Lorentz   |  4620.00 |
|         105 | David      | Austin    |  5280.00 |
|         106 | Valli      | Pataballa |  5280.00 |
|         104 | Bruce      | Ernst     |  6600.00 |
|         103 | Alexander  | Hunold    |  9900.00 |
|         109 | Daniel     | Faviet    |  9900.00 |
|         108 | Nancy      | Greenberg | 13200.00 |
|         101 | Neena      | Kochhar   | 18700.00 |
|         102 | Lex        | De Haan   | 18700.00 |
|         100 | Steven     | King      | 26400.00 |
+-------------+------------+-----------+----------+
10 rows in set (0.00 sec)

--6. Write a query to get the total salaries payable to employees.
mysql> SELECT SUM(salary)
    -> FROM employees;
+-------------+
| SUM(salary) |
+-------------+
|   118580.00 |
+-------------+
1 row in set (0.03 sec)

--7. Write a query to get the maximum and minimum salary from employees
--table.
mysql> SELECT MAX(salary), MIN(salary)
    -> FROM employees;
+-------------+-------------+
| MAX(salary) | MIN(salary) |
+-------------+-------------+
|    26400.00 |     4620.00 |
+-------------+-------------+
1 row in set (0.00 sec)

--8. Write a query to get the average salary and number of employees in the
--employees table.
mysql> SELECT AVG(salary), COUNT(*)
    -> FROM employees;
+--------------+----------+
| AVG(salary)  | COUNT(*) |
+--------------+----------+
| 11858.000000 |       10 |
+--------------+----------+
1 row in set (0.00 sec)

--9. Write a query to get the number of employees working with the
--company.
mysql> SELECT COUNT(*)
    -> FROM employees;
+----------+
| COUNT(*) |
+----------+
|       10 |
+----------+
1 row in set (0.00 sec)

--10.Write a query to get the number of jobs available in the employees table
mysql> SELECT COUNT(DISTINCT job_id)
    -> FROM employees;
+------------------------+
| COUNT(DISTINCT job_id) |
+------------------------+
|                      4 |
+------------------------+
1 row in set (0.02 sec)

--11.Write a query to select first 10 records from a table.
mysql> SELECT * FROM employees
    -> LIMIT 10;
+-------------+------------+-----------+---------------+--------------+------------+----------+------------+------------+---------------+---------+
| employee_id | first_name | last_name | email         | phone_number | hire_date  | salary   | commission | manager_id | department_id | job_id  |
+-------------+------------+-----------+---------------+--------------+------------+----------+------------+------------+---------------+---------+
|         100 | Steven     | King      | not available | 515.123.4567 | 1987-06-17 | 26400.00 |       0.10 |        200 |            10 | AD_PRES |
|         101 | Neena      | Kochhar   | not available | 515.123.4568 | 1987-06-18 | 18700.00 |       0.10 |        200 |            10 | AD_VP   |
|         102 | Lex        | De Haan   | not available | 515.123.4569 | 1987-06-19 | 18700.00 |       0.10 |        200 |            10 | AD_VP   |
|         103 | Alexander  | Hunold    | not available | 590.423.4567 | 1987-06-20 |  9900.00 |       0.10 |        103 |            60 | IT_PROG |
|         104 | Bruce      | Ernst     | not available | 590.423.4568 | 1987-06-21 |  6600.00 |       0.10 |        103 |            60 | IT_PROG |
|         105 | David      | Austin    | not available | 590.423.4569 | 1987-06-22 |  5280.00 |       0.10 |        103 |            60 | IT_PROG |
|         106 | Valli      | Pataballa | not available | 590.423.4560 | 1987-06-23 |  5280.00 |       0.10 |        103 |            60 | IT_PROG |
|         107 | Diana      | Lorentz   | not available | 590.423.5567 | 1987-06-24 |  4620.00 |       0.10 |        114 |            30 | IT_PROG |
|         108 | Nancy      | Greenberg | not available | 515.124.4569 | 1987-06-25 | 13200.00 |       0.10 |        145 |            80 | SA_MAN  |
|         109 | Daniel     | Faviet    | not available | 515.124.4169 | 1987-06-26 |  9900.00 |       0.10 |        145 |            80 | SA_MAN  |
+-------------+------------+-----------+---------------+--------------+------------+----------+------------+------------+---------------+---------+
10 rows in set (0.00 sec)

--12.Write a query to display the name (first_name, last_name) and salary for
--all employees whose salary is not in the range $10,000 through $15,000
mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary NOT BETWEEN 10000 AND 15000;
+------------+-----------+----------+
| first_name | last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 26400.00 |
| Neena      | Kochhar   | 18700.00 |
| Lex        | De Haan   | 18700.00 |
| Alexander  | Hunold    |  9900.00 |
| Bruce      | Ernst     |  6600.00 |
| David      | Austin    |  5280.00 |
| Valli      | Pataballa |  5280.00 |
| Diana      | Lorentz   |  4620.00 |
| Daniel     | Faviet    |  9900.00 |
+------------+-----------+----------+
9 rows in set (0.00 sec)

--13.Write a query to display the name (first_name, last_name) and
--department ID of all employees in departments 30 or 100 in ascending
--order.

mysql> SELECT first_name, last_name, department_id
    -> FROM employees
    -> WHERE department_id IN (30, 100)
    -> ORDER BY department_id ASC;
+------------+-----------+---------------+
| first_name | last_name | department_id |
+------------+-----------+---------------+
| Diana      | Lorentz   |            30 |
+------------+-----------+---------------+
1 row in set (0.00 sec)

--14.Write a query to display the name (first_name, last_name) and salary for
--all employees whose salary is not in the range $10,000 through $15,000
--and are in department 30 or 100.
mysql> SELECT first_name, last_name, salary
    -> FROM employees
    -> WHERE salary NOT BETWEEN 10000 AND 15000
    -> AND department_id IN (30, 100);
+------------+-----------+---------+
| first_name | last_name | salary  |
+------------+-----------+---------+
| Diana      | Lorentz   | 4620.00 |
+------------+-----------+---------+
1 row in set (0.00 sec)

--15.Write a query to display the name (first_name, last_name) and hire date
--for all employees who were hired in 1987.
--MySQL Assignment 3 P a g e | 2
mysql> SELECT first_name, last_name, hire_date
    -> FROM employees
    -> WHERE YEAR(hire_date) = 1987;
+------------+-----------+------------+
| first_name | last_name | hire_date  |
+------------+-----------+------------+
| Steven     | King      | 1987-06-17 |
| Neena      | Kochhar   | 1987-06-18 |
| Lex        | De Haan   | 1987-06-19 |
| Alexander  | Hunold    | 1987-06-20 |
| Bruce      | Ernst     | 1987-06-21 |
| David      | Austin    | 1987-06-22 |
| Valli      | Pataballa | 1987-06-23 |
| Diana      | Lorentz   | 1987-06-24 |
| Nancy      | Greenberg | 1987-06-25 |
| Daniel     | Faviet    | 1987-06-26 |
+------------+-----------+------------+
10 rows in set (0.01 sec)

--16.Write a query to display the first_name of all employees who have both
--"b" and "c" in their first name
mysql> SELECT first_name
    -> FROM employees
    -> WHERE first_name LIKE '%b%' AND first_name LIKE '%c%';
+------------+
| first_name |
+------------+
| Bruce      |
+------------+
1 row in set (0.01 sec)

--17.Write a query to display the last name, job, and salary for all employees
--whose job is that of a Programmer or a Shipping Clerk, and whose salary
--is not equal to $4,500, $10,000, or $15,000.
mysql> SELECT last_name, job_id, salary
    -> FROM employees
    -> WHERE job_id IN ('IT_PROG', 'SH_CLERK')
    -> AND salary NOT IN (4500, 10000, 15000);
+-----------+---------+---------+
| last_name | job_id  | salary  |
+-----------+---------+---------+
| Hunold    | IT_PROG | 9900.00 |
| Ernst     | IT_PROG | 6600.00 |
| Austin    | IT_PROG | 5280.00 |
| Pataballa | IT_PROG | 5280.00 |
| Lorentz   | IT_PROG | 4620.00 |
+-----------+---------+---------+
5 rows in set (0.00 sec)

--18.Write a query to display the last name of employees whose names have
--exactly 6 characters.
mysql> SELECT last_name
    -> FROM employees
    -> WHERE last_name LIKE '______';
+-----------+
| last_name |
+-----------+
| Hunold    |
| Austin    |
| Faviet    |
+-----------+
3 rows in set (0.00 sec)

--19.Write a query to display the last name of employees having 'e' as the third
--character.
mysql> SELECT last_name
    -> FROM employees
    -> WHERE last_name LIKE '__e%';
+-----------+
| last_name |
+-----------+
| Greenberg |
+-----------+
1 row in set (0.00 sec)

--20.Write a query to display the jobs/designations available in the employees
--table.
mysql> SELECT DISTINCT job_id
    -> FROM employees;
+---------+
| job_id  |
+---------+
| AD_PRES |
| AD_VP   |
| IT_PROG |
| SA_MAN  |
+---------+
4 rows in set (0.00 sec)

--21.Write a query to select all record from employees where last name in
--'BLAKE', 'SCOTT', 'KING' and 'FORD'
mysql> SELECT * FROM employees
    -> WHERE last_name IN ('BLAKE', 'SCOTT', 'KING', 'FORD');
+-------------+------------+-----------+---------------+--------------+------------+----------+------------+------------+---------------+---------+
| employee_id | first_name | last_name | email         | phone_number | hire_date  | salary   | commission | manager_id | department_id | job_id  |
+-------------+------------+-----------+---------------+--------------+------------+----------+------------+------------+---------------+---------+
|         100 | Steven     | King      | not available | 515.123.4567 | 1987-06-17 | 26400.00 |       0.10 |        200 |            10 | AD_PRES |
+-------------+------------+-----------+---------------+--------------+------------+----------+------------+------------+---------------+---------+
1 row in set (0.00 sec)