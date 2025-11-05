-- # Simple Job Example (MySQL Event Scheduler)

-- Turn scheduler ON (run once)
SET GLOBAL event_scheduler = ON;

-- Create a job that runs every day and deletes old log entries
CREATE EVENT delete_old_logs
ON SCHEDULE EVERY 1 DAY
DO
  DELETE FROM Logs WHERE LogDate < CURDATE() - INTERVAL 30 DAY;

-- Trigger = Auto runs when data changes.
-- Job = Auto runs on schedule (time-based).

CREATE EVENT check_stock
ON SCHEDULE EVERY 1 HOUR
DO
SELECT * FROM Products WHERE Quantity < 10;
-- Trigger alert or email through app logic



REFRESH MATERIALIZED VIEW SalesMonthlySummary;

CREATE EVENT refresh_mv
ON SCHEDULE EVERY 1 DAY
DO
  REFRESH MATERIALIZED VIEW SalesMonthlySummary;
