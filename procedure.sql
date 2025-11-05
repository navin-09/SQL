-- Stored Procedure
-- A saved block of SQL code — used for operations (can insert/update/delete)

CREATE PROCEDURE GetStudentsByDept(IN dep INT)
BEGIN
    SELECT Name, DeptID
    FROM Students
    WHERE DeptID = dep;
END;

-- Call:
CALL GetStudentsByDept(101);


-- Key points:

-- Can return multiple records

-- Can modify database

-- Does NOT have to return a value