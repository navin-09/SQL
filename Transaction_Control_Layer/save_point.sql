START TRANSACTION;

UPDATE Employees SET Salary = Salary + 1000 WHERE DeptID = 101;
SAVEPOINT sp1;

UPDATE Employees SET Salary = Salary - 500 WHERE DeptID = 102;
ROLLBACK TO sp1;   -- Undo second update only

COMMIT;
