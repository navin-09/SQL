
-- UPDATE Using a Condition
SET Age = Age + 1
WHERE DeptID = 101;

-- UPDATE Using JOIN
-- This moves all CSE students to ECE department.
UPDATE Students S
JOIN Departments D ON S.DeptID = D.DeptID
SET S.DeptID = 102
WHERE D.DeptName = 'CSE';
