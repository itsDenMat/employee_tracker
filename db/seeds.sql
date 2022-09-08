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
INSERT INTO employee (first_name, last_name, role_id)
VALUES 
("Casey", "Roberts", 6),
("Christopher", "Sexton", 4),
("Andrew", "Sanders", 2),
("Nancy", "Carlson", 5),
("Daniel", "Beard", 7),
("Latoya", "Rollins", 7),
("Charles", "Harper", 3),
("Christopher", "Stewart", 1),
("April", "Meadows", 8),
("Victoria", "Holmes", 5),
("Shelley", "Wright", 8);


