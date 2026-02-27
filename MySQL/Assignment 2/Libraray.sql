mysql> show databases;
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
--1) Create the table Member, Books and Issue without any constraints as mentioned in the schema description above.
mysql> create database library_system;
Query OK, 1 row affected (0.08 sec)

mysql> use library_system
Database changed
mysql> CREATE TABLE Member (
    ->     Member_Id INT,
    ->     Member_Name VARCHAR(30),
    ->     Member_address VARCHAR(50),
    ->     Acc_Open_Date DATE,
    ->     Membership_type VARCHAR(20),
    ->     Fees_paid INT,
    ->     Max_Books_Allowed INT,
    ->     Penalty_Amount DECIMAL(7,2)
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> CREATE TABLE Books (
    ->     Book_No INT,
    ->     Book_Name VARCHAR(30),
    ->     Author_name VARCHAR(30),
    ->     Cost DECIMAL(7,2),
    ->     Category CHAR(10)
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> CREATE TABLE Issue (
    ->     Lib_Issue_Id INT,
    ->     Book_No INT,
    ->     Member_Id INT,
    ->     Issue_Date DATE,
    ->     Return_date DATE
    -> );
Query OK, 0 rows affected (0.08 sec)

--2) View the structure of the tables.
mysql> DESC Member;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| Member_Id         | int          | YES  |     | NULL    |       |
| Member_Name       | varchar(30)  | YES  |     | NULL    |       |
| Member_address    | varchar(50)  | YES  |     | NULL    |       |
| Acc_Open_Date     | date         | YES  |     | NULL    |       |
| Membership_type   | varchar(20)  | YES  |     | NULL    |       |
| Fees_paid         | int          | YES  |     | NULL    |       |
| Max_Books_Allowed | int          | YES  |     | NULL    |       |
| Penalty_Amount    | decimal(7,2) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
8 rows in set (0.01 sec)

mysql> DESC Books;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| Book_No     | int          | YES  |     | NULL    |       |
| Book_Name   | varchar(30)  | YES  |     | NULL    |       |
| Author_name | varchar(30)  | YES  |     | NULL    |       |
| Cost        | decimal(7,2) | YES  |     | NULL    |       |
| Category    | char(10)     | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> DESC Issue;
+--------------+------+------+-----+---------+-------+
| Field        | Type | Null | Key | Default | Extra |
+--------------+------+------+-----+---------+-------+
| Lib_Issue_Id | int  | YES  |     | NULL    |       |
| Book_No      | int  | YES  |     | NULL    |       |
| Member_Id    | int  | YES  |     | NULL    |       |
| Issue_Date   | date | YES  |     | NULL    |       |
| Return_date  | date | YES  |     | NULL    |       |
+--------------+------+------+-----+---------+-------+
5 rows in set (0.00 sec)

---3) Drop the Member table--
mysql> DROP TABLE Member;
Query OK, 0 rows affected (0.10 sec)

--4) Create the table Member again as per the schema description with the following constraints.
--a. Member_Id – Primary Key
--b. Membership_type - ‘Lifetime’,’ Annual’, ‘Half Yearly’,’ Quarterly’

mysql> CREATE TABLE Member (
    ->     Member_Id INT PRIMARY KEY,
    ->     Member_Name VARCHAR(30),
    ->     Member_address VARCHAR(50),
    ->     Acc_Open_Date DATE,
    ->     Membership_type VARCHAR(20) CHECK (Membership_type IN ('Lifetime', 'Annual', 'Half Yearly', 'Quarterly')),
    ->     Fees_paid INT,
    ->     Max_Books_Allowed INT,
    ->     Penalty_Amount DECIMAL(7,2)
    -> );
Query OK, 0 rows affected (0.08 sec)

--5) Modify the table Member increase the width of the member name to 30 characters.

mysql> ALTER TABLE Member MODIFY Member_Name VARCHAR(30);
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

--6) Add a column named as Reference of Char(30) to Issue table.
mysql> ALTER TABLE Issue ADD Reference CHAR(30);
Query OK, 0 rows affected (0.16 sec)
Records: 0  Duplicates: 0  Warnings: 0

--7) Delete/Drop the column Reference from Issue.
mysql> ALTER TABLE Issue DROP COLUMN Reference;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0
--8) Rename the table Issue to Lib_Issue.
mysql> RENAME TABLE Issue TO Lib_Issue;
Query OK, 0 rows affected (0.08 sec)
--9) Insert following data in table Member
mysql> INSERT INTO Member VALUES (1, 'Richa Sharma', 'Pune', '2005-12-10', 'Lifetime', 25000, 5, 50);
Query OK, 1 row affected (0.04 sec)

