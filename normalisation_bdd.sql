
-- Création de la base de données
drop database if exists  Normalisation_BDD;
CREATE DATABASE IF NOT EXISTS Normalisation_BDD;
USE Normalisation_BDD;

-- Création des tables
CREATE TABLE Filieres (
    code_filiere VARCHAR(20) PRIMARY KEY,
    filiere VARCHAR(50),
    niveau VARCHAR(10)
);

CREATE TABLE Etudiants (
    id_etudiant VARCHAR(10) PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    date_naissance DATE,
    lieu_naissance VARCHAR(50),
    adresse VARCHAR(100),
    telephone VARCHAR(20),
    genre CHAR(1)
    
);
-- Table d'association : un étudiant peut être lié à plusieurs filières
CREATE TABLE Inscriptions (
    id_etudiant VARCHAR(10),
    code_filiere VARCHAR(20),
    PRIMARY KEY (id_etudiant, code_filiere),
    FOREIGN KEY (id_etudiant) REFERENCES Etudiants(id_etudiant),
    FOREIGN KEY (code_filiere) REFERENCES Filieres(code_filiere)
);

CREATE TABLE Matieres (
    nom_matiere VARCHAR(100),
    semestre VARCHAR(10),
    credit INT,
    PRIMARY KEY (nom_matiere, semestre)
);

CREATE TABLE Notes (
    id_note INT AUTO_INCREMENT PRIMARY KEY,
    id_etudiant VARCHAR(10),
    nom_matiere VARCHAR(100),
    note_tp FLOAT,
    note_cc FLOAT,
    note_cf FLOAT,
    note_sc FLOAT,
    annee_universitaire VARCHAR(20),
    FOREIGN KEY (id_etudiant) REFERENCES Etudiants(id_etudiant),
    FOREIGN KEY (nom_matiere) REFERENCES Matieres(nom_matiere)
);



# inseration des filieres 
INSERT INTO Filieres (code_filiere, filiere, niveau) VALUES ('C13L2', 'MAI', 'L2');
INSERT INTO Filieres (code_filiere, filiere, niveau) VALUES ('C16L3', 'MA', 'L3');
INSERT INTO Filieres (code_filiere, filiere, niveau) VALUES ('C03L1', 'MPI', 'L1');
INSERT INTO Filieres (code_filiere, filiere, niveau) VALUES ('C20L3', 'RSX', 'L3');
INSERT INTO Filieres (code_filiere, filiere, niveau) VALUES ('C20M1', 'SI', 'M1');
INSERT INTO Filieres (code_filiere, filiere, niveau) VALUES ('C01L1', 'BG', 'L1');
INSERT INTO Filieres (code_filiere, filiere, niveau) VALUES ('C01L2', 'BIO', 'L2');
INSERT INTO Filieres (code_filiere, filiere, niveau) VALUES ('C02L2', 'GEO', 'L2');
INSERT INTO Filieres (code_filiere, filiere, niveau) VALUES ('C08L2', 'CHIMIE', 'L2');
INSERT INTO Filieres (code_filiere, filiere, niveau) VALUES ('C14L3', 'EEA', 'L3');
INSERT INTO Filieres (code_filiere, filiere, niveau) VALUES ('C14L2', 'MIAGE', 'L2');
INSERT INTO Filieres (code_filiere, filiere, niveau) VALUES ('C19L3', 'MIAGE', 'L3');

# inseration des etuds 
INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00001', 'Mohamed', 'Ahmed', '2000-12-31', 'Néma', 'NKTT', '12121212', 'M');

INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00002', 'Abou', 'Mohamed', '2000-12-31', 'Aioun', 'NKTT', '12121213', 'M');

INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00003', 'Oumar', 'Ali', '1998-01-31', 'Kiffa', 'NKTT', '12121214', 'M');

INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00004', 'Outhman', 'Ahmed', '2000-10-31', 'Kéadi', 'NKTT', '12121215', 'M');

INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00005', 'Dia', 'Boucar', '2002-12-31', 'Aleg', 'NKTT', '12121216', 'M');

INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00006', 'Sidi', 'Mohamed', '2000-12-31', 'Rosso', 'NKTT', '12121217', 'M');

INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00007', 'Malik', 'Kane', '2000-12-31', 'Atar', 'NKTT', '12121218', 'M');

INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00008', 'Selman', 'Bilal', '2000-12-31', 'Nouadhibou', 'NKTT', '12121219', 'M');

INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00009', 'Moustapha', 'Sidi', '2000-12-31', 'Tidjikja', 'NKTT', '12121220', 'M');

INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00010', 'Yacoub', 'Lemine', '2000-12-31', 'Sélibabi', 'NKTT', '12121221', 'M');

INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00011','Mohamed','El Emine','2001-12-01' ,'Zouérat','NKTT','12121222','M');
INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00012','Cherif','Ahmed','2000-12-31','Akjoujet','NKTT','12121223','M');
INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00013','Eness','Abdellahi','2004-08-31','Nouakchott','NKTT','12121224','M');
INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00014','Abderrahim','Ba','2000-12-31','Nouakchott','NKTT','12121225','M'
);
INSERT INTO Etudiants (id_etudiant, nom, prenom, date_naissance, lieu_naissance, adresse, telephone, genre)
VALUES ('C00015','Mohamed','Abdellahi','2000-12-31','Nouakchott','NKTT','12121226','M'
);

# inseration inscriptions

INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00001', 'C16L3');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00001', 'C13L2');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00002', 'C13L2');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00003', 'C16L3');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00004', 'C19L3');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00004', 'C14L2');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00005', 'C03L1');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00006', 'C20L3');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00007', 'C20M1');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00008', 'C16L3');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00009', 'C01L2');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00009', 'C01L1');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00010', 'C13L2');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00011', 'C01L2');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00012', 'C16L3');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00013', 'C02L2');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00014', 'C08L2');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00015', 'C14L3');
INSERT INTO Inscriptions (id_etudiant, code_filiere) VALUES ('C00002', 'C03L1');

# inserestion Matiers 

INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('JAVA I', 3, 3);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('EDP', 5, 2);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('ALGO', 1, 3);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('Algo', 3, 3);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('Réseau', 5, 3);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('BD I', 1, 6);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('Algèbre II', 5, 3);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('PI', 3, 3);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('Python', 5, 3);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('BioMarine', 1, 6);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('Stochastique', 3, 3);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('Géophisique', 3, 6);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('Organique', 3, 3);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('Electro', 5, 2);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('Analogique', 5, 6);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('Immunologie', 3, 6);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('BioCellulaire', 3, 3);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('CalculDiff', 5, 6);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('Géometrie différentielle', 6, 3);
INSERT INTO Matieres (nom_matiere, semestre, credit) VALUES ('Analyse', 3, 3);


# inseration des Notes
INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00001', 'CalculDiff', 0.0, 11.0, 13.0, 0.0, '2024-2025');
INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00001', 'Géometrie différentielle', 0.0, 15.0, 10.0, 0.0, '2024-2025');
INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00001', 'Analyse', 0.0, 16.0, 14.0, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00002', 'JAVA I', 12.5, 11.0, 13.0, 0.0, '2024-2025');
INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00002', 'PI', 12.5, 11.0, 13.0, 0.0, '2024-2025');
INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00002', 'Algo', 10.5, 10.5, 10.5, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00003', 'EDP', 0.0, 11.0, 13.0, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00004', 'Python', 12.5, 11.0, 13.0, 0.0, '2024-2025');
INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00004', 'JAVA I', 18.0, 11.0, 13.0, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00005', 'ALGO', 13.33, 11.0, 13.0, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00006', 'Réseau', 15.2, 11.0, 13.0, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00007', 'BD I', 11.5, 11.0, 13.0, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00008', 'Algèbre II', 12.5, 11.0, 13.0, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00009', 'Immunologie', 14.0, 14.0, 14.0, 0.0, '2024-2025');
INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00009', 'BioCellulaire', 13.0, 13.0, 0.0, 13.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00010', 'PI', 18.0, 11.0, 13.0, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00011', 'BioMarine', 14.0, 11.0, 13.0, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00012', 'Stochastique', 16.0, 11.0, 13.0, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00013', 'Géophisique', 15.0, 11.0, 13.0, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00014', 'Organique', 13.5, 11.0, 13.0, 0.0, '2024-2025');

INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00015', 'Electro', 14.6, 11.0, 13.0, 0.0, '2024-2025');
INSERT INTO Notes (id_etudiant, nom_matiere, note_tp, note_cc, note_cf, note_sc, annee_universitaire)
VALUES ('C00015', 'Analogique', 12.5, 11.0, 13.0, 0.0, '2024-2025');
