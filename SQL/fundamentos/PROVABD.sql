create database livraria;
use livraria;

create table cliente(
CODCliente INT auto_increment PRIMARY KEY,
TELCliente VARCHAR(30),
ENDERECOCliente VARCHAR(100),
CPFCliente VARCHAR(30),
CNPJCliente VARCHAR(30),
TIPOCliente VARCHAR(30)
);

create table livro(
CODEDITORA INT references editora(CODEditora),
ISBN INT auto_increment PRIMARY KEY,
QTDE VARCHAR(10),
ASSUNTO VARCHAR(500),
AUTOR VARCHAR(50)
);

create table editora(
CODEDITORA INT auto_increment PRIMARY KEY,
ENDERECOEditora VARCHAR(50),
TELEditora VARCHAR(30),
GERENTEEditora VARCHAR (50),
TIPOLivro VARCHAR(50)
);

create table cliente_compra_livro(
CODClinte INT REFERENCES cliente(CODCliente),
isbn INT REFERENCES livro(ISBN),
DATADACOMPRA DATETIME
);

insert into cliente(
TELCliente,
ENDERECOCliente,
CPFCliente,
CNPJCliente,
TIPOCliente
)
values
('12988528483','Rua das Pedras','123.456.789-10','','fisico');

insert into livro(
QTDE,
ASSUNTO,
AUTOR
)
values
('142','guia introdutorio a um jogo de cartas de uma franquia muito conhecida, Pokemon','Mauricio de Sonsa');

insert into editora(
ENDERECOEditora,
TELEditora,
GERENTEEditora,
TIPOLivro
)
values
('Rua Ruina Castelo','12997988483','Carlos Alberto Silva','Aventura');

insert into cliente_compra_livro(
DATADACOMPRA
)
values
('2022/12/12');

select * from cliente;
select * from editora;
select * from livro;
select * from cliente_compra_livro
