-- ============================================================
-- Strong User Account — MySQL Admin for JIT Access
-- ============================================================
-- Creates a privileged MySQL user account intended for
-- Just-In-Time (JIT) account provisioning and database access.
-- This account is used as the strong account for automated
-- user creation workflows (e.g., CyberArk SIA integration).
--
-- Usage: mysql -u root -p < create_strong_user.sql
-- ============================================================

-- Create the strong user account
CREATE USER 'stronguser'@'%' IDENTIFIED BY 'YourStrongPassword!';

-- Grant privileges for JIT account management
GRANT CREATE USER ON *.* TO 'stronguser'@'%' WITH GRANT OPTION;
GRANT DROP USER ON *.* TO 'stronguser'@'%' WITH GRANT OPTION;
GRANT ROLE_ADMIN ON *.* TO 'stronguser'@'%';

-- Verify the user was created
SELECT user, host FROM mysql.user WHERE user = 'stronguser';
