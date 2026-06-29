-- //////////////////////////////////////////
/*
1. 
Select all brands: Modify Header: Brand
*/
/*
SELECT
    brand_name AS Brand
FROM
    production.brands
*/

-- //////////////////////////////////////////

/*
2. 
Customers from Bronx and Brooklyn
Modify headers:
Cust ID, Last name, First name, Email, Street Address, City, State
Order by City and Last name
*/
/*
SELECT
    customer_id AS #,
    last_name AS [Last Name],
    first_name AS [First Name],
    email AS [Mail Address],
    street AS [Street Address],
    city AS [City],
    state AS [State]
FROM
    sales.customers
WHERE 
    city IN ('bronx', 'Brooklyn')
ORDER BY
    city, last_name
*/

-- //////////////////////////////////////////

/*
3. 
All Products, brand should be readable not id. 
Modify headers:
Product name, Brand, Model, Price
Order by Product name, descending order
*/
/*
SELECT
    product_name as [Product Name],
    pb.brand_name as [Brand],
    model_year as [Model],
    list_price as [Price]
FROM
    production.products as pp
INNER JOIN
    production.brands as pb
ON
    pp.brand_id = pb.brand_id
ORDER BY
    product_name DESC
*/

-- //////////////////////////////////////////

/*
4.
Use SQL COUNT() function to get number of customers who are from state NY.
Modify header:
NY Customers
*/
/*
SELECT
    COUNT(*) AS [NY Customers]
FROM
    sales.customers
WHERE
    State IN ('NY')
*/

-- //////////////////////////////////////////

/*
5.
All products that Pamala Henry from Bronx NY has ordered.
Brand should be readable not id
Modify headers:
Product name, Brand, Price
*/
/*
SELECT 
    p.product_name AS [Product Name],
    b.brand_name AS [Brand],
    p.list_price AS [Price]
FROM
    sales.customers AS c
INNER JOIN
    sales.orders AS o
ON
    c.customer_id = o.customer_id
INNER JOIN
    sales.order_items AS oi
ON
    o.order_id = oi.order_id
INNER JOIN
    production.products AS p
ON
    oi.product_id = p.product_id
INNER JOIN
    production.brands AS b
ON
    p.brand_id = b.brand_id
WHERE
    c.first_name = 'Pamala' AND
    c.last_name = 'Henry' AND
    c.city = 'Bronx' AND
    c.state = 'NY';
*/

-- //////////////////////////////////////////
--              SCRIPTS BELOW
-- //////////////////////////////////////////

/*
-- create schemas
CREATE SCHEMA sebastian;
go

-- Create Tables
CREATE TABLE sebastian.students (
studentID INT IDENTITY (1, 1) PRIMARY KEY,
last_name NVARCHAR (255) NOT NULL,
first_name NVARCHAR (255) NOT NULL
);

CREATE TABLE sebastian.courses (
courseID INT IDENTITY (1, 1) PRIMARY KEY,
title NVARCHAR (255) NOT NULL,
description NVARCHAR (255) NOT NULL
);

CREATE TABLE sebastian.enrollments (
enrollmentID INT IDENTITY (1, 1) PRIMARY KEY,
courseID INT NOT NULL,
studentID INT NOT NULL,
startdate DATE NOT NULL,
enddate DATE NOT NULL,
FOREIGN KEY (courseID) REFERENCES sebastian.courses (courseID) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (studentID) REFERENCES sebastian.students (studentID) ON DELETE CASCADE ON UPDATE CASCADE
);
*/

-- //////////////////////////////////////////
--            POPULATE THE TABLES
-- //////////////////////////////////////////

/*
use BikeStores;

SET IDENTITY_INSERT sebastian.students ON;
INSERT INTO sebastian.students(studentID,last_name,first_name) VALUES(1,'Hank','Tom')
INSERT INTO sebastian.students(studentID,last_name,first_name) VALUES(2,'DiCaprio','Leonardo')
INSERT INTO sebastian.students(studentID,last_name,first_name) VALUES(3,'Washington','Denzel')
INSERT INTO sebastian.students(studentID,last_name,first_name) VALUES(4,'Johansson','Scarlett')
INSERT INTO sebastian.students(studentID,last_name,first_name) VALUES(5,'Pitt','Brad')
INSERT INTO sebastian.students(studentID,last_name,first_name) VALUES(6,'Lawrence','Jennifer')
INSERT INTO sebastian.students(studentID,last_name,first_name) VALUES(7,'Clooney','George')
INSERT INTO sebastian.students(studentID,last_name,first_name) VALUES(8,'Portman','Natalie')
SET IDENTITY_INSERT sebastian.students OFF;

SET IDENTITY_INSERT sebastian.courses ON;
INSERT INTO sebastian.courses(courseID,title,description) VALUES(1,'Introduction to Programming','Basics of programming using modern languages. Covers variables, control structures, functions and basic algorithms.')
INSERT INTO sebastian.courses(courseID,title,description) VALUES(2,'Database Design and SQL','Relational database concepts, normalization, ER modeling and hands-on SQL queries with SQL Server.')
INSERT INTO sebastian.courses(courseID,title,description) VALUES(3,'Network Fundamentals','Introduction to computer networks, TCP/IP, routing, switching and basic network security.')
INSERT INTO sebastian.courses(courseID,title,description) VALUES(4,'Cybersecurity Essentials','Core cybersecurity principles including risk management, encryption, authentication and threat mitigation.')
INSERT INTO sebastian.courses(courseID,title,description) VALUES(5,'Web Development Basics','Front-end and back-end web development fundamentals including HTML, CSS, JavaScript and server-side concepts.')
SET IDENTITY_INSERT sebastian.courses OFF;


INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(1,1,'20260102','20260228');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(1,2,'20260102','20260228');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(1,3,'20260102','20260228');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(2,1,'20250102','20250228');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(2,2,'20250102','20250228');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(2,3,'20250102','20250228');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(3,1,'20251102','20251228');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(3,2,'20251102','20251228');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(3,3,'20251102','20251228');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(3,4,'20260202','20260318');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(3,5,'20260202','20260318');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(3,8,'20260202','20260318');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(4,4,'20250502','20250628');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(4,5,'20250502','20250628');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(4,8,'20250502','20250628');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(5,4,'20251002','20251201');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(5,5,'20251002','20251201');
INSERT INTO sebastian.enrollments(courseID,studentID,startdate,enddate) VALUES(5,8,'20251002','20251201');

*/

-- //////////////////////////////////////////
--       EXERCISE QUERY THE DATABASE
-- //////////////////////////////////////////

/*
SELECT
sc.title AS [Course Name],
ss.last_name AS [Last Name],
ss.first_name AS [First Name],
se.startdate AS [Start Date],
se.enddate AS [End Date]
FROM
	sebastian.enrollments as se
INNER JOIN
	sebastian.students as ss
ON
	se.studentID = ss.studentID
INNER JOIN
	sebastian.courses as sc
ON
	se.courseID = sc.courseID
ORDER BY
sc.title
*/