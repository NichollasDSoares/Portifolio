drop database ExerciciosInner;

create database ExerciciosInner;
use ExerciciosInner;

create table Funcionarios(
Codigo int auto_increment primary key,
CodigoD int,
PNome varchar (20),
SNome varchar(20),
UNome varchar(20),
DataNasci date,
CPF varchar(11),
RG varchar (7),
Endereco varchar(100),
CEP varchar(8),
Cidade varchar(40),
Telefone varchar(12),
Funcao varchar(50),
Salario numeric
);

create table Departamentos(
Codigo int auto_increment primary key,
CodigoF int,
Nome varchar (60),
Localizacao varchar(100)
);

insert into Funcionarios(
CodigoD,
PNome,
SNome,
UNome,
DataNasci,
CPF,
RG,
Endereco,
CEP,
Cidade,
Telefone,
Funcao,
Salario
)
values
('1','Ana','Santos','Silva','19900115','12345678901','9876543','Rua das Flores, 123','12345678','São Paulo','(12)981267953','Gerente','3000'),
('2','Pedro','','Costa','19950228','23456789012','8765432','Avenida dos Alpes, 456','23456789','Rio de Janeiro','(11)988753105','Gerente','2500'),
('3','Maria','Lima','Gomes','19871203','34567890123','7654321','Rua das Palmeiras, 789','34567890','Belo Horizonte','(31)984623501','Gerente','4000'),
('4','João','Ribeiro','Santana','19981120','45678901234','6543210','Alameda das Praias, 987','45678901','Salvador','(71)987462103','Gerente','1500'),
('5','Lucas','Ferreira','Silveira','19921010','56789012345','5432109','Avenida dos Bosques, 321','56789012','Porto Alegre','(51)98456621','Supervisor','3500'),
('6','Enzo','Soares','Sikeira','19921105','52648950249','6219824','Rua dos Pedreiros, 684','23247821','Fortaleza','(85)981687901','Supervisor','3800'),
('7','Cauã','Nogueira','Júnior','19991208','57854201423','7945634','Rua dos Alfinetes, 125','12225892','São José dos Campos','(12)981512643','Programador','5000'),
('8','Maria', 'Fernandes', 'Santos', '1995-02-28', '23456789012', '8765432', 'Avenida dos Alpes, 456', '23456789', 'Rio Grande do Sul', '(11)988753105', 'Analista', 3500);

insert into Departamentos(
Nome,
Localizacao
)
values
('RH','São Paulo'),
('TI','Rio de Janeiro'),
('Marketing','Belo Horizonte'),
('Finanças','Salvador'),
('Vendas','Porto Alegre'),
('Corretora','Fortaleza'),
('Imobiliaria','São José dos Campos'),
('Pessoal','Rio Grande do Sul');

alter table Funcionarios add constraint CodigoD foreign key (Codigo) references Departamentos (Codigo);
alter table Departamentos add constraint CodigoF foreign key (Codigo) references Funcionarios (Codigo);

-- 1 ----------------------------------------------- --
select * From Funcionarios
order by SNome;

-- 2 ----------------------------------------------- --
Select * From Funcionarios 
Order by Cidade;

-- 3 ----------------------------------------------- --
select * From Funcionarios
	Where Salario > 1000
Order by PNome, SNome, UNome;

-- 4 ----------------------------------------------- --
select
	DataNasci,
    PNome
From
	Funcionarios
Order By
	DataNasci desc, PNome;
    
-- 5 -----------------------------------------------
Select
	PNome,
    SNome,
    UNome,
    Telefone
From
	Funcionarios
Order By
	Telefone;
    
-- 6 -----------------------------------------------
Select
	PNome,
    Salario,
    Sum(Salario) as Total
From
	Funcionarios
Group By
	PNome;
    
-- 7 -----------------------------------------------
Select 
	PNome,
    SNome,
    UNome,
    Nome as Departamentos
From
	Funcionarios F
Join Departamentos D ON (F.Codigo = D.Codigo);

-- 8 -----------------------------------------------
Select
	D.Nome as NomeDepartamento, F.PNome as Gerente
From
	Departamentos D
Join Funcionarios F ON (D.Codigo = F.Codigo)
WHERE 
	F.Funcao = 'Gerente';

-- 9 -----------------------------------------------

Select D.Nome as NomeDepartamento, SUM(F.Salario) as ValorFolha
From Funcionarios F
Join Departamentos D ON F.CodigoD = D.Codigo
Group By D.Nome;

-- 10 -----------------------------------------------
Select D.Nome as NomeDepartamento
From Departamentos D
Join Funcionarios F ON (D.Codigo = F.Codigo)
Where F.Funcao = 'Supervisor';

-- 11 -----------------------------------------------
Select COUNT(*) as QuantFuncionarios
From Funcionarios;

-- 12 -----------------------------------------------
Select Avg(Salario) as MédiaSalário
From Funcionarios;

-- 13 -----------------------------------------------
Select D.Nome as NomeDepartamento, MIN(F.Salario) as MenorSalario
From Funcionarios F
Join Departamentos D ON (F.CodigoD = D.Codigo)
Group By D.Nome;

-- 14 -----------------------------------------------
Select CONCAT(PNome, ' ', UNome) as NomeCompleto
From Funcionarios
Where SNome Is Null or SNome = '';

-- 15 -----------------------------------------------
Select D.Nome as NomeDepartamento, CONCAT(F.PNome, ' ', F.SNome, ' ', F.UNome) as NomeFuncionario
From Funcionarios F
Join Departamentos D ON F.CodigoD = D.Codigo
Order By D.Nome, NomeFuncionario;

-- 16 -----------------------------------------------
Select CONCAT(PNome, ' ', SNome, ' ', UNome) as NomeFuncionario
From Funcionarios
Where Cidade = 'São José dos Campos' and Funcao = 'Programador';

-- 17 -----------------------------------------------
Select CONCAT(PNome, ' ', SNome, ' ', UNome) as NomeFuncionario
From Funcionarios F
Join Departamentos D ON (F.Codigo = D.Codigo)
Where D.Nome = 'Pessoal';

-- 18 -----------------------------------------------
Select F.PNome, F.SNome, F.UNome, D.Nome as Departamento
From Funcionarios F
Join Departamentos D ON (F.Codigo = D.Codigo)
Where F.Salario > (SELECT AVG(Salario) From Funcionarios)
Order By F.PNome, F.SNome, F.UNome;

