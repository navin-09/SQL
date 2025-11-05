-- Why Transactions?
-- To maintain data accuracy and consistency, especially in:
-- Banking (money transfer)
-- Ticket booking
-- E-commerce orders

-- Example: Money Transfer → $100 from A to B
START TRANSACTION;

UPDATE Accounts
SET Balance = Balance - 100
WHERE AccID = 1;   -- sender

UPDATE Accounts
SET Balance = Balance + 100
WHERE AccID = 2;   -- receiver

COMMIT;   -- confirm both
-- If something goes wrong:
ROLLBACK;

