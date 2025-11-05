CREATE TABLE Students (
    StudentID INT PRIMARY KEY,        -- Unique + Not Null
    Name VARCHAR(50) NOT NULL,        -- Cannot be empty
    Age INT CHECK (Age >= 18),        -- Must be 18 or older
    Email VARCHAR(100) UNIQUE,        -- Must not duplicate
    City VARCHAR(50) DEFAULT 'Delhi', -- Auto set if not specified
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)  -- Linked to department table
);


CREATE TABLE Department (
   DeptID INT PRIMARY KEY,
   DeptName VARCHAR(50)
);
