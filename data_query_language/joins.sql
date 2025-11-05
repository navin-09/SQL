-- Returns only matched records in both tables.

SELECT Students.Name, Departments.DeptName
FROM Students
INNER JOIN Departments
ON Students.DeptID = Departments.DeptID;

-- LEFT JOIN (LEFT OUTER JOIN)

SELECT Students.Name, Departments.DeptName
FROM Students
LEFT JOIN Departments
ON Students.DeptID = Departments.DeptID;

-- RIGHT JOIN (RIGHT OUTER JOIN)
-- All records from right table (Departments)

SELECT Students.Name, Departments.DeptName
FROM Students
RIGHT JOIN Departments
ON Students.DeptID = Departments.DeptID;

-- FULL OUTER JOIN
-- Returns all rows from both tables (matched + unmatched).
SELECT Students.Name, Departments.DeptName
FROM Students
FULL OUTER JOIN Departments
ON Students.DeptID = Departments.DeptID;

-- CROSS JOIN
-- Makes every combination of rows (Cartesian product).
-- If Students = 4 rows and Departments = 3 rows → Output = 12 rows.
SELECT Students.Name, Departments.DeptName
FROM Students
CROSS JOIN Departments;

-- SELF JOIN
-- A table joined with itself.
-- Used when rows relate to other rows in the same table.

-- Example: Employee and Manager are in the same table

SELECT E1.Name AS Employee, E2.Name AS Manager
FROM Employees E1
JOIN Employees E2
ON E1.ManagerID = E2.EmpID;


