-- Arithmetic Operators
-- +   Addition
-- -   Subtraction
-- *   Multiplication
-- /   Division
-- %   Modulus (remainder)

SELECT Name, Age + 1 AS NextYearAge FROM Students;

-- Comparison Operators
-- =    Equal
-- !=   or <>   Not Equal
-- >    Greater than
-- <    Less than
-- >=   Greater or equal
-- <=   Less or equal

SELECT * FROM Students WHERE Age > 20;

-- Logical Operators
-- AND   Both conditions must be true
-- OR    At least one condition true
-- NOT   Negates condition

SELECT * FROM Students WHERE Age >= 20 AND DeptID = 101;

-- Special Operators
-- BETWEEN   Range of values
-- IN        Match any value in a list
-- NOT IN    Exclude values in list
-- LIKE      Pattern matching (% and _)
-- IS NULL   Value is NULL
-- IS NOT NULL   Value is not NULL
-- EXISTS    Checks if subquery returns rows

SELECT * FROM Students WHERE Age BETWEEN 18 AND 22;
SELECT * FROM Students WHERE Name LIKE 'A%';

-- String Operator
-- CONCAT()  Joins strings

SELECT CONCAT(Name, ' - ', DeptID) AS Details FROM Students;

