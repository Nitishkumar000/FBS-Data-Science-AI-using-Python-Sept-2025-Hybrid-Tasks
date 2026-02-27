-----Room booking------
C:\Users\Shital>mysql -u root -p
Enter password: ***********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 95
Server version: 8.0.44 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
-- Database Creation---

mysql> CREATE DATABASE HotelManagement;
Query OK, 1 row affected (0.03 sec)

mysql> USE HotelManagement;
Database changed
--Customer Registration (Mandatory Email)--
mysql> CREATE TABLE Customer (
    -> CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    ->  Name VARCHAR(50),
    ->   Email VARCHAR(100) UNIQUE NOT NULL,
    ->  Phone VARCHAR(15)
    -> );
Query OK, 0 rows affected (0.17 sec)

---Room Management---
mysql> CREATE TABLE Room (
    ->  RoomID INT PRIMARY KEY AUTO_INCREMENT,
    ->   RoomType VARCHAR(20),
    -> RentPerDay DECIMAL(10,2));
Query OK, 0 rows affected (0.09 sec)

--Room Booking (Online Booking)--
mysql> CREATE TABLE Booking (
    ->  BookingID INT PRIMARY KEY AUTO_INCREMENT,
    ->  CustomerID INT,
    -> RoomID INT,
    ->  CheckIn DATE,
    -> CheckOut DATE,
    -> FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    -> FOREIGN KEY (RoomID) REFERENCES Room(RoomID));
Query OK, 0 rows affected (0.13 sec)

--Food Service Management--
mysql> CREATE TABLE FoodMenu (
    ->  FoodID INT PRIMARY KEY AUTO_INCREMENT,
    ->   FoodName VARCHAR(50),
    ->  Price DECIMAL(10,2));
Query OK, 0 rows affected (0.09 sec)


mysql> CREATE TABLE FoodOrder (
    -> OrderID INT PRIMARY KEY AUTO_INCREMENT,
    -> BookingID INT,
    -> FoodID INT,
    -> Quantity INT,
    -> FOREIGN KEY (BookingID) REFERENCES Booking(BookingID),
    ->  FOREIGN KEY (FoodID) REFERENCES FoodMenu(FoodID)
    -> );
Query OK, 0 rows affected (0.06 sec)

--. Laundry Service (₹20 per cloth)--
mysql> CREATE TABLE LaundryService (
    -> LaundryID INT PRIMARY KEY AUTO_INCREMENT,
    ->  BookingID INT,
    ->  NoOfClothes INT,
    ->  RatePerCloth DECIMAL(5,2) DEFAULT 20,
    ->  FOREIGN KEY (BookingID) REFERENCES Booking(BookingID));
Query OK, 0 rows affected (0.10 sec)

--Site Visit Service--
mysql> CREATE TABLE SiteVisit (
    ->  VisitID INT PRIMARY KEY AUTO_INCREMENT,
    ->  BookingID INT,
    ->  VehicleType VARCHAR(30),
    -> Days INT,
    -> RatePerDay DECIMAL(10,2),
    -> FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
    -> );
Query OK, 0 rows affected (0.10 sec)

--Invoice Management--
mysql> CREATE TABLE Invoice (
    ->  InvoiceID INT PRIMARY KEY AUTO_INCREMENT,
    ->  BookingID INT,
    -> InvoiceDate DATE,
    -> TotalAmount DECIMAL(12,2),
    -> FOREIGN KEY (BookingID) REFERENCES Booking(BookingID));
Query OK, 0 rows affected (0.11 sec)

--Inserting Sample Data--
mysql> INSERT INTO Room (RoomType, RentPerDay)
    -> VALUES ('Basic', 2000), ('Luxury', 5000);
Query OK, 2 rows affected (0.05 sec)
Records: 2  Duplicates: 0  Warnings: 0

--Inserting Customer Data--
mysql> INSERT INTO Customer (Name, Email, Phone)
    -> VALUES ('Shital chougule', 'chouguleshital22003@gmail.com', '8432642203');
Query OK, 1 row affected (0.06 sec)

--Verifying the Created Tables and Inserted Data--
mysql> show tables;
+---------------------------+
| Tables_in_hotelmanagement |
+---------------------------+
| booking                   |
| customer                  |
| foodmenu                  |
| foodorder                 |
| invoice                   |
| laundryservice            |
| room                      |
| sitevisit                 |
+---------------------------+
8 rows in set (0.04 sec)

--Viewing Inserted Data--
mysql> SELECT * FROM Customer;
+------------+-----------------+-------------------------------+------------+
| CustomerID | Name            | Email                         | Phone      |
+------------+-----------------+-------------------------------+------------+
|          1 | Shital chougule | chouguleshital22003@gmail.com | 8432642203 |
+------------+-----------------+-------------------------------+------------+
1 row in set (0.00 sec)

mysql> SELECT * FROM Room;
+--------+----------+------------+
| RoomID | RoomType | RentPerDay |
+--------+----------+------------+
|      1 | Basic    |    2000.00 |
|      2 | Luxury   |    5000.00 |
+--------+----------+------------+
2 rows in set (0.00 sec)

---sample data insertion ---

mysql> INSERT INTO Customer (Name, Email, Phone)
    -> VALUES
    -> ('Rahul Patil', 'rahul@gmail.com', '9876543210'),
    -> ('Anita Sharma', 'anita@gmail.com', '9876501234'),
    -> ('Sneha Joshi', 'sneha@gmail.com', '9876549870');
