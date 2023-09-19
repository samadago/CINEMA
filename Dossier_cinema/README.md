# CINEMA 
1.Build with:
Diagrams.net
MariaDB Server version: 10.5.20-MariaDB 
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

Create a new user (for instance username) with a new password :username

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

Enter your password:username

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

Enter the password:username

The file is in the current folder. To see it, use :

$ cat cinema_export.sql

Copy the back up in the project :

$ cp cinema_export.sql path/to/copy/cinema

9.Restore

Create a new database :

$ CREATE DATABASE cinema;

Allow all rights to the user :

$ GRANT ALL PRIVILEGES ON cinema.* TO username@localhost;

Quit :

$ quit;

To import the database, use :

$ mysql -u username -p cinema < cinema_export.sql

To check the database, use:

$ USE cinema2;

$ SHOW TABLES;

$ DESCRIBE Clients;

10.Author
Samadago Diane-code






LISEZMOI.md
# CINEMA
Cinema project est un projet scolaire : modéliser une base de données pour un futur logiciel de réservation de cinéma.

Table des matières
Informations générales
Construire avec
Installation
Courir
Créer un utilisateur
Créer des tableaux
Insérer des données
Vérifications
Sauvegarde
Restaurer
Auteur
Licence
Informations générales
Dans un premier temps, créez le modèle de la base de données en utilisant la méthode MERISE (MCD MLD MPD).

Ensuite, créez la base de données à l'aide du système de gestion de base de données MariaDB.

Construire avec
Diagrammes.net
Version du serveur MariaDB : 10.5.20-MariaDB 
Communauté DBeaver
Prérequis

XAMPP
Installation
Installez MariaDB. Si MariaDB n'est pas déjà installé, accédez à Installation du serveur MariaDB et suivez les instructions.

Ouvrez un terminal et utilisez : $ brew install mariadb

Courir
Allez dans Applications/XAMPP/Bibliothèque/bin et ouvrez un nouveau terminal.

Démarrez le serveur :

$ brew services start mariadb

Pour arrêter le serveur, utilisez :

$ brew services stop mariadb

Connectez-vous à la base de données :

$ mysql

Créez la base de données :

$ CREATE DATABASE cinema;

Vérifiez si la base de données est créée :

$ SHOW DATABASES;

Créer un utilisateur
Créez un nouvel utilisateur (par exemple nom d'utilisateur) avec un nouveau mot de passe :username

$ CREATE USER username@localhost IDENTIFIED BY 'username';

Vérifiez si l'utilisateur est créé :

$ SELECT user,host FROM mysql.user;

Autoriser les droits pour cet utilisateur (voici tous les droits pour le CRUD) :

$ GRANT ALL PRIVILEGES ON cinema.* TO username@localhost;

Vérifiez les droits de l'utilisateur :

$ SHOW GRANTS FOR username@localhost;

Se déconnecter :

$ quit;

Connectez-vous en tant que nom d'utilisateur :

$ mysql -u username -p

Tapez votre mot de passe

Choisissez la base de données :

$ USE cinema;

Créer des tableaux
Pour créer les tables dans la base de données, utilisez les scripts SQL du fichier sql_queries/create_table.

Insérer des données
Pour insérer des données dans ces tables, utilisez les scripts SQL du fichier sql_queries/cinsert_into.

Vérifications
Pour vérifier si le modèle et les données sont corrects, utilisez les requêtes SQL des sql_queries/verification_queries avec DBeaver.

Sauvegarde
Exportez la base de données avec mysqldump. Il s'installe avec l'installation de MariaDB :

$ mysqldump -u username -p cinema > cinema_export.sql

Entrer le mot de passe: username

Le fichier est dans le dossier actuel. Pour le voir, utilisez :

$ cat cinema_export.sql

Copiez la sauvegarde dans le projet :

$ cp cinema_export.sql path/to/copy/cinema

Restaurer
Créez une nouvelle base de données :

$ CREATE DATABASE cinema;

Accorder tous les droits à l'utilisateur :

$ GRANT ALL PRIVILEGES ON cinema.* TO username@localhost;

Quitter :

$ quit;

Pour importer la base de données, utilisez :

$ mysql -u username -p cinema < cinema_export.sql

Pour vérifier la base de données, utilisez :

$ USE cinema;

$ SHOW TABLES;

$ DESCRIBE Clients;

Auteur
Samadago Diane-code

Licence
MIT