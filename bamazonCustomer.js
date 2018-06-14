var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "ASK4lyfe!",
    database: "bamazon_DB"
  });

connection.connect(function(err) {
    if (err) throw err;
    showProducts()
});

function showProducts() {
    var query= connection.query("SELECT * FROM products", function(err, results) {
        if (err) throw err;
        for (var i = 0; i < results.length; i++) {
            var id = (results[i].id)
            var product = (results[i].product_name)
            var department = (results[i].department_name)
            var price = (results[i].price)
            var quanity = (results[i].stock_quanity)
            console.log(id + ") " + product + " | cost: $" + price)
        }
        inquirer.prompt([
            {
                type: "input",
                message: "what item number would you like to purchase?",
                name: "userChoice"    
            }
        ])
        .then(function(inquirerResponse) {
            connection.query("SELECT * FROM products WHERE id = " + inquirerResponse.userChoice, function (err, results) {
                    if (err) throw err;
                    if ((results[0].stock_quanity) < 1) {
                        console.log("out of order!");
                    }
                    else {
                        console.log("Your total is $ " + results[0].price + ".");
                        var stock = results[0].stock_quanity--;
                        connection.query(
                            "UPDATE products SET ? WHERE ?",
                            [
                                {
                                stock_quanity: stock
                                },
                                {
                                id: inquirerResponse.userChoice
                                }
                            ]
                        )    
                    }

            });
            
        });
    });
        connection.end();
}