mysql> INSERT INTO Member VALUES (2, 'Garima Sen', 'Pune', CURDATE(), 'Annual', 1000, 3, NULL);
Query OK, 1 row affected (0.02 sec)

--10) Insert at least 5 records with suitable data.

mysql> INSERT INTO Member VALUES (3, 'John Doe', 'Mumbai', '2023-01-15', 'Annual', 1000, 3, 0);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Member VALUES (4, 'Alice Smith', 'Delhi', '2023-02-20', 'Half Yearly', 500, 2, 0);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Member VALUES (5, 'Bob Brown', 'Pune', '2023-03-10', 'Quarterly', 300, 1, 0);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Member VALUES (6, 'Eve White', 'Bangalore', '2023-04-05', 'Lifetime', 25000, 5, 0);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Member VALUES (7, 'Mike Green', 'Chennai', '2023-05-01', 'Annual', 1000, 3, 10);
Query OK, 1 row affected (0.05 sec)

--11) Modify the column Member_name. Decrease the width of the member
--name to 20 characters. (If it does not allow state the reason for that)
mysql> ALTER TABLE Member MODIFY Member_Name VARCHAR(20);
Query OK, 7 rows affected (0.15 sec)
Records: 7  Duplicates: 0  Warnings: 0

--12) Try to insert a record with Max_Books_Allowed = 110, Observe the error that comes.
mysql> INSERT INTO Member VALUES (8, 'Test User', 'Pune', CURDATE(), 'Annual', 1000, 110, 0);
Query OK, 1 row affected (0.05 sec)

--13) Generate another table named Member101 using a Create command
--along with a simple SQL query on member table.
mysql> CREATE TABLE Member101 AS SELECT * FROM Member;
Query OK, 8 rows affected (0.06 sec)
Records: 8  Duplicates: 0  Warnings: 0

--14) Add the constraints on columns max_books_allowed and penalty_amt as follows
--a. max_books_allowed < 100
--b. penalty_amt maximum 1000
--Also give names to the constraints.

mysql> DELETE FROM Member WHERE Max_Books_Allowed > 100;
Query OK, 1 row affected (0.07 sec)

mysql> ALTER TABLE Member
    -> ADD CONSTRAINT chk_max_books CHECK (Max_Books_Allowed < 100),
    -> ADD CONSTRAINT chk_penalty CHECK (Penalty_Amount <= 1000);
Query OK, 7 rows affected (0.14 sec)
Records: 7  Duplicates: 0  Warnings: 0

--15) Drop the table books.
mysql> DROP TABLE Books;
Query OK, 0 rows affected (0.07 sec)

--16) Create table Books again as per the schema description with the following constraints.
--a. Book_No – Primary Key
--b. Book_Name – Not Null
--c. Category – System, Fiction, Database, RDBMS, Others.
mysql> CREATE TABLE Books (
    ->     Book_No INT PRIMARY KEY,
    ->     Book_Name VARCHAR(30) NOT NULL,
    ->     Author_name VARCHAR(30),
    ->     Cost DECIMAL(7,2),
    ->     Category CHAR(10) CHECK (Category IN ('System', 'Fiction', 'Database', 'RDBMS', 'Others'))
    -> );
Query OK, 0 rows affected (0.08 sec)

--17) Insert data in Book table as follows:
mysql> INSERT INTO Books VALUES (101, 'Let us C', 'Denis Ritchie', 450, 'System');
Query OK, 1 row affected (0.05 sec)