Query OK, 3 rows affected (0.05 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Room (RoomType, RentPerDay)
    -> VALUES
    -> ('Basic', 2000),
    -> ('Luxury', 5000),
    -> ('Deluxe', 3500);
Query OK, 3 rows affected (0.06 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Booking (CustomerID, RoomID, CheckIn, CheckOut)
    -> VALUES
    -> (1, 2, '2025-12-20', '2025-12-22'),
    -> (2, 1, '2025-12-21', '2025-12-23'),
    -> (3, 3, '2025-12-19', '2025-12-21');
Query OK, 3 rows affected (0.08 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO FoodMenu (FoodName, Price)
    -> VALUES
    -> ('Pizza', 250),
    -> ('Burger', 150),
    -> ('Pasta', 200),
    -> ('Salad', 100);
Query OK, 4 rows affected (0.05 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> INSERT INTO FoodOrder (BookingID, FoodID, Quantity)
    -> VALUES
    -> (1, 1, 2),
    -> (1, 3, 1),
    -> (2, 2, 3),
    -> (3, 4, 2);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> INSERT INTO LaundryService (BookingID, NoOfClothes)
    -> VALUES
    -> (1, 5),
    -> (2, 3),
    -> (3, 4);
Query OK, 3 rows affected (0.06 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO SiteVisit (BookingID, VehicleType, Days, RatePerDay)
    -> VALUES
    -> (1, 'Car', 2, 1500),
    -> (2, 'Van', 1, 2000),
    -> (3, 'Bike', 3, 500);
Query OK, 3 rows affected (0.06 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Invoice (BookingID, InvoiceDate, TotalAmount)
    -> VALUES
    -> (1, '2025-12-22', 12000),
    -> (2, '2025-12-23', 7500),
    -> (3, '2025-12-21', 8200);
Query OK, 3 rows affected (0.06 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Customer;
+------------+-----------------+-------------------------------+------------+
| CustomerID | Name            | Email                         | Phone      |
+------------+-----------------+-------------------------------+------------+
|          1 | Shital chougule | chouguleshital22003@gmail.com | 8432642203 |
|          2 | Rahul Patil     | rahul@gmail.com               | 9876543210 |
|          3 | Anita Sharma    | anita@gmail.com               | 9876501234 |
|          4 | Sneha Joshi     | sneha@gmail.com               | 9876549870 |
+------------+-----------------+-------------------------------+------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM Room;
+--------+----------+------------+
| RoomID | RoomType | RentPerDay |
+--------+----------+------------+
|      1 | Basic    |    2000.00 |
|      2 | Luxury   |    5000.00 |
|      3 | Basic    |    2000.00 |
|      4 | Luxury   |    5000.00 |
|      5 | Deluxe   |    3500.00 |
+--------+----------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Booking;
+-----------+------------+--------+------------+------------+
| BookingID | CustomerID | RoomID | CheckIn    | CheckOut   |
+-----------+------------+--------+------------+------------+
|         1 |          1 |      2 | 2025-12-20 | 2025-12-22 |
|         2 |          2 |      1 | 2025-12-21 | 2025-12-23 |
|         3 |          3 |      3 | 2025-12-19 | 2025-12-21 |
+-----------+------------+--------+------------+------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM FoodMenu;
+--------+----------+--------+
| FoodID | FoodName | Price  |
+--------+----------+--------+
|      1 | Pizza    | 250.00 |
|      2 | Burger   | 150.00 |
|      3 | Pasta    | 200.00 |
|      4 | Salad    | 100.00 |
+--------+----------+--------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM FoodOrder;
+---------+-----------+--------+----------+
| OrderID | BookingID | FoodID | Quantity |
+---------+-----------+--------+----------+
|       1 |         1 |      1 |        2 |
|       2 |         1 |      3 |        1 |
|       3 |         2 |      2 |        3 |
|       4 |         3 |      4 |        2 |
+---------+-----------+--------+----------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM LaundryService;
+-----------+-----------+-------------+--------------+
| LaundryID | BookingID | NoOfClothes | RatePerCloth |
+-----------+-----------+-------------+--------------+
|         1 |         1 |           5 |        20.00 |
|         2 |         2 |           3 |        20.00 |
|         3 |         3 |           4 |        20.00 |
+-----------+-----------+-------------+--------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM LaundryService;
+-----------+-----------+-------------+--------------+
| LaundryID | BookingID | NoOfClothes | RatePerCloth |
+-----------+-----------+-------------+--------------+
|         1 |         1 |           5 |        20.00 |
|         2 |         2 |           3 |        20.00 |
|         3 |         3 |           4 |        20.00 |
+-----------+-----------+-------------+--------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM SiteVisit;
+---------+-----------+-------------+------+------------+
| VisitID | BookingID | VehicleType | Days | RatePerDay |
+---------+-----------+-------------+------+------------+
|       1 |         1 | Car         |    2 |    1500.00 |
|       2 |         2 | Van         |    1 |    2000.00 |
|       3 |         3 | Bike        |    3 |     500.00 |
+---------+-----------+-------------+------+------------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM Invoice;
+-----------+-----------+-------------+-------------+
| InvoiceID | BookingID | InvoiceDate | TotalAmount |
+-----------+-----------+-------------+-------------+
|         1 |         1 | 2025-12-22  |    12000.00 |
|         2 |         2 | 2025-12-23  |     7500.00 |
|         3 |         3 | 2025-12-21  |     8200.00 |
+-----------+-----------+-------------+-------------+
3 rows in set (0.00 sec)

mysql> EXIT;
Bye
