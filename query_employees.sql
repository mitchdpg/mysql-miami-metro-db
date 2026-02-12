-- ============================================================
-- Query Miami Metro Employee Database
-- ============================================================
-- Two options for retrieving employee records from demo_db.
--
-- Usage: mysql -u your_username -p < query_employees.sql
-- ============================================================

-- Option 1: Select the database first, then query
USE demo_db;
SELECT * FROM employees;

-- Option 2: Single command (no USE statement needed)
SELECT * FROM demo_db.employees;
