-- UNION
-- Removes duplicates.

SELECT Name FROM Students
UNION
SELECT Name FROM Alumni;

-- UNION ALL
-- Keeps duplicates (faster).

SELECT Name FROM Students
UNION ALL
SELECT Name FROM Alumni;

-- INTERSECT
-- Returns common rows.

SELECT Name FROM Students
INTERSECT
SELECT Name FROM Alumni;

-- EXCEPT (MySQL uses MINUS in Oracle)
-- Returns rows in first query but not in second.
SELECT Name FROM Students
EXCEPT
SELECT Name FROM Alumni;
