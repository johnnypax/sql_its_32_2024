DROP DATABASE IF EXISTS its_32_05_otm_negozio;
CREATE DATABASE its_32_05_otm_negozio;
USE its_32_05_otm_negozio;

CREATE TABLE Persona(
	personaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nominativo VARCHAR(250) NOT NULL
);

CREATE TABLE Carta(
	cartaID INTEGER PRIMARY KEY AUTO_INCREMENT,
	codice VARCHAR(10) NOT NULL UNIQUE,
    negozio VARCHAR(250) NOT NULL,
    personaRIF INTEGER NOT NULL,
    FOREIGN KEY (personaRIF) REFERENCES Persona(personaID) ON DELETE CASCADE
);

INSERT INTO Persona(personaID, nominativo) VALUES
(1	,"Giovanni Pace"),
(2	,"Valeria Verdi"),
(3	,"Mario Rossi"),
(4	,"Marika Mariko");

INSERT INTO Carta(codice, negozio, personaRIF) VALUES
("AB1234", "Coopa", 1),
("AB1235", "Coopa", 2),
("TT789", "EuroSpendiPoco", 1),
("TT790", "EuroSpendiPoco", 2),
("TT791", "EuroSpendiPoco", 3);

SELECT * FROM Persona;
SELECT * FROM Carta;

SELECT * 
	FROM Persona 
    JOIN Carta ON Persona.personaID = Carta.personaRIF
    WHERE nominativo = "Giovanni Pace";
    
SELECT *
	FROM Carta
    JOIN Persona ON Carta.personaRIF = Persona.personaID
    WHERE codice = "AB1234";
    
DELETE FROM Persona WHERE personaID = 1;
    
