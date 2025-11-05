-- DELETE Using a Condition
DELETE FROM Students
WHERE Age < 20;

-- DELETE Using JOIN
-- This removes all ECE students.
DELETE S
FROM Students S
JOIN Departments D ON S.DeptID = D.DeptID
WHERE D.DeptName = 'ECE';

-- DELETE All Rows but Keep Structure
TRUNCATE TABLE Students;
