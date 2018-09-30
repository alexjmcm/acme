DROP DATABASE IF EXISTS Bamazon;

CREATE DATABASE Bamazon;

USE Bamazon;

DROP TABLE IF EXISTS products;

DROP TABLE IF EXISTS departments;

CREATE TABLE products (item_id INT NOT NULL AUTO_INCREMENT, 
                      product VARCHAR(255) NOT NULL, 
                      department VARCHAR(255) DEFAULT "General", 
                      price DECIMAL(11, 2) NOT NULL DEFAULT 1.00,
                      quantity INT NOT NULL DEFAULT 1,
                      product_sales DECIMAL(11, 2) NOT NULL DEFAULT 0, 
                      PRIMARY KEY(item_id));

CREATE TABLE departments (department_id INT NOT NULL AUTO_INCREMENT, 
                          department_name VARCHAR(255) NOT NULL,
                          over_head_costs DECIMAL(11, 2) NOT NULL, PRIMARY KEY(department_id));

INSERT INTO products (product, department, price, quantity, product_sales) 
VALUES ("The Crystal Shard", " Pocket Books", 1000, 1, 100), 
       ("Screams of Silver", "Pocket Books", 20, 50, 200), 
       ("The Halfling's Gem", "Hardcover Books", 20, 30, 300), 
       ("Homeland", "Hardcover Books", 20, 50, 200), 
       ("Sojourn", "Hardcover Books", 30, 20, 400), 
       ("Canticle", "Hardcover", 30, 35, 500), 
       ("In Sylvian Shadows", "Hardcover Books", 25, 30, 300), 
       ("Night Masks", "Hardcover Books", 20, 100, 250), 
       ("The Fallen Fortress", "Hardcover Books", 20, 50, 250), 
       ("The Chaos Curse", "Hardcover Books", 20, 200, 350);

INSERT INTO departments(department_name, over_head_costs) 
VALUES ("Pocket Books", 1500), 
       ("Harcover Books", 2000);
