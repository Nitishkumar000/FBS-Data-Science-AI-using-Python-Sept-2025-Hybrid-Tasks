Microsoft Windows [Version 10.0.26100.7462]
(c) Microsoft Corporation. All rights reserved.

C:\Users\Shital>mysql -u root -p
Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 8.0.44 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| firstbitmysql      |
| hotelmanagement    |
| information_schema |
| library_system     |
| ml                 |
| mysql              |
| performance_schema |
| sakila             |
| sale1_db           |
| sale_db            |
| sales_db           |
| sys                |
| world              |
+--------------------+
13 rows in set (0.09 sec)

mysql> use firstbitmysql;
Database changed
mysql> show tables;
+-------------------------+
| Tables_in_firstbitmysql |
+-------------------------+
| countries               |
| department              |
| emp                     |
| employees               |
| job_histry              |
| jobs                    |
| jobs_v2                 |
+-------------------------+
7 rows in set (0.10 sec)

--1. Write a SQL statement to insert a record as follows: Employees :
mysql> INSERT INTO Employees (
    -> EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE,SALARY,COMMISSION,MANAGER_ID,DEPARTMENT_ID,JOB_ID)
    -> values
    -> (100, 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 24000.00, 0.00, 200, 10, 'AD_PRES'),
    -> (101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 17000.00, 0.00, 200, 10, 'AD_VP'),
    -> (102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1987-06-19', 17000.00, 0.00, 200, 10, 'AD_VP'),
    -> (103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', 9000.00, 0.00, 103, 60, 'IT_PROG'),
    -> (104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1987-06-21', 6000.00, 0.00, 103, 60, 'IT_PROG'),
    -> (105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', '1987-06-22', 4800.00, 0.00, 103, 60, 'IT_PROG'),
    -> (106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '1987-06-23', 4800.00, 0.00, 103, 60, 'IT_PROG'),
    -> (107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1987-06-24', 4200.00, 0.00, 114, 30, 'IT_PROG'),
    -> (108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1987-06-25', 12000.00, 0.00, 145, 80, 'SA_MAN'),
    -> (109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '1987-06-26', 9000.00, 0.00, 145, 80, 'SA_MAN');
Query OK, 10 rows affected (0.05 sec)
Records: 10  Duplicates: 0  Warnings: 0
--Department :
mysql> INSERT INTO Department (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
    -> values
    -> (10,'administration',200,1700),
    -> (20,'marketing',201,1800),
    -> (30,'purchesing',114,1700),
    -> (40,'human resource',203,2400),
    -> (50,'shipping',121,1500),
    -> (60,'it',103,1400),
    -> (70,'public relation',204,2700),
    -> (80,'sales',145,2500);
Query OK, 8 rows affected (0.06 sec)
Records: 8  Duplicates: 0  Warnings: 0

--2. Write a SQL statement to insert 3 rows by a single insert statement.--
mysql> INSERT INTO Department (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
    -> VALUES
    ->     (280, 'Data Science', 200, 1700),
    ->     (290, 'Fintech', 201, 1800),
    ->     (300, 'Analytics', 114, 1700);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

--3. Write a SQL statement to insert one row in jobs table to ensure that no duplicate value will be entered in the job_id column.

mysql>  INSERT IGNORE INTO Jobs (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
    -> VALUES ('AD_PRES', 'President', 20000, 25000);
Query OK, 1 row affected (0.01 sec)

mysql> table jobs;
+---------+-----------+------------+------------+
| job_id  | job_title | min_salary | max_salary |
+---------+-----------+------------+------------+
| AD_PRES | President |   20000.00 |   25000.00 |
+---------+-----------+------------+------------+
1 row in set (0.00 sec)

--4. Write SQL statement to increment salary of each emp by 10%.
mysql> UPDATE Employees
    -> SET SALARY = SALARY * 1.10;
Query OK, 10 rows affected (0.02 sec)
Rows matched: 10  Changed: 10  Warnings: 0

--5. Write a SQL statement to change the email column of employees table with 'not
--available' for those employees whose department_id is 80 and gets a
--commission is less than .20%
mysql> UPDATE Employees
    -> SET EMAIL = 'not available'
    -> WHERE DEPARTMENT_ID = 80 AND COMMISSION < 0.20;
Query OK, 2 rows affected (0.01 sec)
Rows matched: 2  Changed: 2  Warnings: 0

--6. Write a SQL statement to change the email column of employees table with 'not
--available' for those employees who belongs to the 'Purchasing' department.
mysql> UPDATE Employees
    -> SET EMAIL = 'not available'
    -> WHERE DEPARTMENT_ID = (
    ->     SELECT DEPARTMENT_ID
    ->     FROM Department
    ->     WHERE DEPARTMENT_NAME = 'Purchasing'
    -> );
Query OK, 0 rows affected (0.02 sec)
Rows matched: 0  Changed: 0  Warnings: 0
--7. Write a SQL statement to change the email and commission_pct column of
--employees table with 'not available' and 0.10 for all employees.
mysql> UPDATE Employees
    -> SET EMAIL = 'not available',
    ->     COMMISSION = 0.10;
Query OK, 10 rows affected (0.01 sec)
Rows matched: 10  Changed: 10  Warnings: 0
