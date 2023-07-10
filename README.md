# CINEMA project
1.Build with:
Diagrams.net
MariaDB Server version: 10.8.3-MariaDB 
DBeaver Community

2.Installation

Install MariaDB. If you don’t already have MariaDB installed, go to Installing MariaDB server and follow the instructions.

Open a terminal and use : $ brew install mariadb

3.Run
Go to Applications/Xampp/Library/bin and open a new terminal.
Start the server :

$ brew services start mariadb

To stop the server, use :

$ brew services stop mariadb

Connect to the database :

$ mysql

Create the database :

$ CREATE DATABASE cinema;

Check if the database is created :

$ SHOW DATABASES;

4.Create a user

Create a new user (for instance username) with a new password :

$ CREATE USER username@localhost IDENTIFIED BY 'username';

Check if the user is created :

$ SELECT user,host FROM mysql.user;

Allow the rights for this user (here are all rights for the CRUD):

$ GRANT ALL PRIVILEGES ON cinema.* TO username@localhost;

Check the rights of the user :

$ SHOW GRANTS FOR username@localhost;

Log out :

$ quit;

Log in as username :

$ mysql -u username -p

Enter your password

Choose the database :

$ USE cinema;

5.Create tables
To create the tables in the database, use the SQL scripts of the sql_queries/create_table file.

6.Insert data
To insert data in these tables, use the SQL scripts of the sql_queries/cinsert_into file.

7.Verifications
To check if the model and the data are correct, use the SQL queries of the sql_queries/verification_queries with DBeaver.

8.Backup
Export the database with mysqldump. It is installed with the installation of MariaDB :

$ mysqldump -u username -p cinema > cinema_export.sql

Enter the password

The file is in the current folder. To see it, use :

$ cat cinema_export.sql

Copy the back up in the project :

$ cp cinema_export.sql path/to/copy/cinema_project

9.Restore

Create a new database :

$ CREATE DATABASE cinema2;

Allow all rights to the user :

$ GRANT ALL PRIVILEGES ON cinema2.* TO username@localhost;

Quit :

$ quit;

To import the database, use :

$ mysql -u username -p cinema2 < cinema_export.sql

To check the database, use:

$ USE cinema2;

$ SHOW TABLES;

$ DESCRIBE Clients;

10.Author
samadago-code






