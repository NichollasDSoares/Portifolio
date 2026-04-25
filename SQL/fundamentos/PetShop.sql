
CREATE DATABASE Petshop;

USE Petshop;

CREATE TABLE Animal(
IdA INT AUTO_INCREMENT PRIMARY KEY, 
NomeA varchar (50) not null,
RacaA varchar (10)); 
 
 CREATE TABLE Especie( 
IdE int auto_increment primary key, 
NomeE varchar (50) not null); 

CREATE TABLE Dono(
IdD int auto_increment primary key, 
NomeD varchar (50) not null,
CPFD varchar (20),
TelD varchar (20));

ALTER TABLE Animal ADD IdD INT REFERENCES Dono (IdD);
ALTER TABLE Animal ADD Dono INT REFERENCES Dono (IdD);
RENAME TABLE Especie TO Raca;

INSERT INTO Animal(
NomeA,
RacaA,
Dono)
VALUES
('Toto',1,2),
('Toto',2,3),
('Lica',1,1),
('Brutus',3,1),
('Pluto',1,1);

INSERT INTO Dono(
 NomeD,
CPFD,
TelD)
VALUES
('João','1234','33334444'),   
('Pedro','5678','33335555'),
('José','9123','33336666'),
('Maria','3124','33332222');

INSERT INTO Raca(
 NomeE)
VALUES
('Vira-lata'),   
('Poodle');

SELECT * FROM Animal;
SELECT * FROM Dono;
SELECT * FROM Raca;

UPDATE 
	Animal
SET 
	NomeA = 'Rex'
WHERE
	IdA = 4;
    
DELETE FROM Animal WHERE IdA = 2;
    
UPDATE 
	Animal
SET
	IdD = 4
WHERE
	IdA = 3;
    
CREATE TABLE Consulta(
IdC INT AUTO_INCREMENT PRIMARY KEY,
DataC DATETIME,
Animal INT REFERENCES ANIMAL (IdA));

ALTER TABLE Consulta ADD Hora TIME;

INSERT INTO Consulta(
DataC,
Animal,
Hora)
values
('2007-01-12','1','07:00'),    
('2007-01-12','3','08:00'),
('2007-01-13','1','07:00');

SELECT * FROM Consulta;

DELETE FROM Consulta WHERE IdC = 1;

UPDATE
	Consulta
SET
	DataC = '2007-01-13'
WHERE
	IdC = 2;
    
SELECT * FROM Animal;
SELECT * FROM Dono;
SELECT * FROM Raca;
SELECT * FROM Consulta;