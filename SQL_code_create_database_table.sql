
/* Before doing anything with the data we must need 
to create a database first. We're assuming that you already have 
a MySQL, or SQL Server available for your use, 
as well as you've all the necessary privileges */

CREATE DATABASE demo;

-- Syntax for MySQL Database 
CREATE TABLE persons (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL UNIQUE
);
 
-- Syntax for SQL Server Database 
CREATE TABLE persons (
    id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL UNIQUE
);



CREATE TABLE IF NOT EXISTS persons (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL UNIQUE
);


-- Step 1: Invoke the MySQL command-line tool
-- To invoke the MySQL command line, we've to log in to the MySQL server first. 
-- To log in as root user, type the following command in terminal and press enter. 
-- You will be asked for your password. Enter your password and press enter, 
-- if it is correct the mysql> prompt will appear, via which you will be able 
-- to issue SQL statements and view the results. */
shell> mysql -u root -p

-- Step 2: Creating a MySQL Database
-- Now, execute the following command to create the database named demo.
mysql> CREATE DATABASE demo;
-- If the database created successfully you'll see the output something like this:
-- Query OK, 1 row affected (0.03 sec)
-- If you try to create a database that is already exists you'll get an error 
-- message. To avoid this in MySQL you can use an optional clause IF NOT EXISTS as follow: */
mysql> CREATE DATABASE IF NOT EXISTS demo;

-- Step 3: Selecting the Database
-- Type the following command and press enter. You will see the output "Database changed". 
-- Now our demo database is selected as default database for all future operations.
mysql> USE demo;

-- Tip: If you want to see a list of existing databases on the MySQL server, 
-- you can execute the statement SHOW DATABASES; on the command line.

-- Tip: If you want to see the list of tables inside the currently selected database, you 
-- can execute SHOW TABLES; statement on the MySQL command line.
