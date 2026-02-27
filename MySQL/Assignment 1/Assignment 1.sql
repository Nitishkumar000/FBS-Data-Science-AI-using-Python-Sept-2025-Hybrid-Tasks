--Login to MySQL and view all databases already present. You should get the following result :
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| firstbitmysql      |
| hotelmanagement    |
| information_schema |
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
12 rows in set (0.01 sec)

--Write an SQL statement to create a simple table countries including columns
--country_id,country_name and region_id. After this display the structure of
--table as below :
mysql> create table countries (
    -> country_id int(11),
    -> country_name varchar(20),
    -> region_id int(11));
Query OK, 0 rows affected, 2 warnings (0.27 sec)

mysql> describe countries;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  |     | NULL    |       |
| country_name | varchar(20) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

--3. Write an SQL statement to create a table named jobs including columns
--job_id, job_title, min_salary, max_salary and check whether the
--max_salary amount exceeding the upper limit 25000. Also set job_id as
--primary key and entering null values for job_title is not allowed.

mysql> create table jobs (
    -> job_id int primary key,
    -> job_title varchar(35) not null,
    -> min_salary decimal(10,2),
    -> max_salary decimal(10,2),
    -> check (max_salary <= 25000));
Query OK, 0 rows affected (0.12 sec)

mysql> desc jobs;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| job_id     | int           | NO   | PRI | NULL    |       |
| job_title  | varchar(35)   | NO   |     | NULL    |       |
| min_salary | decimal(10,2) | YES  |     | NULL    |       |
| max_salary | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

--4. Write a SQL statement to create a table named job_histry including columns
--employee_id, start_date, end_date, job_id and department_id
mysql> create table job_histry(
    -> employee_id int,
    -> start_date date,
    -> end_date date,
    -> job_id int,
    -> department_id int);
Query OK, 0 rows affected (0.14 sec)

mysql> desc job_histry;
+---------------+------+------+-----+---------+-------+
| Field         | Type | Null | Key | Default | Extra |
+---------------+------+------+-----+---------+-------+
| employee_id   | int  | YES  |     | NULL    |       |
| start_date    | date | YES  |     | NULL    |       |
| end_date      | date | YES  |     | NULL    |       |
| job_id        | int  | YES  |     | NULL    |       |
| department_id | int  | YES  |     | NULL    |       |
+---------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

--5. Write an SQL statement to alter a table named countries to make sure that no
--duplicate data against column country_id will be allowed at the time of
--insertion.
mysql> alter table countries
    -> add constraint uq_country_id unique (country_id);
Query OK, 0 rows affected (0.16 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc countries;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| country_id   | int         | YES  | UNI | NULL    |       |
| country_name | varchar(20) | YES  |     | NULL    |       |
| region_id    | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

--6. Write an SQL statement to create a table named jobs including columns job_id,
--job_title, min_salary and max_salary, and make sure that, the default value
--for job_title is blank and min_salary is 8000 and max_salary is NULL will be
--entered automatically at the time of insertion if no value assigned for the
--specified columns.
mysql> create table jobs_v2(
    -> job_id int,
    -> job_title varchar(35) default '',
    -> min_salary decimal(10,2) default 8000,
    -> max_salary decimal(10,2) default null);
Query OK, 0 rows affected (0.13 sec)

mysql> desc jobs_v2
    -> ;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| job_id     | int           | YES  |     | NULL    |       |
| job_title  | varchar(35)   | YES  |     |         |       |
| min_salary | decimal(10,2) | YES  |     | 8000.00 |       |
| max_salary | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

--7 Create a Department table with following structure
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| department_id   | decimal(4,0) | NO   | PRI | NULL    |       |
| department_name | varchar(30)  | NO   |     | NULL    |       |
| manager_id      | decimal(6,0) | NO   | PRI | NULL    |       |
| location_id     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+

mysql> create table department(
    -> department_id decimal(4,0) not null,
    -> department_name varchar(30) not null,
    -> manager_id decimal(6,0) not null,
    -> location_id decimal(4,0),
    -> primary key (department_id,manager_id));
Query OK, 0 rows affected (0.11 sec)

mysql> desc department;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| department_id   | decimal(4,0) | NO   | PRI | NULL    |       |
| department_name | varchar(30)  | NO   |     | NULL    |       |
| manager_id      | decimal(6,0) | NO   | PRI | NULL    |       |
| location_id     | decimal(4,0) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

--8. Write an SQL statement to create a table employees including columns
--mployee_id, first_name, last_name, email, phone_number hire_date, job_id,
--salary, commission, manager_id and department_id and make sure that, the
--employee_id column does not contain any duplicate value at the time of
--nsertion and the foreign key columns combined by department_id and
--manager_id columns contain only those unique combination values, which
--combinations are exists in the departments table.
mysql> CREATE TABLE employees (
    -> employee_id INT PRIMARY KEY,
    -> first_name varchar(20),
    -> last_name varchar(25),
    -> email varchar(25),
    -> phone_number varchar(20),
    -> hire_date date,
    -> salary decimal(8,2),
    -> commission decimal(2,2),
    -> manager_id decimal(6,0),
    -> department_id decimal(4,0),
    -> foreign key (department_id,manager_id)
    -> references department(department_id, manager_id));
Query OK, 0 rows affected (0.14 sec)

mysql> desc employees;

+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| employee_id   | int          | NO   | PRI | NULL    |       |
| first_name    | varchar(20)  | YES  |     | NULL    |       |
| last_name     | varchar(25)  | YES  |     | NULL    |       |
| email         | varchar(25)  | YES  |     | NULL    |       |
| phone_number  | varchar(20)  | YES  |     | NULL    |       |
| hire_date     | date         | YES  |     | NULL    |       |
| salary        | decimal(8,2) | YES  |     | NULL    |       |
| commission    | decimal(2,2) | YES  |     | NULL    |       |
| manager_id    | decimal(6,0) | YES  |     | NULL    |       |
| department_id | decimal(4,0) | YES  | MUL | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)
