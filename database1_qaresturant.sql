
CREATE DATABASE qa_resturant;
USE qa_resturant;
#TASK - CREATE CUSTOMER AND ITEMS TABLE 
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
age INT(120),
PRIMARY KEY(customer_id));

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
ALTER TABLE items RENAME TO item_list;

#DMAL COMMANDS 
#CREATE - INSERT INFO 
#READ- SELECT
#UPDATE -UPDATE 
#DELETE - DELETE

SELECT * FROM customers; #the * means all records from XYZ
SELECT customer_id, cust_name FROM customers;

# ENTERING VALUES INTO THE TABLE TO CREATE RECORDSSSS
#TASK - ADD 5 RECORDS 
INSERT INTO customers(cust_name,phone_number,over_18,age) VALUES("ib", "07377345123",false,17);
INSERT INTO customers(cust_name,phone_number,over_18,age) VALUES ( "blue", "05377123123",true,24);
INSERT INTO customers(cust_name,phone_number,over_18,age) VALUES ("arab", "04377123123", true,22);
INSERT INTO customers(cust_name,phone_number,over_18,age) VALUES ("nicholas", "03377123123", true,60);
SHOW TABLES;
DESCRIBE customers;






