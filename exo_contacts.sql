CREATE DATABASE exo_contacts CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE TABLE pays(
   iso_3                  VARCHAR(3),
   nom                    VARCHAR(70),
   iso_2                  VARCHAR(2),
   nationalite            VARCHAR(50),
   PRIMARY KEY(iso_3),
   UNIQUE(nom)
);

CREATE TABLE contacts(
   id                    INT,
   nom                   VARCHAR(70),
   prenom                VARCHAR(70),
   date_de_naissance     DATE,
   sexe                  VARCHAR(10),
   adresse               TEXT,
   cp                    VARCHAR(10),
   ville                 VARCHAR(70),
   pays_iso_3            VARCHAR(3),
   iso_3                 VARCHAR(3) NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(iso_3)    REFERENCES pays(iso_3)
);

CREATE TABLE telephone(
   id                   INT,
   id_contact           INT,
   numero               VARCHAR(50),
   type                 BYTE,
   id_1                 INT NOT NULL,
   PRIMARY KEY(id),
   FOREIGN KEY(id_1)    REFERENCES contacts(id)
);

INSERT INTO pays (nom, iso_2, iso_3, nationalite) VALUES 
('Afghanistan',            'AF',    'AFG',    'Afghane'),
('Albanie',                'AL',    'ALB',    'Albanaise'),
('Algérie',                'DZ',    'DZA',    'Algérienne'),
('Angola',                 'AO',    'AGO',    'Angolaise'),
('Argentine',              'AR',    'ARG',    'Argentine'),
('Arménie',                'AM',    'ARM',    'Arménienne'),
('Australie',              'AU',    'AUS',    'Australienne'),
('Autriche',               'AT',    'AUT',    'Autrichienne'),
('Azerbaïdjan',            'AZ',    'AZE',    'Azerbaïdjanaise'),
('Biélorussie',            'BY',    'BLR',    'Biélorusse'),
('Belgique',               'BE',    'BEL',    'Belge'),
('Bolivie',                'BO',    'BOL',    'Bolivienne'),
('Bosnie-Herzégovine',     'BA',    'BIH',    'Bosniaque'),
('Brésil',                 'BR',    'BRA',    'Brésilienne'),
('Bulgarie',               'BG',    'BGR',    'Bulgare'),
('Cambodge',               'KH',    'KHM',    'Cambodgienne'),
('Cameroun',               'CM',    'CMR',    'Camerounaise'),
('Canada',                 'CA',    'CAN',    'Canadienne'),
('Chili',                  'CL',    'CHL',    'Chilienne'),
('Chine',                  'CN',    'CHN',    'Chinoise'),
('Colombie',               'CO',    'COL',    'Colombienne'),
('Rébublique du Congo',    'CG',    'COG',    'Congolaise'),
('Cuba',                   'CU',    'CUB',    'Cubaine'),
('Chypre',                 'CY',    'CYP',    'Chypriote'),
('République tchèque',     'CZ',    'CZE',    'Tchèque');

INSERT INTO contacts (nom, prenom, date_de_naissance, sexe, adresse, cp, ville, pays_iso_3) VALUES
('Ahmadi',        'Omar',       '1985-06-15',    'Homme',    '123 Rue de Kaboul',        '1001',     'Kaboul',            'AFG'),
('Shehu',         'Elira',      '1990-04-20',    'Femme',    '45 Rue Tirana',            '1002',     'Tirana',            'ALB'),
('Belaid',        'Fatima',     '1987-08-10',    'Femme',    '12 Rue d’Alger',           '16000',    'Alger',             'DZA'),
('Dos Santos',    'Pedro',      '1983-03-25',    'Homme',    '34 Rua Luanda',            '00100',    'Luanda',            'AGO'),
('Perez',         'Martina',    '1992-09-15',    'Femme',    '78 Calle Buenos Aires',    'C1010',    'Buenos Aires',      'ARG'),
('Avetisyan',     'Arman',      '1975-11-12',    'Homme',    '56 Rue Erevan',            '0010',     'Erevan',            'ARM'),
('Smith',         'Emily',      '1989-04-01',    'Femme',    '99 Sydney Road',           '2000',     'Sydney',            'AUS'),
('Müller',        'Hans',       '1981-06-22',    'Homme',    '45 Wien Strasse',          '1010',     'Vienne',            'AUT'),
('Aliyev',        'Leyla',      '1995-07-12',    'Femme',    '88 Baku Boulevard',        '1000',     'Bakou',             'AZE'),
('Ivanov',        'Mikhail',    '1980-02-18',    'Homme',    '101 Minsk Street',         '2200',     'Minsk',             'BLR'),
('Dupont',        'Luc',        '1988-12-10',    'Homme',    '123 Bruxelles Rue',        '1000',     'Bruxelles',         'BEL'),
('Fernandez',     'Clara',      '1994-06-07',    'Femme',    '77 Avenida Bolivia',       '1002',     'La Paz',            'BOL'),
('Mehmedovic',    'Amir',       '1990-11-11',    'Homme',    '66 Sarajevo Street',       '7100',     'Sarajevo',          'BIH'),
('Silva',         'Joana',      '1993-10-23',    'Femme',    '55 Rua Rio',               '20000',    'Rio de Janeiro',    'BRA'),
('Ivanova',       'Elena',      '1982-01-23',    'Femme',    '44 Sofia Strasse',         '1000',     'Sofia',             'BGR');

INSERT INTO telephone (id_contact, numero, type) VALUES
(1,     '+93701234567',     1),
(2,     '+355682345678',    1),
(3,     '+213662345678',    1),
(4,     '+244912345678',    1),
(5,     '+549112345678',    1),
(6,     '+374912345678',    1),
(7,     '+61212345678',     1),
(8,     '+43112345678',     1),
(9,     '+994512345678',    1),
(10,    '+375292345678',    1),
(11,    '+32212345678',     1),
(12,    '+59171234567',     1),
(13,    '+38761234567',     1),
(14,    '+552112345678',    1),
(15,    '+359888123456',    1);