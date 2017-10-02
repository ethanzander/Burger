
DROP DATABASE IF EXISTS burgers_db;
CREATE DATABASE burgers_db;
USE burgers_db;
CREATE TABLE burgers(
  item_id INT NOT NULL AUTO_INCREMENT,
  burger_name VARCHAR(45) NULL,
  devoured BOOLEAN DEFAULT FALSE,
  date TIMESTAMP DEFAULT now(),
  PRIMARY KEY (item_id)
);