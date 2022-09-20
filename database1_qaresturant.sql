qa resturant 
CREATE qa_resturant
USE qa_ resturant

# (CREATE) Statement to create a table that doesn't already exist, follow the format of:
# CREATE TABLE table1_name(
# col_name1 data_type1 constraints1,
# col_name2 data_type2 contraints2,
# PRIMARY KEY(name_of_key_column));
CREATE TABLE customers(
customer_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(100) NOT NULL,
phone_number CHAR(11) NOT NULL,
PRIMARY KEY (cust_id));

SHOW TABLES; # Display all the tables in the database youre in (READ - DDL)

DESCRIBE customers; # Display the details of the tables 

DROP TABLE customers; # Delete a table (DEL - DDL)
DROP DATABASE qa_resturant; # Delete a database