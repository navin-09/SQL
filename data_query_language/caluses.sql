
-- ## 1) WHERE Clause
-- Used to filter records based on a condition.

-- Example:
SELECT * FROM Students
WHERE Age > 20;


-- ## 2) ORDER BY Clause
-- Used to sort records in ascending (ASC) or descending (DESC) order.

-- Example:
SELECT Name, Age
FROM Students
ORDER BY Age DESC;     -- oldest first


-- ## 3) LIMIT Clause
-- Used to restrict how many rows are returned.

-- Example:
SELECT * FROM Students
LIMIT 3;               -- first 3 rows only


-- ## 4) GROUP BY Clause
-- Used to group rows that have the same values (often used with aggregate functions).

-- Example:
SELECT DeptID, COUNT(*) AS TotalStudents
FROM Students
GROUP BY DeptID;


-- ## 5) HAVING Clause
-- Used to filter groups (works with GROUP BY).  
-- **Difference:** WHERE filters rows, HAVING filters groups.

-- Example:
SELECT DeptID, COUNT(*) AS TotalStudents
FROM Students
GROUP BY DeptID
HAVING COUNT(*) > 1;   -- only show departments with more than 1 student


-- ## 6) DISTINCT Clause
-- Used to remove duplicate values.

-- Example:
SELECT DISTINCT DeptID
FROM Students;
