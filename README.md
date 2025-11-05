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


# Subqueries in SQL

A **subquery** is a query inside another query.
It is used when one query depends on the result of another.

Syntax:
SELECT columns
FROM table
WHERE column (operator) (subquery);

# Views in SQL

A **View** is a **virtual table** based on a query.
It does **not store data**, it displays data from underlying tables.

| Purpose                      | Explanation                         |
| ---------------------------- | ----------------------------------- |
| **Simplify complex queries** | Avoid rewriting big joins           |
| **Security**                 | Show only required columns to users |
| **Reusability**              | Use view in multiple queries        |
| **Abstraction**              | Hide database structure changes     |

Subquery → Query inside a query
View → Saved query treated like a table

View = stored query
Materialized View = stored result


# Indexing in SQL

An **index** is a data-structure that helps the database **find rows faster**, like an index in a book.

Without index → DB scans the entire table (slow).  
With index → DB jumps directly to matching rows (fast).


# Indexing in SQL

An **index** is a data-structure that helps the database **find rows faster**, like an index in a book.

Without index → DB scans the entire table (slow).  
With index → DB jumps directly to matching rows (fast).

How Index Works (Simple Explanation)

Think of a table like a book:

| Type       | What you do                                          |
| ---------- | ---------------------------------------------------- |
| No Index   | Flip all pages to find a word                        |
| With Index | Use the index page at back → go directly to the page |

Index = Fast search
Primary Key → Index auto created
Use index on WHERE, JOIN, ORDER BY columns
Avoid index on frequently changing or duplicate-heavy columns


# Transactions in SQL

A **transaction** is a group of one or more SQL statements that are treated as a **single unit**.
Either **all** statements succeed (commit) or **none** are applied (rollback).

# ACID Properties
Transactions follow ACID:

| Property        | Meaning                       | Simple Explanation                       |
| --------------- | ----------------------------- | ---------------------------------------- |
| **A**tomicity   | All or nothing                | Money deducted but not added? → Rollback |
| **C**onsistency | Data must remain valid        | No breaking rules or constraints         |
| **I**solation   | Transactions don’t interfere  | Parallel updates don’t clash             |
| **D**urability  | Saved changes survive crashes | Once committed → permanent               |

# Basic Transaction Commands (TCL)

| Command                       | Meaning                     |
| ----------------------------- | --------------------------- |
| `BEGIN` / `START TRANSACTION` | Start transaction           |
| `COMMIT`                      | Save changes permanently    |
| `ROLLBACK`                    | Undo changes                |
| `SAVEPOINT`                   | Mark a point to rollback to |
| `SET TRANSACTION`             | Set isolation level         |

# Transaction Isolation Levels in SQL

Isolation levels control **how much one transaction is allowed to see the effects of another**.
Higher isolation = safer data, but slower performance.

| Problem                 | Meaning                                                  | Example                             |
| ----------------------- | -------------------------------------------------------- | ----------------------------------- |
| **Dirty Read**          | Read data that is not committed                          | See a temporary balance change      |
| **Non-Repeatable Read** | Same query returns different results in same transaction | Someone updates row in between      |
| **Phantom Read**        | New rows appear in repeated queries                      | Someone inserts new rows in between |

| Level              | Dirty Read | Non-Repeatable Read | Phantom Read |
|-------------------|-----------|----------------------|--------------|
| READ UNCOMMITTED  | ✅ Allowed | ✅ Allowed           | ✅ Allowed   |
| READ COMMITTED    | ❌ No     | ✅ Allowed           | ✅ Allowed   |
| REPEATABLE READ    | ❌ No     | ❌ No               | ✅ Allowed   |
| SERIALIZABLE       | ❌ No     | ❌ No               | ❌ No        |

# Deadlocks in SQL

A **deadlock** occurs when two transactions are **waiting on each other** to release locks.
Because both are waiting, **neither can continue**, so the database stops one of them.

Deadlock = Transactions waiting on each other → both stuck
Database detects and rolls back one
Prevent by: 
- Lock in same order
- Keep transactions short
- Use indexing

# Locks in SQL

Locks control **how multiple transactions read/write the same data**.
They prevent conflicts and keep data consistent.

| Lock Type         | Operation                | Others Can Read? | Others Can Write? |
| ----------------- | ------------------------ | ---------------- | ----------------- |
| **Shared (S)**    | SELECT                   | ✅ Yes            | ❌ No              |
| **Exclusive (X)** | UPDATE / DELETE / INSERT | ❌ No             | ❌ No              |

Shared Lock = Many readers, no writers
Exclusive Lock = Only one writer, no one else allowed

# NF(Normal Form) Normalization in SQL 

Normalization is the process of organizing data in a database to:
- Reduce redundancy (duplicate data)
- Improve data consistency
- Make updates/inserts/deletes efficient

<!-- Unnormalized Table Example -->
<!-- Problem: Multiple courses stored in one column → bad structure. -->

Students
------------------------------------------------------
StudentID | Name  | Courses
1         | Ravi  | CSE, ECE
2         | John  | CSE

1NF (First Normal Form)
Rule:
    No repeating groups
    Each cell must contain one value
    Each row must be unique

Students
---------------------------
StudentID | Name  | Course
1         | Ravi  | CSE
1         | Ravi  | ECE
2         | John  | CSE

2NF (Second Normal Form)
Rule:
    Table must be in 1NF
    No partial dependency
    (No attribute should depend on part of a composite primary key)

Enrollments
------------------------------------------
StudentID + CourseID → Marks, StudentName
<!-- StudentName depends only on StudentID, not CourseID → partial dependency. -->


<!-- Fix (Split into two tables): -->
Students
-------------------------
StudentID | Name

Enrollments
-------------------------------
StudentID | CourseID | Marks

<!-- 3NF (Third Normal Form) -->
Rule:
    Table must be in 2NF
    No transitive dependency
    (Non-key attributes shouldn’t depend on other non-key attributes)

Students
-------------------------------------------------
StudentID (PK) | Name | DeptID | DeptName

DeptName depends on DeptID, not StudentID → transitive dependency.

Students
---------------------------
StudentID | Name | DeptID

Departments
---------------------------
DeptID | DeptName
✅ Now each table stores only relevant data.

| Normal Form | Condition                | Fixes                                                 |
| ----------- | ------------------------ | ----------------------------------------------------- |
| **1NF**     | No multi-valued columns  | Remove repeating values → separate rows               |
| **2NF**     | No partial dependency    | Remove attributes based on only part of composite key |
| **3NF**     | No transitive dependency | Move attributes that depend on non-key columns        |

1NF → One value per cell
2NF → Fully dependent on the whole key
3NF → Nothing depends on non-key attributes



# 1) Set Operations (UNION, UNION ALL, INTERSECT, EXCEPT)

Used to combine results from two SELECT queries.
Both queries must have **same number of columns** and **same data types**.

# 2) Stored Procedures and Functions

| Feature         | Procedure         | Function                   |
| --------------- | ----------------- | -------------------------- |
| Returns         | 0 or many results | Always returns **1 value** |
| Used in         | EXEC/CALL         | SELECT queries             |
| Can modify data | ✅ Yes             | ❌ No (generally)           |

# 3) Triggers
A trigger automatically runs when INSERT, UPDATE, or DELETE happens on a table.

# 1) Window Functions

Window functions perform calculations **across rows but do not group or collapse rows** like GROUP BY does.

Syntax:
function() OVER (PARTITION BY ... ORDER BY ...)

Common Window Functions:
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- SUM() / AVG() / COUNT() used as window functions

Trigger = Auto runs when data changes.
Job = Auto runs on schedule (time-based).
