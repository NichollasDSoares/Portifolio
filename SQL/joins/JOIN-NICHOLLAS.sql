/*Base para o Exercício

Criar o banco de dados ExerciciosInner

Utilizar o banco de dados

Criar a tabela Funcionarios ( Codigo, PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone,       Funcao, Salario.

Criar a tabela Departamentos (Codigo, Nome, Localizacao)

Inserir CodigoDepartamento como chave estrangeira na tabela Funcionários
Inserir CodigoFuncionarioGerente como chave estrangeira na tabela Departamentos

----------------------------------------------------------------------------------
-- Exercício 1 - Listar nome e sobrenome ordenado por sobrenome

      ----------------------------------------------------------------------
-- Exercício 2 - Listar todos os campos de funcionários ordenados por cidade

----------------------------------------------------------------------------
-- Exercício 3 - Liste Funcionários que têm salário superior a R$ 1000,00 ordenados pelo nome completo

----------------------------------------------------------------------------
-- Exercício 4 - Liste a Data de Nascimento e o primeiro nome dos funcionários ordenados do mais novo para o mais velho

-----------------------------------------------------------------------------
--Exercício 5 - Liste os funcionários como uma listagem telefônica

-----------------------------------------------------------------------------
--Exercício 6 - Liste o total da folha de pagamento

-----------------------------------------------------------------------------
--Exercício 7 - Liste o nome, o nome do departamento e a função de todos os funcionários

-----------------------------------------------------------------------------
-- Exercício 8 - Liste todos departamentos com seus respectivos gerentes

--------------------------------------------------------------------------------
-- Exercício 9 - Liste o Valor da folha de pagamento de cada departamento (nome)

---------------------------------------------------------------------------
-- Exercício 10 - Liste os departamentos dos funcionários que têm a função de supervisor

---------------------------------------------------------------------------   
-- Exercício 11 - Liste a quantidade de funcionários desta empresa

---------------------------------------------------------------------------
-- Exercício 12 - Liste o salário médio pago pela empresa

---------------------------------------------------------------------------
-- Exercício 13 - Liste o menor salário pago pela empresa em cada departamento

---------------------------------------------------------------------------
-- Exercício 14 - Liste o nome completo de todos os funcionários que não tenham segundo nome

---------------------------------------------------------------------------
-- Exercício 15 - Liste o nome do departamento e do funcionário ordenados por departamento e funcionário

---------------------------------------------------------------------------
-- Exercício 16 - Liste os nomes dos funcionários que moram em 'São José dos Campos' e que exerçam a função de 'Programador'

---------------------------------------------------------------------------
-- Exercício 17 - Liste os nomes dos funcionários que trabalham no departamento Pessoal

---------------------------------------------------------------------------
-- Exercício 18 - Liste o nome e o departamento de todos os funcionários que ganham mais do que algum gerentes

-----------------------------------------------------------------------------
Lembrando que:
-- SOME - Compara um valor com um conjunto de valores de uma única coluna.
-- MIN - Valor mínimo de um conjunto de valores.
-- MAX - Valor máximo de um conjunto de valores.
-- AVG - Média aritmétiva de um conjunto de valores.
-- SUM - Total (Soma) de um conjunto de valores.
-- COUNT - Contar quantidade total de itens.
*/
drop database ExerciciosInner;

create database ExerciciosInner;
use ExerciciosInner;

create table Funcionarios(
Codigo int auto_increment primary key,
CodigoD int,
PrimeiroNome varchar (20),
SegundoNome varchar(20),
UltimoNome varchar(20),
DataNasci date,
CPF varchar(11),
RG varchar (7),
Endereco varchar(100),
CEP varchar(8),
Cidade varchar(40),
Telefone varchar(15),
Funcao varchar(50),
Salario numeric
);

create table Departamentos(
Codigo int auto_increment primary key,
CodigoF int,
Nome varchar (60),
Localizacao varchar(100)
);

INSERT INTO Funcionarios (CodigoD, PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Telefone, Funcao, Salario)
VALUES
(1, 'João', 'Silva', 'Santos', '1990-05-15', '12345678901', '9876543', 'Rua das Flores, 123', '12345678', 'São Paulo', '(12)981267953', 'Gerente', 3000),
(2, 'Maria', 'Ferreira', 'Souza', '1995-02-28', '23456789012', '8765432', 'Avenida dos Alpes, 456', '23456789', 'Rio de Janeiro', '(11)988753105', 'Analista', 2500),
(1, 'Pedro', 'Oliveira', 'Santana', '1987-12-03', '34567890123', '7654321', 'Rua das Palmeiras, 789', '34567890', 'Belo Horizonte', '(31)984623501', 'Supervisor', 4000),
(3, 'Ana', 'Pereira', 'Ribeiro', '1998-11-20', '45678901234', '6543210', 'Alameda das Praias, 987', '45678901', 'Salvador', '(71)987462103', 'Assistente', 1500),
(2, 'Lucas', 'Santos', 'Ferreira', '1992-10-10', '56789012345', '5432109', 'Avenida dos Bosques, 321', '56789012', 'Porto Alegre', '(51)98456621', 'Desenvolvedor', 3500);

