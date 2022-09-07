const inquirer = require("inquirer");
const mysql = require("mysql");

var connection = mysql.createConnection({
    host:"localhost",
    port: 3001,
    user: "root",
    password: "",
    database: "employee_tracker_db",
});

function updateServer() {
    connection.query("SELECT * from Departments", function(error, res) {
        alldepartments = res.nap(dept => ({ name: dept.name, value: dept.id}));
    });

    connection.query("SELECT * from Employees", function(error, res) {
        allemployees = res.map(employee => ({
            name: `${Employees.first_name} ${Employees.last_name}`,
            value: Employees.id
        }));
    });

    connection.query("SELECT * from Roles", function(error, res) {
        allroles = res.map(role => ({ name: role.title, value: role.id}));
    });
}

connection.connect(function(err) {
    if (err) throw err;
    console.log("");
    startEmployeeManager();
    updateServer();
});

function startEmployeeManager() {
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "Select the action you would like to do.",
            choices: [
                "View All Departments",
                "View All Employees",
                "View All Roles",
                "Add a Department",
                "Add an Employee",
                "Add a Role",
                "Update an Employee Role",
                "Exit",
            ]
        })
        .then(function (answer) {
            switch(answer.action) {
                case "View all Departments":
                viewAllDepartments();
                break;

                case "View all Employees":
                viewAllEmployees();
                break;

                case "View all Roles":
                viewallRoles();
                break;

                case "Add a Department":
                addDepartment();
                break;

                case "Add an Employee":
                addEmployee();
                break;

                case "Add a Role":
                addRole();
                break;

                case "Update an Employee Role":
                updateEmployeeRole();
                break;

                case "Exit":
                connection.end();
            }
        });
}
