DROP DATABASE IF EXISTS its_32_07_banca;
CREATE DATABASE its_32_07_banca;
USE its_32_07_banca;

CREATE TABLE Cliente(
	clienteID INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(250) NOT NULL,
    cognome VARCHAR(250) NOT NULL,
    indirizzo VARCHAR(250),
    cod_fis CHAR(16) NOT NULL UNIQUE
);

CREATE TABLE Conto(
	contoID INTEGER PRIMARY KEY AUTO_INCREMENT,
    iban VARCHAR(30) NOT NULL UNIQUE,
    saldo DECIMAL(10,2) DEFAULT 0 CHECK (saldo >= 0),
    clienteRIF INTEGER NOT NULL,
    FOREIGN KEY (clienteRIF) REFERENCES Cliente(clienteID) ON DELETE CASCADE
);

CREATE TABLE Carta(
	cartaID INTEGER PRIMARY KEY AUTO_INCREMENT,
    numero CHAR(16) NOT NULL UNIQUE,
    scadenza DATE NOT NULL,
    contoRIF INTEGER NOT NULL,
    clienteRIF INTEGER NOT NULL,
    FOREIGN KEY (contoRIF) REFERENCES Conto(contoID) ON DELETE CASCADE,
    FOREIGN KEY (clienteRIF) REFERENCES Cliente(clienteID) ON DELETE CASCADE
);

INSERT INTO Cliente (nome, cognome, indirizzo, cod_fis) VALUES
('Mario', 'Rossi', 'Via Roma 1, Milano', 'RSSMRA80A01L219X'),
('Laura', 'Bianchi', 'Piazza Verdi 5, Roma', 'BNCLRA85B02H501Y'),
('Giovanni', 'Verdi', 'Corso Italia 10, Napoli', 'VRDGNN90C03M150Z'),
('Anna', 'Neri', 'Via Garibaldi 15, Torino', 'NRINNA95D04G200W'),
('Luca', 'Gialli', 'Viale Dante 20, Firenze', 'GLLLCU88E05P250V'),
('Sofia', 'Marrone', 'Via Monti 25, Bologna', 'MRRSFA92F06R300U'),
('Marco', 'Blu', 'Piazza Cavour 30, Palermo', 'BLUMRC83G07S350T'),
('Giulia', 'Viola', 'Corso Umberto 35, Venezia', 'VLAGIU87H08T400S'),
('Antonio', 'Arancio', 'Via Petrarca 40, Genova', 'RNCTNA91I09U450R'),
('Elena', 'Rosa', 'Viale Leopardi 45, Bari', 'RSALNE89L10V500Q');

INSERT INTO Conto (iban, saldo, clienteRIF) VALUES
('IT60X0300203280000000000001', 1000.50, 1),
('IT60Y0300203280000000000002', 2500.00, 2),
('IT60Z0300203280000000000003', 500.75, 3),
('IT60A0300203280000000000004', 1500.25, 4),
('IT60B0300203280000000000005', 3000.00, 5),
('IT60C0300203280000000000006', 750.80, 6),
('IT60D0300203280000000000007', 2000.10, 7),
('IT60E0300203280000000000008', 3500.50, 8),
('IT60F0300203280000000000009', 1200.90, 9),
('IT60G0300203280000000000010', 2800.00, 10);

INSERT INTO Carta (numero, scadenza, contoRIF, clienteRIF) VALUES
("1234567890123456", '2025-12-31', 1, 1),
("9876543210987654", '2026-06-30', 2, 2),
("1122334455667788", '2027-03-15', 3, 3),
("8877665544332211", '2028-09-20', 4, 4),
("1020304050607080", '2029-11-01', 5, 5),
("8070605040302010", '2030-04-25', 6, 6),
("1357924680135792", '2031-07-10', 7, 7),
("2468013579246801", '2032-12-05', 8, 8),
("9182736450918273", '2033-02-28', 9, 9),
("3645091827364509", '2034-08-18', 10, 10);

-- Dato il codice fiscale di un cliente, restituire tutte le carte di credito possedute
SELECT nome, cognome, cod_fis AS "codice fiscale", numero, scadenza
	FROM Cliente
    JOIN Carta ON Cliente.clienteID = Carta.clienteRIF
    WHERE cod_fis = "BNCLRA85B02H501Y";
    
-- Dato il codice fiscale di un cliente, restituire tutte l'elenco delle 
-- carte di credito possedute e relativo conto bancario associato.
SELECT * 
	FROM Cliente 
    JOIN Carta ON Cliente.clienteID = Carta.clienteRIF
    JOIN Conto ON Carta.contoRIF = Conto.contoID
    WHERE cod_fis = "BNCLRA85B02H501Y";
    
SELECT * FROM Conto;

SELECT * FROM Conto WHERE iban = "IT60G0300203280000000000010";
SELECT * FROM Conto WHERE contoID = 10;

