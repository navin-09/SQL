-- Triggers
-- A trigger automatically runs when INSERT, UPDATE, or DELETE happens on a table.
-- Example: Log every student added
CREATE TABLE StudentLog (
    ActionTime DATETIME,
    StudentName VARCHAR(50)
);

-- trigger called on insert
CREATE TRIGGER LogStudentInsert
AFTER INSERT ON Students
FOR EACH ROW
BEGIN
    INSERT INTO StudentLog VALUES (NOW(), NEW.Name);
END;

INSERT INTO Students VALUES (5, 'Karan', 21, 101);
