create database telecomunicacoes;
use telecomunicacoes;
create table cliente(
CodigoCliente int auto_increment Primary Key,
CPFCliente varchar (15),
NomeCliente varchar (100),
DataNascimentoCliente datetime,
EnderecoCliente varchar (100),
CEPCliente varchar (15),
BairroCliente varchar (100),
CidadeCliente varchar (50),
UFCliente varchar (2)
);
alter table cliente add data_ultima_compra varchar (10);
insert into cliente(
CPFCliente,
NomeCliente,
DataNascimentoCliente,
EnderecoCliente,
CEPCliente,
BairroCliente,
CidadeCliente,
UFCliente)
values
('04496332780', 'João da Silva', '25/11/1969', 'Rua Antônio Numes', '88045963', 'Palmeiras',
'Londrina', 'PR'),
('05485031490', 'Ana Regina Fagundes', '21/09/1986', 'Rua Palmeias Novas', '88078923', 'Leblon',
'Rio de Janeiro', 'RJ'),
('03350314905', 'Fernando Soares', '05/03/1990', 'Rua Palmeias Novas', '88048917', 'Copacabana',
'Rio de Janeiro', 'RJ');
select * from cliente where CidadeCliente = 'Rio de Janeiro';
delete from cliente where CidadeCliente = 'Londrina'