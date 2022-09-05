const inquirer = require("inquirer");
const mysql = require("mysql");

var connection = mysql.createConnection({
    host:"localhost",
    port: 3001,
    user: "root",
    password: "",
    database: "employee_tracker_db",
});