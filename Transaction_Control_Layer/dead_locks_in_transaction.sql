BEGIN;
UPDATE Accounts SET Balance = Balance - 100 WHERE AccID = 1;  -- Locks row 1
UPDATE Accounts SET Balance = Balance + 100 WHERE AccID = 2;  -- Tries to lock row 2 (waits)

BEGIN;
UPDATE Accounts SET Balance = Balance + 50 WHERE AccID = 2;  -- Locks row 2
UPDATE Accounts SET Balance = Balance - 50 WHERE AccID = 1;  -- Tries to lock row 1 (waits)

-- Both are waiting → Deadlock → Database detects and kills one.
-- How Databases Handle It

-- The DB automatically resolves deadlocks by:

-- Rolling back one transaction

-- Letting the other complete
-- Error returned:
    -- Deadlock found; try restarting transaction.

-- How to Prevent Deadlocks
-- Bad (causes deadlock):
    -- T1 locks A first, T2 locks B first → conflict
-- Good:
    -- Both T1 and T2 always lock A first, then B → safe


