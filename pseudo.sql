CREATE DATABASE exo_contacts CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE pays(
   iso_3 VARCHAR(3),
   nom VARCHAR(70),
   iso_2 VARCHAR(2),
   nationalite VARCHAR(50),
   PRIMARY KEY(iso_3),
   UNIQUE(nom)
);

CREATE TABLE contacts(
   id INT,
   nom VARCHAR(70),
   prenom VARCHAR(70),
   date_de_naissance DATE,
   sexe VARCHAR(10),
   adresse TEXT,
   cp VARCHAR(10),
   ville VARCHAR(70),
   pays_iso_3 VARCHAR(3),
   iso_3 VARCHAR(3) NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(iso_3) REFERENCES pays(iso_3)
);

CREATE TABLE telephone(
   id INT,
   id_contact INT,
   numero VARCHAR(50),
   type BYTE,
   id_1 INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_1) REFERENCES contacts(id)
);

INSERT INTO pays (nom, iso_2, iso_3, nationalite) VALUES 
('Afghanistan', 'AF', 'AFG', 'Afghane'),
('Albanie', 'AL', 'ALB', 'Albanaise'),
('Algérie', 'DZ', 'DZA', 'Algérienne'),
('Angola', 'AO', 'AGO', 'Angolaise'),
('Argentine', 'AR', 'ARG', 'Argentine'),
('Arménie', 'AM', 'ARM', 'Arménienne'),
('Australie', 'AU', 'AUS', 'Australienne'),
('Autriche', 'AT', 'AUT', 'Autrichienne'),
('Azerbaïdjan', 'AZ', 'AZE', 'Azerbaïdjanaise'),
('Biélorussie', 'BY', 'BLR', 'Biélorusse'),
('Belgique', 'BE', 'BEL', 'Belge'),
('Bolivie', 'BO', 'BOL', 'Bolivienne'),
('Bosnie-Herzégovine', 'BA', 'BIH', 'Bosniaque'),
('Brésil', 'BR', 'BRA', 'Brésilienne'),
('Bulgarie', 'BG', 'BGR', 'Bulgare'),
('Cambodge', 'KH', 'KHM', 'Cambodgienne'),
('Cameroun', 'CM', 'CMR', 'Camerounaise'),
('Canada', 'CA', 'CAN', 'Canadienne'),
('Chili', 'CL', 'CHL', 'Chilienne'),
('Chine', 'CN', 'CHN', 'Chinoise'),
('Colombie', 'CO', 'COL', 'Colombienne'),
('Rébublique du Congo', 'CG', 'COG', 'Congolaise'),
('Cuba', 'CU', 'CUB', 'Cubaine'),
('Chypre', 'CY', 'CYP', 'Chypriote'),
('République tchèque', 'CZ', 'CZE', 'Tchèque');

INSERT INTO contacts (nom, prenom, date_de_naissance, sexe, adresse, cp, ville, pays_iso_3) VALUES 
('Descours', 'Bryan', '06/01/2005', 'Homme', '123 Rue Principale', '75001', 'Paris', 'FRA'),
('Smith', 'John', '1990-08-20', 'Homme', '456 Main Street', '10001', 'New York', 'USA');

INSERT INTO telephone (id_contact, numero, type) VALUES 
(1, '+33123456789', 1),
(2, '+12125550123', 2);
