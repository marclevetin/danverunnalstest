DROP DATABASE IF EXISTS paknplay_db;
CREATE DATABASE paknplay_db;

USE paknplay_db;

CREATE TABLE user_accounts (
  user_id INT(11) NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  password VARCHAR(20) NOT NULL,
  street_address VARCHAR(45) NOT NULL,
  city VARCHAR(20) NOT NULL,
  state VARCHAR(2) NOT NULL,
  email VARCHAR(45) NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE stock (
  item_id INT(11) NOT NULL AUTO_INCREMENT,
  user_id INT,
  item_type VARCHAR(20) NOT NULL,
  item_name VARCHAR(45) NOT NULL,
  item_description VARCHAR(255),
  quantity INT NOT NULL,
  total_uses INT NOT NULL, 
  updated_at DATE NOT NULL, 
  created_at DATE NOT NULL,
  PRIMARY KEY (item_id),
  FOREIGN KEY (user_id) REFERENCES user_accounts(user_id)
);



INSERT INTO user_accounts (first_name, last_name, password, street_address, city, state, email)
VALUES ("Steve", "Smith", "password1", "1 Main Street", "Dover", "NH", "email@yahoo.com"),
("Mike", "Smith", "password2", "2 Main Street", "Dover", "NH", "email2@yahoo.com"),
("Dave", "Smith", "password3", "3 Main Street", "Dover", "NH", "email3@yahoo.com");


INSERT INTO stock (user_id, item_type, item_name, item_description, quantity, total_uses, updated_at, created_at)
VALUES (1, "clothing", "shorts", "shorts for boys up to 6 months old", 3, 4, "2018-07-11", "2018-07-11"),
(1, "toiletries", "pampers", "pampers for babies up to 3 months old", 3, 4, "2018-07-11", "2018-07-11"),
(1, "toys", "elmo", "tickle me elmo doll", 3, 4, "2018-07-11", "2018-07-11");
