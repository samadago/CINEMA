CLIENTS :  

INSERT INTO Clients (nom_client, prenom_client, adresse_client, email_client, motpasse_client, isAdmin) VALUES ('Dupond', 'Amelie', '1 rue du val 78200 Mantes la jolie', 'dupond@gmail.com', 'yes', 1);

INSERT INTO Clients (nom_client, prenom_client, adresse_client, email_client, motpasse_client, isAdmin) VALUES ('Uwimana', 'Roger', '2 Allée du bel air 78711 Mantes la ville', 'uwimana@gmail.com', 'yes', 0);

INSERT INTO Clients (nom_client, prenom_client, adresse_client, email_client, motpasse_client, isAdmin) VALUES ('Ladouce ', 'Diane', 'place georges-pompidou 75004 Paris', 'ladouce@yahoo.fr', 'yes', 1);

INSERT INTO Clients (nom_client, prenom_client, adresse_client, email_client, motpasse_client, isAdmin) VALUES ('Lemat', 'George', '3 Avenue Jean Jaures', 'lemat@gmail.com', 'yes', 0);

INSERT INTO Clients (nom_client, prenom_client, adresse_client, email_client, motpasse_client, isAdmin) VALUES ('Isaro', 'Louane', '7 avenue du president-wilson 78520 Limay', 'isaro@gmail.com', 'yes', 0);

INSERT INTO Clients (nom_client, prenom_client, adresse_client, email_client, motpasse_client, isAdmin) VALUES ('Isimbi', 'Kethia', '10 Rue Gabriel-péri  78200 Buchelay', 'isimbi@gmail.com', 'yes', 0);




ADMINS : 

INSERT INTO Admins (id_client, motpasse_admin) VALUES (1, 'yes');
INSERT INTO Admins (id_client, motpasse_admin) VALUES (3, 'yes');



CINEMAS : 

INSERT INTO Cinemas (id_cinema, nom_cinema, adresse_cinema, id_client) VALUES (1, 'CGR Mantes la jolie', 'Place Henri Durant 78200 Mantes la jolie', 1);

INSERT INTO Cinemas (id_cinema, nom_cinema, adresse_cinema, id_client) VALUES (2, 'Cinema Intercommunal les 2 scènes', 'place des fetes Henri durant 78580 Moule', 2);

INSERT INTO Cinemas (id_cinema, nom_cinema, adresse_cinema, id_client) VALUES (3, 'UGC Plaisir', '1170 Avenue de saint-Germain 78370 Plaisir', 3);

INSERT INTO Cinemas (id_cinema, nom_cinema, adresse_cinema, id_client) VALUES (4, 'UGC Roxane', '7 rue rameau 78000 Versailles',5 );





SALLES : 

INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (1, 'Jolie salle', 300, 1); 
INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (2, 'Le Grand Mantes', 150, 1); 
INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (3, 'Bon cinema', 250, 1); 
INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (4, 'Le Petit Mantes', 70, 1); 

INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (1, 'belle scènes', 400, 2); 
INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (2, 'Grande scènes', 500, 2); 
INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (3, 'Petite scènes', 150, 2); 

INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (1, 'Grand plaisir', 500, 3); 
INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (2, 'Plaisir', 250, 3); 
INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (3, ' Petit plaisir', 100, 3); 

INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (1, 'La belle roxane', 350, 4); 
INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (2, 'Petite roxane', 150, 4); 
INSERT INTO Salles (id_salle, nom_salle, nombrePlaces_salle, id_cinema) VALUES (3, 'Grande roxane', 400, 4); 


PLACES : 

INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (1, 1, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (2, 1, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (3, 1, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (4, 1, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (5, 1, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (6, 1, 1);

INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (1, 2, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (2, 2, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (3, 2, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (4, 2, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (5, 2, 1);

INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (1, 3, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (2, 3, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (3, 3, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (4, 3, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (5, 3, 1);

INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (1, 4, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (2, 4, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (3, 4, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (4, 4, 1);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (5, 4, 1);


INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (1, 1, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (2, 1, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (3, 1, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (4, 1, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (5, 1, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (6, 1, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (7, 1, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (8, 1, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (9, 1, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (10, 1, 2);

INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (1, 2, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (2, 2, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (3, 2, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (4, 2, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (5, 2, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (6, 2, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (7, 2, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (8, 2, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (9, 2, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (10, 2, 2);

INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (1, 3, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (2, 3, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (3, 3, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (4, 3, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (5, 3, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (6, 3, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (7, 3, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (8, 3, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (9, 3, 2);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (10, 3, 2);


INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (1, 1, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (2, 1, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (3, 1, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (4, 1, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (5, 1, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (6, 1, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (7, 1, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (8, 1, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (9, 1, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (10, 1, 3);

INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (1, 2, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (2, 2, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (3, 2, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (4, 2, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (5, 2, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (6, 2, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (7, 2, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (8, 2, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (9, 2, 3);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (10, 2, 3);


INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (1, 1, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (2, 1, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (3, 1, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (4, 1, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (5, 1, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (6, 1, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (7, 1, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (8, 1, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (9, 1, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (10, 1, 4);

INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (1, 2, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (2, 2, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (3, 2, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (4, 2, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (5, 2, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (6, 2, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (7, 2, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (8, 2, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (9, 2, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (10, 2, 4);

INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (1, 3, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (2, 3, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (3, 3, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (4, 3, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (5, 3, 4);
INSERT INTO Places (id_place, id_salle, id_cinema) VALUES (6, 3, 4);



FILMS :

INSERT INTO Films (id_film, titre_film) VALUES (1, 'La petite Sirène');
INSERT INTO Films (id_film, titre_film) VALUES (2, 'Super Mario Bros');
INSERT INTO Films (id_film, titre_film) VALUES (3, 'Lamour et les forets');
INSERT INTO Films (id_film, titre_film) VALUES (4, 'Fast & Furious');
INSERT INTO Films (id_film, titre_film) VALUES (5, 'Sexygénaires');
INSERT INTO Films (id_film, titre_film) VALUES (6, 'Les Gardiens de la Galaxie 3');



HORAIRES :

INSERT INTO Horaires (id_horaire, heure_debut, heure_fin) VALUES (1, '2023-06-05 10:15:00', '2023-06-05 14:15:00');
INSERT INTO Horaires (id_horaire, heure_debut, heure_fin) VALUES (2, '2023-06-05 15:30:00', '2023-06-05 18:30:00');
INSERT INTO Horaires (id_horaire, heure_debut, heure_fin) VALUES (3, '2023-06-05 11:15:00', '2023-06-05 15:15:00');
INSERT INTO Horaires (id_horaire, heure_debut, heure_fin) VALUES (4, '2023-06-05 14:30:00', '2023-06-05 18:15:00');
INSERT INTO Horaires (id_horaire, heure_debut, heure_fin) VALUES (5, '2023-06-05 12:15:00', '2023-06-05 16:15:00');
INSERT INTO Horaires (id_horaire, heure_debut, heure_fin) VALUES (6, '2023-06-05 14:30:00', '2023-06-05 17:30:00');



HORAIRES_FILMS : 

INSERT INTO Horaires_films (id_film, id_horaire) VALUES (1, 2);
INSERT INTO Horaires_films (id_film, id_horaire) VALUES (1, 4);
INSERT INTO Horaires_films (id_film, id_horaire) VALUES (1, 6);
INSERT INTO Horaires_films (id_film, id_horaire) VALUES (2, 1);
INSERT INTO Horaires_films (id_film, id_horaire) VALUES (2, 3);
INSERT INTO Horaires_films (id_film, id_horaire) VALUES (2, 6);
INSERT INTO Horaires_films (id_film, id_horaire) VALUES (3, 2);
INSERT INTO Horaires_films (id_film, id_horaire) VALUES (4, 1);
INSERT INTO Horaires_films (id_film, id_horaire) VALUES (4, 3);
INSERT INTO Horaires_films (id_film, id_horaire) VALUES (5, 1);
INSERT INTO Horaires_films (id_film, id_horaire) VALUES (5, 4);
INSERT INTO Horaires_films (id_film, id_horaire) VALUES (6, 3);
INSERT INTO Horaires_films (id_film, id_horaire) VALUES (6, 5);




PROGRAMMATIONS : 

INSERT INTO Programmations (id_cinema, id_salle, id_film, id_horaire, id_client) VALUES (1, 1, 1, 2, 1);
INSERT INTO Programmations (id_cinema, id_salle, id_film, id_horaire, id_client)  VALUES (1, 2, 1, 2, 1);
INSERT INTO Programmations (id_cinema, id_salle, id_film, id_horaire, id_client)  VALUES (2, 2, 4, 3, 2);
INSERT INTO Programmations (id_cinema, id_salle, id_film, id_horaire, id_client)  VALUES (3, 2, 2, 1, 5);
INSERT INTO Programmations (id_cinema, id_salle, id_film, id_horaire, id_client) VALUES (3, 3, 	5, 1, 2);
INSERT INTO Programmations (id_cinema, id_salle, id_film, id_horaire, id_client)  VALUES (4, 1, 2, 6, 5);
INSERT INTO Programmations (id_cinema, id_salle, id_film, id_horaire, id_client) VALUES (2, 3, 6, 4, 3);
INSERT INTO Programmations (id_cinema, id_salle, id_film, id_horaire, id_client)  VALUES (4, 4, 3, 6, 3);



FACTURES : 

INSERT INTO Factures (date_facture, montant_facture, id_client) VALUES (CURRENT_TIMESTAMP, (2*9.20), 1);
INSERT INTO Factures (date_facture, montant_facture, id_client) VALUES (CURRENT_TIMESTAMP, (2*9.20), 2);
INSERT INTO Factures (date_facture, montant_facture, id_client) VALUES (CURRENT_TIMESTAMP, (1*9.20), 3);
INSERT INTO Factures (date_facture, montant_facture, id_client) VALUES (CURRENT_TIMESTAMP, (1*9.20 + 2*7.60 + 2*5.90), 5);
INSERT INTO Factures (date_facture, montant_facture, id_client) VALUES (CURRENT_TIMESTAMP, (1*9.20 + 2*7.60 + 1*5.90), 6);
INSERT INTO Factures (date_facture, montant_facture, id_client) VALUES (CURRENT_TIMESTAMP, (1*9.20 + 1*7.60 + 1*5.90), 7);


RESERVATIONS : 

INSERT INTO Reservations (date_reservation, id_facture, id_client) VALUES (CURRENT_TIMESTAMP, 1, 1);
INSERT INTO Reservations (date_reservation, id_facture, id_client) VALUES (CURRENT_TIMESTAMP, 2, 2);
INSERT INTO Reservations (date_reservation, id_facture, id_client) VALUES (CURRENT_TIMESTAMP, 3, 3);
INSERT INTO Reservations (date_reservation, id_facture, id_client) VALUES (CURRENT_TIMESTAMP, 4, 4);
INSERT INTO Reservations (date_reservation, id_facture, id_client) VALUES (CURRENT_TIMESTAMP, 5, 5);
INSERT INTO Reservations (date_reservation, id_facture, id_client) VALUES (CURRENT_TIMESTAMP, 6, 6);


TARIFS : 

INSERT INTO Tarifs (nom_tarif, prix_tarif) VALUES ('plein tarif', 9.20);
INSERT INTO Tarifs (nom_tarif, prix_tarif) VALUES ('tarif etudiant', 7.60);
INSERT INTO Tarifs (nom_tarif, prix_tarif) VALUES ('tarif moins de 14 ans', 5.90);



QUANTITES :

INSERT INTO Quantites (nom_tarif, id_film, id_horaire, id_cinema, id_salle, id_reservation, quantite) VALUES ('plein tarif', 1, 2, 1, 1, 1, 2);
INSERT INTO Quantites (nom_tarif, id_film, id_horaire, id_cinema, id_salle, id_reservation, quantite) VALUES ('plein tarif', 1, 4, 5, 3, 2, 2);
INSERT INTO Quantites (nom_tarif, id_film, id_horaire, id_cinema, id_salle, id_reservation, quantite) VALUES ('plein tarif', 1, 6, 5, 4, 3, 1);
INSERT INTO Quantites (nom_tarif, id_film, id_horaire, id_cinema, id_salle,  id_reservation, quantite) VALUES ('plein tarif', 2, 1, 3, 2, 4, 1);
INSERT INTO Quantites (nom_tarif, id_film, id_horaire, id_cinema, id_salle, id_reservation, quantite) VALUES ('plein tarif', 2, 1, 3, 3, 3, 1);
INSERT INTO Quantites (nom_tarif, id_film, id_horaire, id_cinema, id_salle, id_reservation, quantite) VALUES ('plein tarif', 2, 6, 4, 1, 6, 1);

INSERT INTO Quantites (nom_tarif, id_film, id_horaire, id_cinema, id_salle, id_reservation, quantite) VALUES ('tarif etudiant', 2, 1, 3, 2, 4, 2);
INSERT INTO Quantites (nom_tarif, id_film, id_horaire, id_cinema, id_salle, id_reservation, quantite) VALUES ('tarif etudiant', 2, 1, 3, 3, 5, 2);
INSERT INTO Quantites (nom_tarif, id_film, id_horaire, id_cinema, id_salle, id_reservation, quantite) VALUES ('tarif etudiant', 2, 6, 4, 1, 6, 2);

INSERT INTO Quantites (nom_tarif, id_film, id_horaire, id_cinema, id_salle, id_reservation, quantite) VALUES ('tarif moins de 14 ans', 2, 1, 3, 3, 5, 2);
INSERT INTO Quantites (nom_tarif, id_film, id_horaire, id_cinema, id_salle, id_reservation, quantite) VALUES ('tarif moins de 14 ans', 2, 6, 4, 1, 6, 1);



QUANTITES_PLACES : 

INSERT INTO Quantites_places (nom_tarif, id_film, id_horaire, id_salle, id_cinema, id_reservation, id_place) VALUES ('plein tarif', 1, 2, 1, 1, 1, 1);
INSERT INTO Quantites_places (nom_tarif, id_film, id_horaire, id_salle, id_cinema, id_reservation, id_place) VALUES ('plein tarif', 1, 2, 1, 1, 1, 2);

INSERT INTO Quantites_places (nom_tarif, id_film, id_horaire, id_salle, id_cinema, id_reservation, id_place) VALUES ('plein tarif', 1, 4, 3, 4, 2, 1);
INSERT INTO Quantites_places (nom_tarif, id_film, id_horaire, id_salle, id_cinema, id_reservation, id_place) VALUES ('plein tarif', 1, 4, 3, 1, 2, 2);

INSERT INTO Quantites_places (nom_tarif, id_film, id_horaire, id_salle, id_cinema, id_reservation, id_place) VALUES ('plein tarif', 2, 6, 1, 4, 6, 3);
INSERT INTO Quantites_places (nom_tarif, id_film, id_horaire, id_salle, id_cinema,  id_reservation, id_place) VALUES ('tarif etudiant', 2, 6, 1, 4, 6, 7);
INSERT INTO Quantites_places (nom_tarif, id_film, id_horaire, id_salle, id_cinema,  id_reservation, id_place) VALUES ('tarif etudiant', 2, 6, 1, 4, 6, 8);
INSERT INTO Quantites_places (nom_tarif, id_film, id_horaire, id_salle, id_cinema,  id_reservation, id_place) VALUES ('tarif moins de 14 ans', 2, 6, 1, 4, 6, 5);
