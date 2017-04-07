# SQL

### [Course Link] (https://www.w3schools.com/sql/)

## What is SQL?
* SQL stands for Structured Query Language
* SQL lets you access and manipulate databases
* SQL is an ANSI (American National Standards Institute) standard, but there are other versions.

## What Can SQL do?
* SQL can execute queries against a database
* SQL can retrieve data from a database
* SQL can insert records in a database
* SQL can update records in a database
* SQL can delete records from a database
* SQL can create new databases
* SQL can create new tables in a database
* SQL can create stored procedures in a database
* SQL can create views in a database
* SQL can set permissions on tables, procedures, and views

## To build a web site that shows data from a database, you will need:
* An RDBMS (Relational Database Management System) database program (i.e. MS Access, SQL Server, MySQL)
* To use a server-side scripting language, like PHP or ASP
* To use SQL to get the data you want
* To use HTML / CSS to style the page

## Note:
* SQL keywords are NOT case sensitive
* Some database systems require a semicolon at the end of each SQL statement. It is the standard way to separate each SQL statement in database systems that allow more than one SQL statement to be executed in the same call to the server

## Some of The Most Important SQL Commands
* SELECT - extracts data from a database
* UPDATE - updates data in a database
* DELETE - deletes data from a database
* INSERT INTO - inserts new data into a database
* CREATE DATABASE - creates a new database
* ALTER DATABASE - modifies a database
* CREATE TABLE - creates a new table
* ALTER TABLE - modifies a table
* DROP TABLE - deletes a table
* CREATE INDEX - creates an index (search key)
* DROP INDEX - deletes an index

# First things to do:

## Root Login
* Set up Mysql on system with password
* To log in to MySQL as the root user: mysql -u root -p
* \h to get help

## Create a New MySQL User and Database
testdb is the name of the database, testuser is the user, and password is the user’s password.<br>
> create database testdb; <br>
> create user 'testuser'@'localhost' identified by 'password'; <br>
> grant all on testdb.* to 'testuser'; <br>
> exit

alternate: <br>
> create database testdb;<br>
> grant all on testdb.* to 'testuser' identified by 'password';<br>
> exit

## See all existing databases
> show databases;

## Create a Sample Table
Log back in as testuser. Create a sample table called customers. This creates a table with a customer ID field of the type INT for integer (auto-incremented for new records, used as the primary key), as well as two fields for storing the customer’s name.<br>
> mysql -u testuser -p<br>
> use testdb;<br>
> create table customers (customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, first_name TEXT, last_name TEXT);<br>
> CREATE TABLE states (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, state CHAR(25), population INT(9));<br>
> exit

This will also create a table named "states" with three fields: id, state, and population. The INT command will make the id field contain only numbers (integers). The NOT NULL command makes sure that the id field cannot be left blank. The PRIMARY KEY designates the id field as the key field in the table. The key field should be set to a field that cannot contain any duplicates. The AUTO_INCREMENT command will automatically assign increasing values into the id field, essentially automatically numbering each entry. The CHAR(characters) and INT(integers) commands designate the types of data allowed in those fields. The number next to the commands indicated how many characters or integers can fit in the field.

## Create entry in Table
Entries can be single or multiple<br>
> INSERT INTO states (id, state, population) VALUES (NULL, 'Alabama', '731202');<br>
> INSERT INTO states (id, state, population) VALUES (NULL, 'Alaska', '731449'), (NULL, 'Arizona', '6553255'), (NULL, 'Arkansas', '2949131');

## Observe a Table
We can observe a selective columns of tables or entire tables
> SELECT column1, column2 FROM table_name;<br>
> SELECT * FROM table_name;

Some more advanced queries include, sorting by certain field in ascending or DESCending order.
> SELECT state, population FROM states ORDER BY population;<br>
> SELECT state, population FROM states ORDER BY population DESC;

## Execute from a text script
Run the following on the command line:
> mysql -u yourusername -p yourpassword yourdatabase < query_file > results_file

## Comments
> -- Single line comments<br>
> /* Multi<br>
> line<br>
> comment */

## We can execute commands from an SQL script
Refer to query_file.sql
