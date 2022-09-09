USE employee_tracker_db;

-- Departments table
INSERT INTO department (name)
VALUES
("Engineering"),
("Finance"),
("Legal"),
("Sales");

-- Roles table
INSERT INTO role (title, salary, department_id)
VALUES 
("Accountant", 60000, 2),
("Account Manager", 65000, 2),
("Lawyer", 125000, 3),
("Lead Engineer", 130000, 1),
("Legal Team Lead", 97000, 3),
("Sales Lead", 78000, 4),
("Salesperson", 65000, 4),
("Software Engineer", 123000, 1);

-- Employees table
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES 
("Casey", "Roberts", 6, NULL),
("Christopher", "Sexton", 4, NULL),
("Andrew", "Sanders", 2, NULL),
("Nancy", "Carlson", 5, NULL),
("Daniel", "Beard", 7, 1),
("Latoya", "Rollins", 7, 1),
("Charles", "Harper", 3, 4),
("Christopher", "Stewart", 1, 3),
("April", "Meadows", 8, 2),
("Shelley", "Wright", 8, 2);


