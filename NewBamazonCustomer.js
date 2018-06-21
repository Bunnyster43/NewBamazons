var mysql = require('mysql');
var inquirer = require('inquirer');

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "stardust21",
  database: "bamazon2_db"
})

connection.connect(function(err) {
  if (err) throw err;
  console.log("connected as id " + connection.threadId);
  productList();
})

var productList = function() {
var query = 'SELECT * FROM Products'
connection.query(query, function(err, res) {
for (var i = 0; i < res.length; i++) {
console.log("ID: " + res[i].ItemID + " | Product: " + res[i].Product + " | Department: " + res[i].Department + " | Price: " + res[i].price + " | QTY: " + res[i].Stock);
}
shoppingCart();
})};

var shoppingCart = function() {
inquirer.prompt([{
  name: "ProductID",
  type: "input",
  message: "What is the ID of the product you would like to purchase?",

validate: function(value) {
    if (isNaN(value) == false) {
return true;
  } else {
  return false;
}}
}, {
name: "Stock",
type: "input",
message: "How many would you like to buy?",
validate: function(value) {
if (isNaN(value) == false) {
  return true;
} else {
  return false;
}}}])
.then(function(answer) {
var query = 'SELECT * FROM Products WHERE ItemID=' + answer.Stock;
connection.query(query, function(err, res) {
if (answer.Stock <= res) {
for (var i = 0; i < res.length; i++) {
console.log("Thank You For Your Purchase");
}
} else {
console.log("Low On Stock For Product");
}
productList();
})})};