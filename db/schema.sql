-- Deletes current employee_tracker_db if it exists
DROP DATABASE IF EXISTS employee_tracker_db;
-- Creates the employee_tracker_db after deletion
CREATE DATABASE employee_tracker_db;

-- Make sure to use employee_tracker_db
USE employee_tracker_db;

-- Creates the table for list of department types 
CREATE TABLE Departments (
    dept_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY (dept_id)
);

-- Creates the table for list of role types
CREATE TABLE Roles (
    role_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NULL,
    dept_id INT NOT NULL,
    PRIMARY KEY (role_id),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Creates the table for list of Employees
CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT NOT NULL,
    PRIMARY KEY (employee_id)
    FOREIGN KEY (role_id) REFERENCES Roles(role_id),
    FOREIGN KEY (manager_id) REFERENCES Employees(employee_id)
);