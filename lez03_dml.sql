DROP DATABASE IF EXISTS its_32_03_inserimenti;
CREATE DATABASE its_32_03_inserimenti;
USE its_32_03_inserimenti;

CREATE TABLE Persona(
	personaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(500) NOT NULL,
    cognome VARCHAR(500) NOT NULL,
    cod_fis CHAR(16) NOT NULL UNIQUE
);


INSERT INTO Persona(nome, cognome, cod_fis) VALUES
("Giovanni", "Pace", "PCAGNN");
INSERT INTO Persona(nome, cognome, cod_fis) VALUES
("Valeria", "Verdi", "VLRVRD");
INSERT INTO Persona(nome, cognome, cod_fis) VALUES
("Mario", "Rossi", "PCAGNN");
INSERT INTO Persona(nome, cognome, cod_fis) VALUES
("Marika", "Mariko", "MRKMRK");

/*
INSERT INTO Persona(nome, cognome, cod_fis) VALUES
("Giovanni", "Pace", "PCAGNN"),
("Valeria", "Verdi", "VLRVRD"),
("Mario", "Rossi", "PCAGNN"),
("Marika", "Mariko", "MRKMRK");
*/

-- DELETE FROM Persona  WHERE personaID = 9;

-- ALIAS
SELECT nome, cognome AS "Cognome", cod_fis AS "Codice Fiscale"
	FROM Persona
    WHERE personaID = 4;