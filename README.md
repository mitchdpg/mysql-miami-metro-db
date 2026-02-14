# MySQL - Miami Metro Employee Database

Created a MySQL database and strong user account for the fictional Miami Metro Police Department. Includes table creation, sample data population, and a privileged user account for Just-In-Time (JIT) access provisioning — used alongside CyberArk Secure Infrastructure Access (SIA) for database access workflows.

## Overview

This project demonstrates basic MySQL database administration including database and table creation, data population with sample records, and privileged user account setup for JIT access management. The strong user account is designed to be used with identity security platforms (such as CyberArk SIA) for automated account provisioning.

The goal of this project is not full application development, but practical database setup commonly used in security evaluations, identity integration testing, and proof-of-concept demonstrations.

## Security Note

No real credentials are stored in this repository.
The strong user password in the script is a placeholder — replace it with a secure password before execution.

## What This Project Demonstrates

- MySQL database and table creation
- Data population with INSERT statements
- Privileged user account setup for JIT provisioning
- GRANT-based permission management for account administration
- Integration readiness for identity security platforms (CyberArk SIA)

## Project Structure

```
mysql-miami-metro-db/
├── create_database.sql       # Creates demo_db, employees table, and sample data
├── create_strong_user.sql    # Creates privileged user for JIT access
├── query_employees.sql       # Queries employee records from demo_db
├── .gitignore
└── README.md
```

## Database Schema

**Database:** `demo_db`

**Table:** `employees`

| Column | Type | Description |
|--------|------|-------------|
| id | INT (AUTO_INCREMENT) | Primary key |
| name | VARCHAR(100) | Employee name |
| department | VARCHAR(50) | Department or role |
| hire_date | DATE | Date of hire |

## Sample Data

| Name | Department | Hire Date |
|------|-----------|-----------|
| Dexter Morgan | Spatter Analyst | 2006-10-01 |
| Debra Morgan | Detective | 2007-03-15 |
| James Doakes | Detective | 2004-06-20 |
| Angel Batista | Lieutenant | 2005-09-12 |
| Vince Masuka | Forensics | 2006-02-28 |
| Maria LaGuerta | Captain | 2003-01-10 |

## Example Usage

```bash
## Example Usage

### 1. Clone the Repository
```bash
git clone https://github.com/mitchdpg/mysql-miami-metro-db.git
cd mysql-miami-metro-db
```

Alternatively, click the green **Code** button on GitHub and select **Download ZIP**.

### 2. Create the Database and Employee Records
```bash
mysql -u root -p < create_database.sql
```

This creates the `demo_db` database, the `employees` table, and inserts all sample records.

### 3. Create the Strong User Account (Optional)
```bash
mysql -u root -p < create_strong_user.sql
```

This creates the `stronguser` account used for Just-In-Time (JIT) access provisioning. Only needed if integrating with CyberArk SIA or similar identity platforms.

### 4. Query the Employee Records
```bash
mysql -u root -p < query_employees.sql
```

Or query directly from the MySQL prompt:
```sql
-- Option 1: Select the database first
USE demo_db;
-- View Employees:
SELECT * FROM employees;

-- Option 2: Single command to select demo_db and select employees:
SELECT * FROM demo_db.employees;
```

## Retrieving Data

To query the employee records after setup:

```sql
-- Option 1: Select the database first
USE demo_db;
SELECT * FROM employees;

-- Option 2: Single command
SELECT * FROM demo_db.employees;
```

## Strong User Account

The `create_strong_user.sql` script creates a privileged MySQL account (`stronguser`) with the following grants:

- `CREATE USER` — create new database users
- `DROP USER` — remove database users
- `ROLE_ADMIN` — manage role assignments

This account is intended for use with Just-In-Time (JIT) account provisioning workflows, such as CyberArk SIA database access integrations, where a strong account is required to dynamically create and manage temporary user accounts.

## Use Case

This project reflects common real-world database administration scenarios, such as:

- Setting up test databases for identity security integrations
- Configuring strong accounts for JIT access provisioning
- Supporting presales demonstrations and proof of concept
- Practicing MySQL administration fundamentals

## Disclaimer

This project is not affiliated with or officially supported by MySQL, Oracle, or CyberArk.
It was created for learning and demonstration purposes. All character names are from the television series *Dexter* and are used for illustrative purposes only.
