-- Deletes current employee_tracker_db if it exists
DROP DATABASE IF EXISTS employee_tracker_db;
-- Creates the employee_tracker_db after deletion
CREATE DATABASE employee_tracker_db;

-- Make sure to use employee_tracker_db
USE employee_tracker_db;

-- Creates the table for list of department types 
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL 
);

-- Creates the table for list of role types
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL (10,2) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

-- Creates the table for list of Employees
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    FOREIGN KEY (role_id) REFERENCES role(id),
    manager_id INT NULL,
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);