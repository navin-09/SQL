-- Add a new column
ALTER TABLE Students
ADD Department VARCHAR(50);

-- Modify column datatype
ALTER TABLE Students
MODIFY Age INT;

-- Drop a column
ALTER TABLE Students
DROP COLUMN Department;

