
CREATE DATABASE qa_resturant;
USE qa_resturant;

# (CREATE) Statement to create a table that doesn't already exist, follow the format of:
# CREATE TABLE table1_name(
# col_name1 data_type1 constraints1,
# col_name2 data_type2 contraints2,
# PRIMARY KEY(name_of_key_column));
CREATE TABLE customers(
customer_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(100) DEFAULT "",
phone_number CHAR(11) NOT NULL,
over_18 BOOLEAN,
PRIMARY KEY (customer_id));

SHOW TABLES; # Display all the tables in the database youre in (READ - DDL)
DESCRIBE customers; # Display the details of the tables 
DROP TABLE customers; # Delete a table (DEL - DDL)
ALTER TABLE customers ADD age INT NOT NULL; #Update existing table by adding column 
ALTER TABLE customers DROP COLUMN over_18; #update table by deleting a column 
ALTER TABLE customers MODIFY cust_name VARCHAR(75) DEFAULT "n/a";

CREATE TABLE items(
item_id INT UNIQUE NOT NULL AUTO_INCREMENT,
item_name VARCHAR(50) NOT NULL,
item_descrip VARCHAR(100) NOT NULL,
item_price DECIMAL (3,2) NOT NULL,
item_quan INT(10) NOT NULL,
PRIMARY KEY (item_id));

ALTER TABLE items MODIFY item_quan INT(15);



