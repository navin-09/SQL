# SQL

1. What is DBMS? (Database Management System)

A DBMS is software that allows users to store, manage, retrieve, and update data efficiently.
Instead of storing data in files manually, DBMS organizes it in a structured way and handles data security, backup, concurrency, and fast access.

Key Functions of DBMS
| Function | Description |
| ------------------- | ------------------------------------------------------ |
| Data Storage | Stores data in tables or other structures |
| Data Retrieval | Allows querying and fetching data efficiently |
| Data Modification | Insert, update, delete data |
| Security | Controls access and authorization |
| Backup & Recovery | Restores data in case of failures |
| Concurrency Control | Allows multiple users to access data without conflicts |

Example DBMS
MySQL
PostgreSQL
Oracle
SQL Server
SQLite

2. Relational Model

The Relational Model organizes data into tables (also called relations).
Each table contains rows (records) and columns (attributes).

Terminology
| Term | Meaning |
| ------------------ | ----------------------------------------------- |
| Table / Relation | Collection of data arranged in rows and columns |
| Row / Tuple | One record in a table |
| Column / Attribute | A field describing each row |
| Primary Key | A unique identifier for each row |
| Foreign Key | A reference to a primary key in another table |

Relationships
| Relationship Type | Meaning | Example |
| ----------------- | ---------------------------------- | ------------------ |
| One-to-One | One record relates to one record | Person ↔ Passport |
| One-to-Many | One record relates to many records | Teacher ↔ Students |
| Many-to-Many | Many records link to many records | Students ↔ Courses |

# Super Key

A Super Key is any set of one or more attributes that can uniquely identify a row in a table.
It may contain extra/unnecessary attributes.
Example Super Keys:

{EmpID}

{Email}

{Phone}

{EmpID, Name} → still uniquely identifies, though Name is extra

{Email, Phone} → both unique too

# Candidate Key

A Candidate Key is a minimal Super Key — meaning:
It uniquely identifies each row
It has no extra attributes (cannot remove any field, or uniqueness will break)

Candidate Keys for EMPLOYEE Table:

{EmpID}

{Email}

{Phone}

| EmpID | Email                     | Phone | Name  |
| ----- | ------------------------- | ----- | ----- |
| 101   | [a@x.com](mailto:a@x.com) | 9991  | Ravi  |
| 102   | [b@x.com](mailto:b@x.com) | 9992  | Aisha |
| 103   | [c@x.com](mailto:c@x.com) | 9993  | John  |

Key Point: Every Candidate Key is a Super Key, but not every Super Key is a Candidate Key, because Super Keys may contain unnecessary attributes.


# Commands to Create, Update, and Delete Tables

These commands belong to DDL (Data Definition Language).
| Command          | Meaning                                                 | Example Usage                 |
| ---------------- | ------------------------------------------------------- | ----------------------------- |
| **CREATE TABLE** | Creates a new table                                     | Creating `Students` table     |
| **ALTER TABLE**  | Modifies an existing table (add/remove column, add key) | Adding new column to Students |
| **DROP TABLE**   | Deletes the entire table                                | Removing table permanently    |

# Constarits

| Constraint      | Meaning                                 | Purpose                        |
| --------------- | --------------------------------------- | ------------------------------ |
| **PRIMARY KEY** | Uniquely identifies each row            | No duplicates, no NULL         |
| **FOREIGN KEY** | Links two tables                        | Maintains relational integrity |
| **UNIQUE**      | Value must be unique                    | No duplicates allowed          |
| **NOT NULL**    | Column cannot be empty                  | Must always have a value       |
| **CHECK**       | Limits values based on a condition      | Used for validation            |
| **DEFAULT**     | Assigns a default value if not provided | Auto-fill common values        |


# SQL Operators

## Arithmetic Operators
+   Addition  
-   Subtraction  
*   Multiplication  
/   Division  
%   Modulus (remainder)

Example:
SELECT Name, Age + 1 AS NextYearAge FROM Students;


## Comparison Operators
=     Equal  
!= or <>  Not Equal  
>     Greater than  
<     Less than  
>=    Greater or equal  
<=    Less or equal

Example:
SELECT * FROM Students WHERE Age > 20;


## Logical Operators
AND   Both conditions must be true  
OR    At least one condition true  
NOT   Negates condition

Example:
SELECT * FROM Students WHERE Age >= 20 AND DeptID = 101;


## Special Operators
BETWEEN     Range selection  
IN          Match against multiple values  
NOT IN      Exclude values  
LIKE        Pattern match (% and _)  
IS NULL     Check for NULL  
IS NOT NULL Check for NOT NULL  
EXISTS      Check if subquery returns rows

Examples:
SELECT * FROM Students WHERE Age BETWEEN 18 AND 22;
SELECT * FROM Students WHERE Name LIKE 'A%';


## String Operator
CONCAT()    Join/combine text values

Example:
SELECT CONCAT(Name, ' - ', DeptID) AS Details FROM Students;

# Clauses
| Clause     | Purpose                          |
| ---------- | -------------------------------- |
| `WHERE`    | Filter **rows**                  |
| `ORDER BY` | Sort results                     |
| `LIMIT`    | Restrict number of rows          |
| `GROUP BY` | Group rows by column value       |
| `HAVING`   | Filter **groups** after grouping |
| `DISTINCT` | Remove duplicates                |

# Correct Order of Clauses in a SELECT Query (Syntax Order)

SELECT
FROM
WHERE
GROUP BY
HAVING
ORDER BY
LIMIT;


# JOINS in SQL

Joins are used to combine rows from **two tables** based on a related column (usually a **foreign key**).

INNER JOIN → Only matches
LEFT JOIN  → All from left + matches
RIGHT JOIN → All from right + matches
FULL JOIN  → Everything

# Aggregate Functions in SQL

Aggregate functions perform calculations on **multiple rows** and return **a single result**.
Commonly used with GROUP BY.

COUNT → how many
SUM   → total
AVG   → average
MIN   → smallest value
MAX   → largest value

WHERE → filters rows
HAVING → filters groups


SELECT COUNT(*) 
FROM Students
WHERE DeptID = 101;

SELECT SUM(Salary) AS TotalSalary
FROM Employees;

SELECT AVG(Age) AS AverageAge
FROM Students;

SELECT MIN(Age) AS Youngest
FROM Students;

SELECT MAX(Age) AS Oldest
FROM Students;

SELECT DeptID, COUNT(*) AS TotalStudents
FROM Students
GROUP BY DeptID;
