CREATE VIEW StudentDetails AS
SELECT S.Name, D.DeptName
FROM Students S
JOIN Departments D USING (DeptID);

SELECT * FROM StudentDetails;

CREATE OR REPLACE VIEW StudentDetails AS
SELECT Name, Age FROM Students;

DROP VIEW StudentDetails;


| Purpose                      | Explanation                         |
| ---------------------------- | ----------------------------------- |
| **Simplify complex queries** | Avoid rewriting big joins           |
| **Security**                 | Show only required columns to users |
| **Reusability**              | Use view in multiple queries        |
| **Abstraction**              | Hide database structure changes     |
