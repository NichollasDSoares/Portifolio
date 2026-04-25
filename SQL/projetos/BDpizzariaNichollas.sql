
CREATE DATABASE Pizzaria;
use Pizzaria;
CREATE TABLE Clientes (
IDcliente INT auto_increment primary key,
NomeCliente VARCHAR(100),
TelefoneCliente VARCHAR(15),
EnderecoCliente VARCHAR(100),
CPFcliente bigint
);
CREATE TABLE Pedidos (
IDpedido INT auto_increment primary key,
IDcliente INT references Clientes(IDcliente),
IDfuncionario INT references Funcionarios(IDfuncionario),
IDpizza INT references Pizzas(IDpizza),
DataPedido datetime,
ValorTotal NUMERIC(4,2)
);
CREATE TABLE Pizzas (
IDpizza INT auto_increment primary key,
IDingrediente INT references Ingredientes(IDingrediente),
Nome VARCHAR(50),
Tamanho VARCHAR(10),
Preco NUMERIC(4,2)
);
CREATE TABLE Ingredientes (
IDingrediente INT auto_increment primary key,
NomeIngrediente VARCHAR(50),
QuantidadeDisponivel INT
);
CREATE TABLE Funcionarios (
IDfuncionario INT auto_increment primary key,
NomeFuncionarios VARCHAR(100),
Cargo VARCHAR(50),
DataContratacao datetime
);

INSERT INTO Clientes (NomeCliente, TelefoneCliente, EnderecoCliente, CPFcliente)
VALUES
    ('João da Silva', '11 1234-5678', 'Rua A, 123', 12345678901),
    ('Maria Santos', '22 9876-5432', 'Avenida B, 456', 98765432102),
    ('Carlos Pereira', '33 5555-5555', 'Rua C, 789', 55555555503),
    ('Ana Oliveira', '44 7777-8888', 'Avenida D, 101', 77778888904),
    ('Mário Fernandes', '55 9999-8888', 'Rua E, 202', 11112222335);

INSERT INTO Pedidos (IDcliente, DataPedido, ValorTotal)
VALUES
    (1, '2023-09-14 10:00:00', 25.99),
    (2, '2023-09-14 12:30:00', 19.95),
    (3, '2023-09-14 15:45:00', 30.50),
    (4, '2023-09-14 18:20:00', 15.75),
    (5, '2023-09-14 20:00:00', 22.49);

INSERT INTO Pizzas (Nome, Tamanho, Preco)
VALUES
    ('Margherita', 'Média', 10.99),
    ('Pepperoni', 'Grande', 13.99),
    ('Vegetariana', 'Pequena', 9.99),
    ('Havaiana', 'Média', 11.99),
    ('Suprema', 'Grande', 14.99);

INSERT INTO Ingredientes (IDingrediente, NomeIngrediente, QuantidadeDisponivel)
VALUES
    (1, 'Queijo mussarela', 100),
    (2, 'Molho de tomate', 200),
    (3, 'Pepperoni', 50),
    (4, 'Abacaxi', 30),
    (5, 'Cogumelos', 40);

INSERT INTO Funcionarios (NomeFuncionarios, Cargo, DataContratacao)
VALUES
    ('Ricardo Costa', 'Chef', '2022-03-15 09:00:00'),
    ('Isabel Ferreira', 'Garçom', '2022-05-20 10:30:00'),
    ('Fernando Almeida', 'Caixa', '2022-06-10 11:15:00'),
    ('Amanda Souza', 'Motorista de Entrega', '2022-07-05 14:00:00'),
    ('Lúcia Santos', 'Gerente', '2022-01-10 08:45:00');
    
-- 3 --
SELECT AVG(ValorTotal) as MediaValorTotal from Pedidos;

-- 4 --
SELECT COUNT(IDcliente) FROM Pedidos;
-- 5 --
SELECT Nome, MIN(Preco) FROM Pizzas
WHERE Preco = (SELECT Min(Preco) FROM Pizzas);
-- 6 --
SELECT IDpedido, MAX(ValorTotal) FROM Pedidos;
-- 7 --
SELECT SUM(ValorTotal) AS SomaTodosPedidos FROM Pedidos;
-- 8 --
SELECT * FROM Ingredientes;

UPDATE Ingredientes
SET QuantidadeDisponivel = QuantidadeDisponivel - 10
WHERE IDingrediente = 1;

SELECT * FROM Ingredientes;

-- 9 --
SELECT C.NomeCliente, count(P.IDpedido) FROM Clientes C
join Pedidos P on (C.IDcliente = P.IDcliente) 
group by P.IDcliente;

-- 10 --
SELECT C.NomeCliente, Sum(P.ValorTotal) FROM Pedidos P
JOIN Clientes C ON (P.IDcliente = C.IDcliente)
GROUP BY P.IDcliente;

-- 11 --
 SELECT Nome, Preco AS ValorMinimo FROM Pizzas
 WHERE Preco = (SELECT min(Preco) FROM Pizzas);
 SELECT Nome, Preco AS ValorMaximo FROM Pizzas
 WHERE Preco = (SELECT max(Preco) FROM Pizzas);
 
 -- 12 --
SELECT Pi.Nome, Pe.IDpedido, C.NomeCliente FROM Pedidos Pe
JOIN Pizzas Pi on Pe.IDpizza = Pi.IDpizza
JOIN Clientes C on Pe.IDcliente = C.IDCliente
group by Pe.IDpedido;

-- 13 --
SELECT C.NomeCliente, C.TelefoneCliente, C.EnderecoCliente, C.CPFcliente, P.IDpedido FROM Pedidos P
join Clientes C on C.IDcliente = P.IDcliente
group by IDpedido;

-- 14 --
SELECT M.Nome, M.Tamanho, M.Preco, P.IDpedido FROM Pedidos P
join Pizzas M on P.IDpizza = M.IDpizza
group by P.IDpedido;

-- 15 --
SELECT P.IDpedido, C.NomeCliente, F.NomeFuncionarios FROM Pedidos P
JOIN Clientes C ON (P.IDcliente = C.IDcliente)
JOIN Funcionarios F ON (P.IDfuncionario = F.IDfuncionario);

-- 16 --
SELECT P.Nome, I.NomeIngrediente FROM Pizzas P
JOIN Ingredientes I on I.IDingrediente = P.IDingrediente;

-- 17 --
SELECT F.NomeFuncionarios, P.IDpedido FROM Funcionarios F
JOIN Pedidos P ON F.IDfuncionario = P.IDfuncionario;

-- 18 --

-- 19 --
CREATE VIEW DETALHEPEDIDO AS
SELECT P.Nome, Pe.IDpedido, C.Cliente, Pe.DataPedido, Pe.ValorTotal FROM Pedidos Pe
JOIN Pizzas P on Pe.IDpizza = P.IDpizza
JOIN Clientes C on C.IDcliente = Pe.IDcliente;

-- 20 --
CREATE VIEW DETALHEPIZZA AS 
SELECT P.Nome, I.NomeIngrediente FROM Pizzas P
JOIN Ingredientes I ON I.IDingrediente = P.IDingrediente;

select * from DETALHEPIZZA;

-- 21 --
Create view DetalheCargo as
SELECT NomeFuncionarios, Cargo FROM Funcionarios;
Select * from DetalheCargo;

-- 22 --
create view Conta as
SELECT IDpedido, ValorTotal FROM Pedidos;
Select * from Conta;

-- 23 --
create view peloMenos as
SELECT C.NomeCliente FROM Pedidos P
JOIN Clientes C ON C.IDcliente = P.IDcliente;
select * FROM peloMenos; 


    
    
    