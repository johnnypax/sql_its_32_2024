-- Linguaggio SQL
/*
Diviso in:
- DDL: Data Definition Language
- DML: Data Manipulation Language
- QL: Querying Language
*/

-- DROP DATABASE IF EXISTS its_32_01_rubrica;
CREATE DATABASE its_32_01_rubrica;
USE its_32_01_rubrica;

-- DROP TABLE IF EXISTS Contatto;
CREATE TABLE Contatto(
	nome VARCHAR(250) NOT NULL,
	cognome VARCHAR(250) NOT NULL,
	cod_fis CHAR(16) NOT NULL UNIQUE,
    email VARCHAR(250),
	telefono VARCHAR(250) NOT NULL
);

ALTER TABLE Contatto ADD COLUMN indirizzo TEXT;
ALTER TABLE Contatto ADD COLUMN prova TEXT NOT NULL;
ALTER TABLE Contatto DROP COLUMN prova;
ALTER TABLE Contatto MODIFY COLUMN indirizzo VARCHAR(150);

-- DML
INSERT INTO Contatto(nome, cognome, cod_fis, telefono) VALUES
("Giovanni", "Pace", "PCAGNN", "12345");

INSERT INTO Contatto(telefono, cod_fis, email, nome, cognome) VALUES
("8596", "VLRVRD", "val@ver.com", "Valeria", "Verdi");

INSERT INTO Contatto(cognome, cod_fis, telefono) VALUES
("Pace", "PCAGNV", "12345");	-- Non permesso

-- QL
SELECT * FROM Contatto;









