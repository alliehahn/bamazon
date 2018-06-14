DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(45) NOT NULL,
  price INT(10) NOT NULL,
  stock_quanity INT(10) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO products(product_name, department_name, price, stock_quanity)
VALUES ("Dog Food", "Pet Care", 25, 10);

INSERT INTO products(product_name, department_name, price, stock_quanity)
VALUES ("Coffee", "Groceries", 7, 50);

INSERT INTO products(product_name, department_name, price, stock_quanity)
VALUES ("Vitamins", "Groceries", 15, 50);

INSERT INTO products(product_name, department_name, price, stock_quanity)
VALUES ("Laptop", "Electronics", 1200, 3);

INSERT INTO products(product_name, department_name, price, stock_quanity)
VALUES ("Textbook", "Books", 80, 5);

INSERT INTO products(product_name, department_name, price, stock_quanity)
VALUES ("Settlers of Catan", "Toys & Games", 50, 30);

INSERT INTO products(product_name, department_name, price, stock_quanity)
VALUES ("Kindle", "Electronics", 100, 20);

INSERT INTO products(product_name, department_name, price, stock_quanity)
VALUES ("Pasta", "Groceries", 3, 45);

INSERT INTO products(product_name, department_name, price, stock_quanity)
VALUES ("Dog Bones", "Pet Care", 19, 15);

INSERT INTO products(product_name, department_name, price, stock_quanity)
VALUES ("Legos", "Toys & Games", 20, 10);