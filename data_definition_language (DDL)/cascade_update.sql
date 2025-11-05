CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
    ON UPDATE CASCADE
);

UPDATE Departments
SET DeptID = 10
WHERE DeptID = 3;
