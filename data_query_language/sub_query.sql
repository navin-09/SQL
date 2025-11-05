-- Subquery in WHERE
-- Return students older than the average age:

SELECT Name, Age
FROM Students
WHERE Age > (SELECT AVG(Age) FROM Students);

-- Subquery in FROM (Inline View / Derived Table)
-- Calculate average age by department, then select only high averages:

SELECT DeptID, AvgAge
FROM (
    SELECT DeptID, AVG(Age) AS AvgAge
    FROM Students
    GROUP BY DeptID
) AS T
WHERE AvgAge > 20;

-- Subquery in SELECT
-- Show each student's department count:

SELECT Name,
       (SELECT COUNT(*) FROM Students WHERE DeptID = S.DeptID) AS DeptCount
FROM Students S;

-- EXISTS Subquery
-- Check if matching row exists:

SELECT Name
FROM Students S
WHERE EXISTS (
    SELECT * FROM Departments D 
    WHERE S.DeptID = D.DeptID
);

-- IN Subquery
-- Return students only from valid departments:

SELECT Name
FROM Students
WHERE DeptID IN (SELECT DeptID FROM Departments);


