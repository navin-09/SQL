-- INSERT 
INSERT INTO Students (StudentID, Name, Age, DeptID)
VALUES 
(4, 'Karan', 21, 101),
(5, 'Neha', 23, 103),
(6, 'Riya', 20, 102);

-- INSERT Using SELECT
INSERT INTO FormerStudents (StudentID, Name, DeptID)
SELECT StudentID, Name, DeptID
FROM Students
WHERE Age > 21;
