CREATE DATABASE pseudo;

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