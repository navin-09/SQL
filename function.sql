-- Function
-- Returns a single value — used in expressions.

CREATE FUNCTION GetStudentCount(dep INT)
RETURNS INT
BEGIN
    RETURN (SELECT COUNT(*) FROM Students WHERE DeptID = dep);
END;

-- Call:
SELECT GetStudentCount(101);
