-- Creating an Index
CREATE INDEX idx_student_name
ON Students(Name);

-- Query using Name becomes faster:
SELECT * FROM Students WHERE Name = 'Ravi';

-- Unique Index
-- Ensures values are unique (like Primary Key).
CREATE UNIQUE INDEX idx_unique_email
ON Users(Email);

-- Composite Index (Index on multiple columns)
CREATE INDEX idx_emp_dept_salary
ON Employees(DeptID, Salary);
