USE kala;
CREATE TABLE addresses_us (
  id INT NOT NULL AUTO_INCREMENT,
  street_01 VARCHAR(45) NULL,
  street_02 VARCHAR(45) NULL,
  city VARCHAR(45) NULL,
  state CHAR(2) NULL,
  zipcode VARCHAR(10) NULL,
  PRIMARY KEY (id)
);

USE kala;
CREATE TABLE phones (
  id INT NOT NULL AUTO_INCREMENT,
  home INT NULL,
  mobile INT NULL,
  business INT NULL,
  fax INT NULL,
  other INT NULL,
  PRIMARY KEY (id)
);

USE kala;
CREATE TABLE persons (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(45) NOT NULL,
  middle_name VARCHAR(45) NULL,
  last_name VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  birthday DATE NULL,
  address_id INT NULL,
  phone_id INT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (address_id) REFERENCES addresses_us(id),
  FOREIGN KEY (phone_id) REFERENCES phones(id)
);

USE kala;
CREATE TABLE users (
  id INT AUTO_INCREMENT NOT NULL,
  username VARCHAR(50) NOT NULL,
  passwd CHAR(64) NOT NULL,
  access_lvl SMALLINT,
  person_id INT,
  PRIMARY KEY (id),
  FOREIGN KEY (person_id) REFERENCES persons(id)
);

-- USE kala;
-- DROP TABLE addresses_us;
-- DROP TABLE phones;
-- DROP TABLE persons;
-- DROP TABLE users;
