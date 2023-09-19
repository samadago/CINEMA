create database if not exists CINEMA;

CREATE TABLE Clients (
	id_client INT PRIMARY KEY NOT NULL AUTO_INCREMENT, 
	nom_client VARCHAR(50) NOT NULL, 
    	prenom_client VARCHAR(50) NOT NULL,
   	adresse_client VARCHAR(255) NOT NULL,
    	email_client VARCHAR(100) UNIQUE NOT NULL,
    	motpasse_client VARCHAR(100) NOT NULL,
    	isAdmin TINYINT(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE Admins (
	id_client INT NOT NULL,
	motpasse_admin VARCHAR(100) NOT NULL,
	PRIMARY KEY (id_client),
	CONSTRAINT fk_id_client
	FOREIGN KEY (id_client) REFERENCES Clients (id_client)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 


CREATE TABLE Cinemas (
	id_cinema INT PRIMARY KEY NOT NULL,
	nom_cinema VARCHAR(50) NOT NULL,
	adresse_cinema VARCHAR(255) NOT NULL,
	id_client INT NOT NULL,
	KEY id_client (id_client) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 


CREATE TABLE Salles (
	id_salle INT NOT NULL,
	nom_salle VARCHAR(50) NOT NULL,
	nombrePlaces_salle INT NOT NULL,
	id_cinema INT NOT NULL,
	PRIMARY KEY (id_salle, id_cinema),
	CONSTRAINT fk_id_cinema
	FOREIGN KEY (id_cinema) REFERENCES Cinemas (id_cinema)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE Places (
	id_place INT NOT NULL,
	id_salle INT NOT NULL,
	id_cinema INT NOT NULL,
	PRIMARY KEY (id_place, id_salle, id_cinema),
	CONSTRAINT fk_id_salle
	FOREIGN KEY (id_salle) REFERENCES Salles (id_salle),
	KEY id_cinema (id_cinema) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4; 


CREATE TABLE Films (
	id_film INT PRIMARY KEY NOT NULL,
	titre_film VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE Horaires (
	id_horaire INT PRIMARY KEY NOT NULL,
	heure_debut DATETIME NOT NULL,
	heure_fin DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE Horaires_films (
	id_film INT NOT NULL,
	id_horaire INT NOT NULL,
	PRIMARY KEY (id_film, id_horaire),
	CONSTRAINT fk_id_film
	FOREIGN KEY (id_film) REFERENCES Films (id_film),
	CONSTRAINT fk_id_horaire
	FOREIGN KEY (id_horaire) REFERENCES Horaires (id_horaire)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE Programmations (
	id_cinema INT NOT NULL,
	id_salle INT NOT NULL,
	id_film INT NOT NULL,
	id_horaire INT NOT NULL,
	id_client INT NOT NULL,
	PRIMARY KEY (id_cinema, id_salle, id_film, id_horaire, id_client),
	KEY id_cinema (id_cinema),
	KEY id_salle (id_salle),
	KEY id_film (id_film),
	KEY id_horaire (id_horaire),
	KEY id_client (id_client)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE Factures (
	id_facture INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	date_facture TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	montant_facture DECIMAL(10,2) NOT NULL,
	id_client INT NOT NULL,
	KEY id_client (id_client)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE Reservations (
	id_reservation INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	date_reservation TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	id_facture INT NOT NULL,
	id_client INT NOT NULL,
	CONSTRAINT fk_id_facture
	FOREIGN KEY (id_facture) REFERENCES Factures (id_facture),
	KEY id_client (id_client)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE Tarifs (
	nom_tarif VARCHAR(50) PRIMARY KEY NOT NULL,
	prix_tarif DECIMAL(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE Quantites (
	nom_tarif VARCHAR(50) NOT NULL,
	id_film INT NOT NULL,
	id_horaire INT NOT NULL,
	id_cinema INT NOT NULL,
	id_salle INT NOT NULL,
	id_reservation INT NOT NULL,
	quantite INT NOT NULL,
	PRIMARY KEY (nom_tarif, id_film, id_horaire, id_cinema, id_salle, id_reservation),
	CONSTRAINT fk_nom_tarif 
	FOREIGN KEY (nom_tarif) REFERENCES Tarifs (nom_tarif),
	KEY id_film (id_film),
	KEY id_horaire (id_horaire),
	KEY id_cinema (id_cinema),
	KEY id_salle (id_salle),
	CONSTRAINT fk_id_reservation 
	FOREIGN KEY (id_reservation) REFERENCES Reservations (id_reservation)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE Quantites_places (
	nom_tarif VARCHAR(50) NOT NULL,
	id_film INT NOT NULL,
	id_horaire INT NOT NULL,
	id_cinema INT NOT NULL,
	id_salle INT NOT NULL,
	id_place INT NOT NULL,
	id_reservation INT NOT NULL,
	PRIMARY KEY (nom_tarif, id_film, id_horaire, id_cinema, id_salle, id_place, id_reservation),
	KEY nom_tarif (nom_tarif),
	KEY id_film (id_film),
	KEY id_horaire (id_horaire),
	KEY id_cinema (id_cinema),
	KEY id_salle (id_salle),
	KEY id_reservation (id_reservation),
	CONSTRAINT fk_id_place
	FOREIGN KEY (id_place) REFERENCES Places (id_place)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;