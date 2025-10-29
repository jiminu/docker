-- Ensure database charset/collation (runs only on first initialization)
CREATE DATABASE IF NOT EXISTS `miniproject` 
  CHARACTER SET utf8mb4 
  COLLATE utf8mb4_unicode_ci;

-- Use the database
USE `miniproject`;

-- Set default charset for new tables
SET NAMES utf8mb4;