mysql> INSERT INTO Books VALUES (102, 'Oracle Complete Ref', 'Loni', 550, 'Database');
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Books VALUES (103, 'Mastering SQL', 'Loni', 250, 'Database');
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Books VALUES (104, 'PL SQL-Ref', 'Scott Urman', 750, 'Database');
Query OK, 1 row affected (0.05 sec)
--18) Insert more records in Book table.
--19) View the data in the tables using simple SQL query.--
mysql> SELECT * FROM Member;
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
| Member_Id | Member_Name  | Member_address | Acc_Open_Date | Membership_type | Fees_paid | Max_Books_Allowed | Penalty_Amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
|         1 | Richa Sharma | Pune           | 2005-12-10    | Lifetime        |     25000 |                 5 |          50.00 |
|         2 | Garima Sen   | Pune           | 2025-12-25    | Annual          |      1000 |                 3 |           NULL |
|         3 | John Doe     | Mumbai         | 2023-01-15    | Annual          |      1000 |                 3 |           0.00 |
|         4 | Alice Smith  | Delhi          | 2023-02-20    | Half Yearly     |       500 |                 2 |           0.00 |
|         5 | Bob Brown    | Pune           | 2023-03-10    | Quarterly       |       300 |                 1 |           0.00 |
|         6 | Eve White    | Bangalore      | 2023-04-05    | Lifetime        |     25000 |                 5 |           0.00 |
|         7 | Mike Green   | Chennai        | 2023-05-01    | Annual          |      1000 |                 3 |          10.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM Books;
+---------+---------------------+---------------+--------+----------+
| Book_No | Book_Name           | Author_name   | Cost   | Category |
+---------+---------------------+---------------+--------+----------+
|     101 | Let us C            | Denis Ritchie | 450.00 | System   |
|     102 | Oracle Complete Ref | Loni          | 550.00 | Database |
|     103 | Mastering SQL       | Loni          | 250.00 | Database |
|     104 | PL SQL-Ref          | Scott Urman   | 750.00 | Database |
+---------+---------------------+---------------+--------+----------+
4 rows in set (0.00 sec)

--20) Insert into Book following data.
mysql> INSERT INTO Books VALUES (105, 'National Geographic', 'Adis Scott', 1000, 'Science');
ERROR 3819 (HY000): Check constraint 'books_chk_1' is violated.

--21) Rename the table Lib_Issue to Issue.
mysql> RENAME TABLE Lib_Issue TO Issue;
Query OK, 0 rows affected (0.08 sec)

--22) Drop table Issue.
mysql> DROP TABLE Issue;
Query OK, 0 rows affected (0.06 sec)

--23) As per the given structure Create table Issue again with following constraints.
-- Lib_Issue_Id-Primary key
-- Book_No- foreign key
-- Member_id - foreign key
-- Issue_date
-- Return_date
mysql> CREATE TABLE Issue (
    ->     Lib_Issue_Id INT PRIMARY KEY,
    ->     Book_No INT,
    ->     Member_Id INT,
    ->     Issue_Date DATE,
    ->     Return_date DATE,
    ->     FOREIGN KEY (Book_No) REFERENCES Books(Book_No),
    ->     FOREIGN KEY (Member_Id) REFERENCES Member(Member_Id)
    -> );
Query OK, 0 rows affected (0.11 sec)

--24) Insert following data into Issue table.
mysql> INSERT INTO Issue VALUES (7001, 101, 1, '2006-12-10', NULL);
Query OK, 1 row affected (0.06 sec)

mysql> INSERT INTO Issue VALUES (7002, 102, 2, '2006-12-25', NULL);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Issue VALUES (7003, 104, 1, '2006-01-15', NULL);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Issue VALUES (7004, 101, 1, '2006-07-04', NULL);
Query OK, 1 row affected (0.00 sec)

mysql> INSERT INTO Issue VALUES (7005, 104, 2, '2006-11-15', NULL);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO Issue VALUES (7006, 101, 3, '2006-02-18', NULL);
Query OK, 1 row affected (0.05 sec)

--25) Remove the constraints on Issue table

mysql> ALTER TABLE Issue DROP FOREIGN KEY issue_ibfk_1;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Issue DROP FOREIGN KEY issue_ibfk_2;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

--26) Insert a record in Issue table. The member_id should not exist in member table.

mysql> INSERT INTO Issue VALUES (7007, 101, 99, CURDATE(), NULL);
Query OK, 1 row affected (0.05 sec)

--27) Now enable the constraints of Issue table. Observe the error
mysql> ALTER TABLE Issue ADD FOREIGN KEY (Member_Id) REFERENCES Member(Member_Id);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`library_system`.`#sql-1b8c_b`, CONSTRAINT `issue_ibfk_1` FOREIGN KEY (`Member_Id`) REFERENCES `member` (`Member_Id`))
--28) Delete the record inserted at Q-27) and enable the constraints.
mysql> DELETE FROM Issue WHERE Member_Id = 99;
Query OK, 1 row affected (0.08 sec)

mysql> ALTER TABLE Issue ADD FOREIGN KEY (Member_Id) REFERENCES Member(Member_Id);
Query OK, 6 rows affected (0.17 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Issue ADD FOREIGN KEY (Book_No) REFERENCES Books(Book_No);
Query OK, 6 rows affected (0.23 sec)
Records: 6  Duplicates: 0  Warnings: 0
---29) Try to delete the record of member id 1 from member table and observe the error .

