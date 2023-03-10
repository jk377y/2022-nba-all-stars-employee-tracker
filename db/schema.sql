DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

USE employees_db;

DROP TABLE IF EXISTS departmentTable;
DROP TABLE IF EXISTS roleTable;
DROP TABLE IF EXISTS employeeTable;

CREATE TABLE departmentTable (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
deptName VARCHAR(100) NOT NULL
);

CREATE TABLE roleTable (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
salary DECIMAL NOT NULL,
departmentId INT,
FOREIGN KEY (departmentId) REFERENCES departmentTable(id) ON DELETE SET NULL
);

CREATE TABLE employeeTable (
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
firstName VARCHAR(50) NOT NULL,
lastName VARCHAR(50) NOT NULL,
roleId INT,
managerId INT
-- FOREIGN KEY (roleId) REFERENCES roleTable(id) ON DELETE SET NULL,
-- FOREIGN KEY (managerId) REFERENCES employeeTable(id) ON DELETE SET NULL 
);