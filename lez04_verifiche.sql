DROP DATABASE IF EXISTS its_32_04_verifiche;
CREATE DATABASE its_32_04_verifiche;
USE its_32_04_verifiche;

CREATE TABLE Prodotto(
	prodottoID INTEGER PRIMARY KEY AUTO_INCREMENT,
    codice VARCHAR(25) NOT NULL UNIQUE,
    nome VARCHAR(250) NOT NULL,
    descrizione TEXT,
    prezzo FLOAT DEFAULT 0.1 CHECK (prezzo >= 0),
    quantita INTEGER DEFAULT 1 CHECK (quantita >= 0),
    data_inserimento DATETIME DEFAULT CURRENT_TIMESTAMP
);

 INSERT INTO Prodotto(codice, nome, descrizione, prezzo) VALUES
    ("AB1234", "Cacciavite", "Che vitaccia, disse...", -12.5);