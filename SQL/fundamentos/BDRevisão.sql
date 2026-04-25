
create database livraria;
use livraria;
create table Cliente(
CodigoCliente int auto_increment primary key,
TelefoneCliente varchar (20),
EnderecoCliente varchar (50),
CPFcliente varchar (15),
CNPJcliente varchar (20),
TipoCliente varchar (15));


create table Livro(
CodigoLivro int auto_increment primary key,
ISBNlivro varchar (20),
QtdeLivro varchar (50),
AssuntoLivro varchar (30),
AutorLivro varchar (50),
CodigoEditora int references Editora (CodigoEditora));


create table Editora(
CodigoEditora int auto_increment primary key,
EnderecoEditora varchar (50),
TelefoneEditora varchar (20),
GerenteEditora varchar (20));


create table Cliente_Compra_Livro(
CodigoCCL int auto_increment primary key,
CodigoCliente int references Cliente (CodigoCliente),
ISBNlivro varchar (20));
/*CCl (cliente compra livro)*/
alter table Cliente ADD NomeCliente varchar (50);



insert into Cliente(
TelefoneCliente,
EnderecoCliente,
CPFcliente,
CNPJcliente,
TipoCliente,
NomeCliente)
values
('(12)99315-6126','Rua Alvaro fagundes, 98','20880799023','04.416.174/0021-41 ','Professor','Nichollas'),
('(12)94316-6225','Rua Jardim das Flores, 54','22169109843','02.734.230/0001-85 ','Aluno','Mathias'),
('(12)92560-9429','Rua Marcondes Lima, 8','20100118013','05.215.267/0004-67 ','Idoso','Maicom'),
('(11)98866-4485','Rua João Guilherme, 404','20340938784','09.237.115/0061-12 ','PcD ','Petersom'),
('(12)99731-8697','Rua Gigantes, 190','20001433289','01.313.967/0092-99 ','PNE','Lucas');


alter table Livro add NomeLivro varchar (50);


insert into Livro(
ISBNlivro,
QtdeLivro,
AssuntoLivro,
AutorLivro,
NomeLivro)
values
('918-5-26-114460-0','3','Ação','Stan Lee','O Senhos dos Anéis'),
('472-2-17-125430-0','1','Suspense','Marcela Pereira da Silva','Star Wars'),
('548-8-56-282570-0','2','Terror','michael jackson','A Odisséia'),
('913-5-45-282612-0','4','Mistério','Jonh João Alves','A volta de quem não foi'),
('224-7-65-242740-0','6','Terror','Mauricio de Souza','Turma da Mônica');


insert into Editora(
EnderecoEditora,
TelefoneEditora,
GerenteEditora)

values
('Rua Maria da Cruz, 13','(12)9950-9977','Renan'),
('Rua Gigantes, 67','(12)99315-6126','Vicente'),
('Rua presidente Almeida, 170','(12)993122-6220','Joel'),
('Rua Mario bros, 54','(12)99085-5489','Arthur'),
('Rua Henrrique Araújo, 11','(12)99714-8778','Maria');


insert into Cliente_Compra_Livro(
ISBNLivro)
values
('978-3-16-148411-5'),
('967-4-09-656512-4'),
('978-5-78-453413-3'),
('978-6-62-987614-2'),
('978-7-34-125615-1');


select * from Cliente;
select * from Livro;
select * from Editora;
select * from Cliente_Compra_Livro;
select CPFCliente, TipoCliente from Cliente;
select CodigoEditora, GerenteEditora from Editora;

update 
	Editora
set
	EnderecoEditora = 'Av. Andrômeda, 1520',
	TelefoneEditora = '(12)12335-6789'
where
	CodigoEditora = 5;
    
select * from Editora;