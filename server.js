const inquirer = require("inquirer");
const mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Caden#0207",
  database: "employee_trackerDB"
});

function updateServer() {
  connection.query("SELECT * from role", function(error, res) {
    allroles = res.map(role => ({ name: role.title, value: role.id }));
  });

  connection.query("SELECT * from department", function(error, res) {
    alldepartments = res.map(dept => ({ name: dept.name, value: dept.id }));
  });

  connection.query("SELECT * from employee", function(error, res) {
    allemployees = res.map(employee => ({
      name: `${employee.first_name} ${employee.last_name}`,
      value: employee.id
    }));
  });
}

connection.connect(function(err) {
  if (err) throw err;
  console.log("\nWelcome to the Employee Management System!\n");
  startEmployeeManager();
  updateServer();
});

function startEmployeeManager() {
  inquirer
    .prompt({
      name: "action",
      type: "list",
      message: "What would you like to do?",
      choices: [
        "View All Employees",
        "View All Departments",
        "View All Roles",
        "Add Employee",
        "Add Department",
        "Add Role",
        "Update Employee Role",
        "Exit"
      ]
    })
    .then(function(answer) {
      switch (answer.action) {
        case "View All Employees":
          viewAllEmployees();
          break;

        case "View All Departments":
          viewAllDepartments();
          break;

        case "View All Roles":
          viewAllRoles();
          break;

        case "Add Employee":
          addEmployee();
          break;

        case "Add Department":
          addDepartment();
          break;

        case "Add Role":
          addRole();
          break;

        case "Update Employee Role":
          updateEmployeeRole();
          break;

        case "Exit":
          connection.end();
          break;
      }
    });
}
