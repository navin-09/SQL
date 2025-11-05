-- SELECT with JOIN
SELECT S.Name, S.Age, D.DeptName
FROM Students S
JOIN Departments D
ON S.DeptID = D.DeptID;

-- SELECT with Subquery
SELECT Name, Age 
FROM Students
WHERE Age > (SELECT AVG(Age) FROM Students);
