create database sacolao;
use sacolao;
create table cliente(
CodigoCliente int auto_increment Primary Key,
NomeCliente varchar (100),
EnderecoCliente varchar (100),
BairroCliente varchar (100),
CidadeCliente varchar (50),
EstadoCliente varchar (21),
DataNascimentoCliente datetime
);
alter table cliente add RG varchar (20);
alter table cliente add CPF varchar (15);
create table produto(
CodigoProduto int auto_increment Primary Key,
NomeProduto varchar (100),
MarcaProduto varchar (100),
ValidadeProduto varchar (15),
PrecoProduto varchar (10),
DataFabricacaoProduto datetime
);
create table Fornecedor(
CodigoFornecedor int auto_increment Primary Key,
NomeFornecedor varchar (100),
EnderecoFornecedor varchar (100),
BairroCliente varchar (100),
EmailFornecedor varchar (100),
TelefoneFornecedor varchar (50),
CidadeCliente varchar (50),
EstadoCliente varchar (21),
DataNascimentoFornecedor datetime
);
create table Funcionario(
NomeFuncionario varchar (100),
EnderecoFuncionario varchar (100),
BairroFuncionario varchar (100),
EmailFuncionario varchar (100),
DataNascimentoFuncionario datetime
);