INSERT INTO Departamentos (CodigoF, Nome, Localizacao)
VALUES
(1, 'Recursos Humanos', 'Andar 3, Prédio A'),
(2, 'Marketing', 'Andar 2, Prédio B'),
(3, 'Finanças', 'Andar 4, Prédio C'),
(1, 'Tecnologia da Informação', 'Andar 5, Prédio A'),
(2, 'Vendas', 'Andar 1, Prédio B');


alter table Funcionarios add constraint CodigoD foreign key (Codigo) references Departamentos (Codigo);
alter table Departamentos add constraint CodigoF foreign key (Codigo) references Funcionarios (Codigo);

/* 1 */
select PrimeiroNome, SegundoNome From Funcionarios
order by SegundoNome;

/* 2 */
Select * From Funcionarios 
Order by Cidade;

/* 3 */
select * From Funcionarios
	Where Salario >= 1001
Order by PrimeiroNome, SegundoNome, UltimoNome;

/* 4 */
select
	DataNasci,
    PrimeiroNome
From
	Funcionarios
Order By
	DataNasci, PrimeiroNome;
    
/* 5 */
Select
	PrimeiroNome,
    SegundoNome,
    Telefone
From
	Funcionarios
Order By
	SegundoNome;
    
/* 6 */
Select
    Sum(Salario) as TotalPagar
From
	Funcionarios;
    
/* 7 */
Select 
	PrimeiroNome,
    SegundoNome,
    UltimoNome,
    Nome as Departamentos
From
	Funcionarios F
Join Departamentos D on (F.Codigo = D.Codigo);

/* 8 */
Select
	D.Nome as NomeDepartamento, F.PrimeiroNome as Gerente
From
	Departamentos D
Join Funcionarios F on (D.Codigo = F.Codigo)
WHERE 
	F.Funcao = 'Gerente';

/* 9 */
Select D.Nome as NomeDepartamento, SUM(F.Salario) as ValorFolhaPagamento
From Funcionarios F 
Join Departamentos D on F.CodigoD = D.Codigo
Group by NomeDepartamento;

/* 10 */
Select D.Nome as NomeDepartamento
From Departamentos D
Join Funcionarios F on (D.Codigo = F.Codigo)
Where F.Funcao = 'Supervisor';

/* 11 */
Select COUNT(*) as QuantidadeFuncionarios
From Funcionarios;

/* 12 */
Select Avg(Salario) 
From Funcionarios;

/* 13 */
Select D.Nome, MIN(F.Salario)
From Funcionarios F
Join Departamentos D on (F.CodigoD = D.Codigo)
Group By D.Nome;

/* 14 */
Select CONCAT(PrimeiroNome, ' ', UltimoNome) as NomeCompleto
From Funcionarios
Where SegundoNome Is Null or SegundoNome = '';

/* 15 */
Select D.Nome as NomeDepartamento, CONCAT(F.PrimeiroNome, ' ', F.SegundoNome, ' ', F.UltimoNome) as NomeFuncionario
From Funcionarios F
Join Departamentos D on F.CodigoD = D.Codigo
Order By D.Nome, NomeFuncionario;

/* 16 */
Select CONCAT(PrimeiroNome, ' ', SegundoNome, ' ', UltimoNome) as NomeFuncionario
From Funcionarios
Where Cidade = 'São José dos Campos' and Funcao = 'Programador';

/* 17 */
Select CONCAT(PrimeiroNome, ' ', SegundoNome, ' ', UltimoNome) as NomeFuncionario
From Funcionarios F
Join Departamentos D on (F.Codigo = D.Codigo)
Where D.Nome = 'Pessoal';

/* 18 */
Select F.PrimeiroNome, F.SegundoNome, F.UltimoNome, D.Nome as Departamento
From Funcionarios F
Join Departamentos D on (F.Codigo = D.Codigo)
Where F.Salario > (SELECT AVG(Salario) From Funcionarios)
Order By F.PrimeiroNome, F.SegundoNome, F.UltimoNome;

