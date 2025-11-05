-- READ UNCOMMITTED

-- Transactions can see uncommitted (dirty) data

-- Fast but unsafe

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT Balance FROM Accounts;


-- READ COMMITTED (Most Common in SQL Servers)

-- Can only read committed data

-- Prevents dirty reads

-- But allows non-repeatable reads

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT Balance FROM Accounts;

-- REPEATABLE READ (Default in MySQL)

-- Row data seen once will not change

-- Prevents dirty reads + non-repeatable reads

-- But phantom rows may appear

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SELECT * FROM Students WHERE DeptID = 101;

-- SERIALIZABLE (Highest Isolation)

-- Executes transactions one-by-one

-- Prevents every anomaly

-- Slowest / rarely used except in critical systems

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SELECT * FROM Students WHERE DeptID = 101;


-- More Safety → Less Performance:
-- READ UNCOMMITTED → READ COMMITTED → REPEATABLE READ → SERIALIZABLE

-- | Level            | Like…                       | Meaning                           |
-- | ---------------- | --------------------------- | --------------------------------- |
-- | READ UNCOMMITTED | Rumors                      | People pass info before confirmed |
-- | READ COMMITTED   | News                        | Only share confirmed info         |
-- | REPEATABLE READ  | Locked Topic                | Everyone must wait to modify      |
-- | SERIALIZABLE     | One person speaks at a time | Maximum control                   |
