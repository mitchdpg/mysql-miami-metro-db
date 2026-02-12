-- ============================================================
-- Miami Metro Police Department — Employee Database
-- ============================================================
-- Creates the demo_db database, employees table, and populates
-- it with sample employee records.
--
-- Usage: mysql -u your_username -p < create_database.sql
-- ============================================================

-- Create and select the database
CREATE DATABASE IF NOT EXISTS demo_db;
USE demo_db;

-- Create the employees table
CREATE TABLE IF NOT EXISTS employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    hire_date DATE
);

-- Insert employee records
INSERT INTO employees (name, department, hire_date) VALUES
('Dexter Morgan', 'Spatter Analyst', '2006-10-01'),
('Debra Morgan', 'Detective', '2007-03-15'),
('James Doakes', 'Detective', '2004-06-20'),
('Angel Batista', 'Lieutenant', '2005-09-12'),
('Vince Masuka', 'Forensics', '2006-02-28'),
('Maria LaGuerta', 'Captain', '2003-01-10');

-- Verify the data
SELECT * FROM employees;