mysql> DELETE FROM Member WHERE Member_Id = 1;
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`library_system`.`issue`, CONSTRAINT `issue_ibfk_1` FOREIGN KEY (`Member_Id`) REFERENCES `member` (`Member_Id`))

--0) View the data and structure of all the three tables Member, Issue, Book.
mysql> SELECT * FROM Member;
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
| Member_Id | Member_Name  | Member_address | Acc_Open_Date | Membership_type | Fees_paid | Max_Books_Allowed | Penalty_Amount |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
|         1 | Richa Sharma | Pune           | 2005-12-10    | Lifetime        |     25000 |                 5 |          50.00 |
|         2 | Garima Sen   | Pune           | 2025-12-25    | Annual          |      1000 |                 3 |           NULL |
|         3 | John Doe     | Mumbai         | 2023-01-15    | Annual          |      1000 |                 3 |           0.00 |
|         4 | Alice Smith  | Delhi          | 2023-02-20    | Half Yearly     |       500 |                 2 |           0.00 |
|         5 | Bob Brown    | Pune           | 2023-03-10    | Quarterly       |       300 |                 1 |           0.00 |
|         6 | Eve White    | Bangalore      | 2023-04-05    | Lifetime        |     25000 |                 5 |           0.00 |
|         7 | Mike Green   | Chennai        | 2023-05-01    | Annual          |      1000 |                 3 |          10.00 |
+-----------+--------------+----------------+---------------+-----------------+-----------+-------------------+----------------+
7 rows in set (0.00 sec)

mysql> SELECT * FROM Issue;
+--------------+---------+-----------+------------+-------------+
| Lib_Issue_Id | Book_No | Member_Id | Issue_Date | Return_date |
+--------------+---------+-----------+------------+-------------+
|         7001 |     101 |         1 | 2006-12-10 | NULL        |
|         7002 |     102 |         2 | 2006-12-25 | NULL        |
|         7003 |     104 |         1 | 2006-01-15 | NULL        |
|         7004 |     101 |         1 | 2006-07-04 | NULL        |
|         7005 |     104 |         2 | 2006-11-15 | NULL        |
|         7006 |     101 |         3 | 2006-02-18 | NULL        |
+--------------+---------+-----------+------------+-------------+
6 rows in set (0.00 sec)

mysql> SELECT * FROM Books;
+---------+---------------------+---------------+--------+----------+
| Book_No | Book_Name           | Author_name   | Cost   | Category |
+---------+---------------------+---------------+--------+----------+
|     101 | Let us C            | Denis Ritchie | 450.00 | System   |
|     102 | Oracle Complete Ref | Loni          | 550.00 | Database |
|     103 | Mastering SQL       | Loni          | 250.00 | Database |
|     104 | PL SQL-Ref          | Scott Urman   | 750.00 | Database |
+---------+---------------------+---------------+--------+----------+
4 rows in set (0.00 sec)

--31) Modify the Return_Date of 7004,7005 to 15 days after the Issue_date.
mysql> UPDATE Issue
    -> SET Return_date = DATE_ADD(Issue_Date, INTERVAL 15 DAY)
    -> WHERE Lib_Issue_Id IN (7004, 7005);
Query OK, 2 rows affected (0.07 sec)
Rows matched: 2  Changed: 2  Warnings: 0
--32) Remove all the records from Issue table where member_ID is 1

and Issue date in before 10-Dec-06.
mysql> DELETE FROM Issue
    -> WHERE Member_Id = 1 AND Issue_Date < '2006-12-10';
Query OK, 2 rows affected (0.07 sec)

--33) Remove all the records from Book table with category other than RDBMS and Database.
mysql> DELETE FROM Books
    -> WHERE Category NOT IN ('RDBMS', 'Database');
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`library_system`.`issue`, CONSTRAINT `issue_ibfk_2` FOREIGN KEY (`Book_No`) REFERENCES `books` (`Book_No`))
mysql> -- Must drop Issue first because of Foreign Key dependency, or turn off checks
mysql> DROP TABLE Issue;
Query OK, 0 rows affected (0.07 sec)
--34) Remove the table Member.
mysql> DROP TABLE Member;
Query OK, 0 rows affected (0.07 sec)
--35) Remove the table Book.
mysql> DROP TABLE Books;
Query OK, 0 rows affected (0.07 sec)
