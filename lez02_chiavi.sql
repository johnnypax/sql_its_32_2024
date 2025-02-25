DROP DATABASE IF EXISTS its_32_02_primary;
CREATE DATABASE its_32_02_primary;
USE its_32_02_primary;

CREATE TABLE Persona(
	personaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(500) NOT NULL,
    cognome VARCHAR(500) NOT NULL,
    cod_fis CHAR(16) NOT NULL UNIQUE,
    email VARCHAR(250),
    telefono VARCHAR(250)
);

INSERT INTO Persona(nome, cognome, cod_fis, telefono) VALUES
("Giovanni", "Pace", "PCAGNN", "12345"),
("Valeria", "Verdi", "VLRVRD", "12346");

INSERT INTO Persona(personaID, nome, cognome, cod_fis, telefono) VALUES
(85, "Mario", "Rossi", "MRRRSS", "12347");

INSERT INTO Persona(personaID, nome, cognome, cod_fis, telefono) VALUES
(3, "Marika", "Mariko", "MRKMRK", "12348");

INSERT INTO Persona(nome, cognome, cod_fis, telefono) VALUES
("Maria", "Mario", "MRIMRO", "12348");

DELETE FROM Persona WHERE personaID = 85;
DELETE FROM Persona WHERE cod_fis = "MRIMRO";

UPDATE Persona 
	SET nome = "Keith", 
		cognome = "Caputo" 
	WHERE personaID = 25;

SELECT * FROM Persona;
