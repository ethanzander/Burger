CREATE DATABASE burgers_db;
USE burgers_db;
CREATE TABLE burgers(
  item_id INT NOT NULL AUTO_INCREMENT,
  burger_name VARCHAR(45) NULL,
  devoured BOOLEAN(45) NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT NOT NULL,
  product_sales Decimal(10,2) DEFAULT 0,
  PRIMARY KEY (item_id)
);