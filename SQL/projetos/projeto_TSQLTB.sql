-- PROJETO TSQL --
create database ProjetoTSQLTB;
use ProjetoTSQLTB;

-- Criando a tabela clientes -- 
create table Clientes(
	Nome varchar(100),
    Endereco varchar(100),
    Telefone varchar(25),
    Email varchar(100));

/*
--------------------------------------------------------------------------------------------------------------
ALTER TABLE- serve para realizar alterações nas tabelas
	-->ADD- Adicionar campos nas tabelas;
    --> DROP- Remover campos nas tabelas.
--------------------------------------------------------------------------------------------------------------
*/

alter table Clientes add DataNascimento DATETIME;
alter table Clientes add Codigo int auto_increment primary key;
-- para o workbench substitua IDENTITY(1,1) por AUTO_INCREMENT --

/*
--------------------------------------------------------------------------------------------------------------
Inserindo registros na tabela Clientes utilizando o comando INSERT / INTO
--------------------------------------------------------------------------------------------------------------
*/

insert into Clientes(
	Nome,
    Endereco,
    Telefone,
    Email,
    DataNascimento)
values
    ('João da Silva','Rua das Pedras, 132, São José dos Campos, SP','(12)39225-1520','joao@gamil.com','1987-12-18'),
    ('Maria Luiza das Dores','Rua do palmeiras, 122, São Luís, MA','(88)61527-3648','maria1@gmail.com','1999-10-09'),
    ('João Carlos Gomes','Rua das flores, 110, Recrio, RJ','(19)81726-3748','jocarlos6@gmail.com','2001-09-10'),
    ('Ivete Sangalo','Rua do Axé, 1123, Salvador, BA','(52)98765-1234','iv98@hotmail.com','1980-10-22'),
    ('Claudia Leite','Rua de Jesus, 100, Manaus, AM','(15)65748-3726','claudinha@hotmail','2007-03-08'),
    ('Mario Alberto','Rua da Maria, 55, Ceara, CE','(22)90283-6483','malberto@gmail.com','1995-08-09'),
    ('Victoria da Silva','Rua da mare, 23, Palmas, TO','(10)89283-7465','viczinha@gmail.com','1981-09-10'),
    ('Geovana Freitas','Avenida Napoleao Bonaparte, 111, Rio de Janeiro, RJ','(12)91111-1111','geovana@gmail.com','2006-05-14'),
    ('Maria Julia Freitas','Rua Independencia, 222, Vitória, ES','(12)92222-2222','majujulia@gmail.com','2000-04-29'),
    ('Nelson Tiago ','Avenida Napoleão Bonaparte, 333, Belo Horizonte, MG','(12)93333-3333','nelson@gmail.com','1982-05-31');
/*
--------------------------------------------------------------------------------------------------------------
TRABALHANDO COM O COMANDO SELECT

O Comando SELECT retorna as consultas registradas dentro do Banco de Dados. Como exemplo, vamos consultar
TODOS os registros da tabela Clientes utilizando * para retornar todos os campos da tabela Clientes.
--------------------------------------------------------------------------------------------------------------
*/

select*from Clientes;

/*
--------------------------------------------------------------------------------------------------------------
FUNÇÃO GETDATE / CURDATE

A função GETDATE() para o SQLServer / CURDATE() para o Workbench, usada para obter a data atual do sistema.
Você pode utilizar esse comando dentro de um contexto de consulta.
--------------------------------------------------------------------------------------------------------------
EXEMPLO:
*/

select 
	Codigo,
    Nome,
    curdate() as "Data Atual" -- GETDATE() as [Data Atual]
from
Clientes; 
/*
--------------------------------------------------------------------------------------------------------------
Podemos adicionar ou substrair valores diretamente da função usando o peradores aritméticos.
--------------------------------------------------------------------------------------------------------------
EXEMPLO:
*/

select
	Codigo,
    Nome,
    Email,
    curdate() -5 as "Data Atual - Cinco Dias",-- GETDATE() -5 as [Data Atual - Cinco Dias],
    curdate() as "Data Atual", -- GETDATE() as [Data Atual],
    curdate() +5 as "Data Atual + Cinco Dias" -- GETDATE() + 5 AS [Data Atual + Cinco dias]
from 
Clientes;

/*
--------------------------------------------------------------------------------------------------------------
FILTRO DE REGISTRO COM O COMANDO WHERE 
Podemos filtrar os registros que desejamos visualizar com base em determinados critérios que atendem à necessidade
de negócio utilizando o comando WHERE. Com ele é possivel determinar o que desejamos visualizar, comparando os campos com determinadas
condições estabelecidas, usando operadores de comparação
(>,>,>=,<=).
--------------------------------------------------------------------------------------------------------------
EXEMPLO:
*/

select 
	Codigo,
    Nome,
    Endereco,
    Telefone, 
    Email,
    DataNascimento
from 
	Clientes
where
	Codigo>=6;

/*
--------------------------------------------------------------------------------------------------------------
OPERADOR AND
Podemos utilizar o operador AND para limiatrou buscar pesquisas entre um registro e outro.
Exemplo:
Para podermos realizar uma seleção de clientes que possui Codgo maior que 2 e a data de nascimento maior que 10/11/1987
devemos utilizar:
--------------------------------------------------------------------------------------------------------------
*/

select 
	Codigo,
    Nome,
    Endereco,
    Telefone,
    Email,
    DataNascimento
from 
	Clientes
where 
	Codigo > 2 and DataNascimento > '19871110';

-- Queremos nesse código selecionar os registros que tem como código maior que 2 e DataNascimento maior que 10/11/1987

/*
--------------------------------------------------------------------------------------------------------------
OPERADOR OR 
Assim como o AND, o operador OR serve para retornar uma lista de registros que satifaz uma ou outra condição.
--------------------------------------------------------------------------------------------------------------
*/

/*
OPERADOR BETWEEN
Podemos fazer comparações de faixas de dados com o comando BETWEEN  utilizando um valor inicial e um valor final de comparações. Para visualizar oss registros
com o campo código maor ou igual a 4 e com a DataNascimento entre 1975 e 1985, vamoss utilizar:
*/
select * from  Clientes
	where 
Codigo >= 4 and DataNascimento between '19750101' and '19850101';

select 
	Codigo,
    Nome,
    Endereco,
    Telefone,
    Email,
    DataNascimento
from 
	Clientes
where 
	Codigo > 7 or DataNascimento > '19890708';
    
-- Filtro de registros que lista o código maior que 7 ou DataNascimento > 08/07/1989
/*
--------------------------------------------------------------------------------------------------------------
OPERADOR LIKE
Você pode utilizar o operador LIKE em seus códigos para realizar pesquisas aproximadas em campos de caracteres.
Exemplo:
Para consultar todos os registros da tabela com o primeiro caractere do campo Nome igual a "M" iremos utilizar.
--------------------------------------------------------------------------------------------------------------
*/

select 
	Codigo,
    Nome,
    Endereco,
    Telefone,
    Email,
    DataNascimento
from 
	Clientes
where 
	Nome like 'm%';
/*
--------------------------------------------------------------------------------------------------------------
O caractere "%" permite realizar a consulta aproximada. Podemos  usar o "%" para pesquisar o começo mas também
o final de string. 
--------------------------------------------------------------------------------------------------------------
*/

select * from Clientes where Nome like '%o';

/*
--------------------------------------------------------------------------------------------------------------
Comando TOP para SSMS / LIMIT (no Workbench)
O comando TOP permite limitar o número de registros que serão mostrados pela instrução SELECT, a qual recebe 
como argumento único o número de registros a serem msotrados pela query (instrução).
--------------------------------------------------------------------------------------------------------------
*/
/*
NO SQL SERVER SERIA:
select 
	top 5,
	Codigo,
	Nome,
	Telefone,
	DataNascimento
from 
	Clientes;
*/

-- No Workbench seria: --
SELECT
	Codigo,
	Nome,
	Telefone,
	DataNascimento
FROM 
	Clientes
LIMIT 5;

/*
--------------------------------------------------------------------------------------------------------------
ORDENAÇÃO DE REGISTROS COM O ORDER BY
Para dispor os registros *em uma determninada ordem, utilizamos o comando ORDER BY.
Ele espera apenas uma indicação das colunas em que você deseja ordenar a seleção desejada.
EXEMPLO:
Para colocar os registros da tabela Clientes por ordem alfabética do campo nome, utilizamos: 
-------------------------------------------------------------------------------------------------------------- */

select 
	Codigo, 
    Nome,
    Endereco,
    Telefone,
    Email,
    DataNascimento
from 
	Clientes
order by 
	Nome;

/*
--------------------------------------------------------------------------------------------------------------
Atualização dos registros com o comando UPDATE
O comando UPDATE permite atualizar registros em tabelas do banco de dados, alterando o valor de uma ou mais colunas.
-------------------------------------------------------------------------------------------------------------- */

update 
	Clientes
set 
	Nome='Karina Bach',
	Endereco='Avenida Brasil, 251, Rio de Janeiro, RJ',
    Telefone='(21) 2333-9876',
    DataNascimento = '20000724'
where 
	Codigo = 4;
    
-- Para verficar se alterações foram modificadas -- 
select*from Clientes;


alter table Clientes add CEP varchar(9);
/*--------------------------------------------------------------------------------------------------------------
Ao executar o comando SELECT * FROM Clientes, podemos verificar que a coluna CEP está com o identificador "NULL"
em todos os registros da tabela, pois não realizaremos nenhum UPDATE na coluna recém-criada. Para fins de relatório 
e de apresentação de dados mais formais, é possivel trocar o indicador "NULL" por outro mais adequado.
-------------------------------------------------------------------------------------------------------------- */

/*--------------------------------------------------------------------------------------------------------------
Função ISNULL / IFNULL (para o workbench)
Esta função é utilizada para tratar campos com valores "nulos", seja em consultas ou em trechos de código SQL.
Vamos adicionar o campo CEP na tabela Clientes para verficiar o seu funcionamento.
-------------------------------------------------------------------------------------------------------------- */
select 
	Codigo,
    Nome, 
    Endereco,
    Telefone,
    Email,
    DataNascimento,
    ifnull (CEP, 'Sem CEP') as CEP -- Para o SQL Server utilizar o insull
from
	Clientes;
    
/*-------------------------------------------------------------------------------------------------------------- */
update 
	Clientes
set 
	CEP='12200-099'
where
	Codigo = 6;
/*-------------------------------------------------------------------------------------------------------------- */

/*-------------------------------------------------------------------------------------------------------------- 
Exclusão de registros com o comando DELETE

Para excluir um registro que foi inserido em uma tabela do SQL SERVER, devemos utilizar o comando Delete,
que assim como o comando INSERT e UPDATE, pode se utilizar a cláusula WHERE para filtrar os dados a serem excluídos.

NO SQL SERVER:
delete 
	Clientes
where
	Codigo = 6;
-------------------------------------------------------------------------------------------------------------- */

-- NO WORKBENCH -- 
delete from 
	Clientes
where 
	Codigo = 6;

/*-------------------------------------------------------------------------------------------------------------- 
Comando TRUNCATE TABLE
Para realizar a EXCLUSÃO de TODOS os registros de uma tabela, utilizamos o comando TRUNCATE TABLE. Para exluir TODOS
os registros de uma tabela, podemos utilizar esse comando.
-------------------------------------------------------------------------------------------------------------- */
truncate table Clientes;


-- 2°BIMESTRE -- 

-- Criando a tabela Produtos -- 
create table Produtos (
	Codigo int auto_increment primary key,
    Descricao varchar(150),
    ValorVenda numeric(18,2),
    Ativo bit default(1));
    
/*
-------------------------------------------------------------------------------------------------------------------
Para atender ao requisito de valor padrão no campo "Ativo", foi utilizada a instrução DEFAULT, em que foi informado o valor 1.
A propriedade INDENTITY já utilizamos anteriormente e o campo ValorVenda está como NUMERIC que aceita dois argumentos, 
onde a primeira parte é o número de casas antes da v´rigula e a segunda parte é o número de casas decimais depois da vírgula.
-------------------------------------------------------------------------------------------------------------------
*/

-- Criando a tabela Vendas -- 
create table Vendas (
	Codigo int auto_increment primary key,
    Cliente int references Clientes(Codigo),
    Produto int,
    DataVenda datetime default (curdate()),
    Quantidade int,
    ValorVenda numeric(18,1));
    
/*
-------------------------------------------------------------------------------------------------------------------
A instrução REFERENCES recebe como argumento a tabela e o campo em que a respectiva chave primária foi definida.
Desta forma, todos os valores atribuídos aquela coluna devem ter uma correspndência em outra tabela.
O campo DataVenda foi definida como DATETIME e com a instrução DEFAULT atribuindo o valor da função GETDATE
que retorna a data atual do dia.
-------------------------------------------------------------------------------------------------------------------
*/
-- Vamos criar uma outra maneira de fazer o relacimento da tabela VENDAS com a tabela PRODUTOS -- 

alter table Vendas add constraint fkProdutos foreign key (Produto) references Produtos(Codigo);
-- PRIMEIRO PARENTESES É COMO EU QUERO QUE FIQUE, O SEGUNDO PARENTESES É COMO ESTA ORIGINALMENTE NA OUTRA TABELA -- 

/*Sempre que criamos uma chave estrangeira, o SQL Server cria um constraint´para assegurar a integridade da chave estrangeira. 
Quando criamos a chave estrangeira de Clientes na criação da tabela usando apenas a innstrução REFERENCES, a criação 
CONSTRAINT foi ímplicita com um nome gerdo automaicamente.
Quando criamos o comando ALTER TABLE podemos atribuir um novo explíto a essa CONSTRINT*/

-- INSERÇÃO DE REGISTROS NAS TABELAS PRODUTO E VENDAS -- 
insert into Produtos (
Descricao, ValorVenda, Ativo ) 
values
('Em Busca do Tempo Perdido', 30.87,1),
('Ulysses ',21.09,1),
('Dom Quixote',219.43,1),
('O Grande Gatsby',111.98,1),
('Cem Anos de Solidão',12.34,1),
('Moby Dick',128.94,1),
('Guerra e Paz',37.02,1),
('Lolita',456.83,1),
('A cabana ',23.97,1),
('As Mil e Uma Noites',123.90,1);

select*from Produtos;

insert into Vendas
(Cliente, Produto, DataVenda, Quantidade, ValorVenda) 
values
(3,5,'2022-10-08',43,177.45),
(1,9,'2009-08-07',52,123.09),
(4,10,'2000-05-10',51,53.21),
(2,2,'1998-12-13',123,12.09),
(6,3,'2023-10-04',87,156.87),
(5,4,'2019-11-08',345,123.53),
(8,1,'2017-03-09',2,75.98),
(7,6,'2016-01-12',256,54.98),
(10,8,'2013-09-17',987,43.29),
(9,7,'2011-05-10',100,126.02);
select * from Vendas; 

-- CRIANDO A RELAÇÃO ENTRE AS TABELAS --
/*
1- Clicar na aba de Banco de Dados (Database) do lado esquerdo;
2- Abrir a base de dados desejada;
3- Clicar com o botão direito do mouse na aba Diagrama de Banco de Dados (Database Diagrams);
4- Novo Diagrama de Banco de Dados (New Database Diagram);
5- Escolha todas as tabelas e insira;
6- Close;
*/

-- TEORIA DOS CONJUNTOS E OS JOINS DE BANCO DE DADOS -- 
/*-------------------------------------------------------------------------------------------------------------------
O JOIN é uma cláusula da linguagem SQL que permite criar consultas combiando resultados de uma ou várias colunas de cada tabela. 
Quando se fala em uma tabela, a referência é feita a casos específicos chamos de JOIN de uma tabela com ela mesmo.
-------------------------------------------------------------------------------------------------------------------*/
-- COMANDO INNER JOIN -- 
/*O INNER JOIN consulta os registros de duas tabelas, verificando todos os registros de cada uma e selecionando
os que têm valores em comum, com base no critério estabelecido no JOIN.
Neste banco de dados, criamos três tabelas, sendo Clientes, Produtos e Vendas. Estabelecemos dois relacionamentos entre Clietes e Vendas, e
entre as tabelas Produtos e Vendas, desta forma não é possivel inserir vendas com Clientes que não existem, mas é possivel que existam Clientes que não realizam Vendas.
Para listar o nome de cada Cliente e DataVenda também de cada cliente, podemos usar o comando INNER JOIN>
 -- EXEMPLO: -- */
 select 
	Nome,
    DataVenda
from 
	Clientes C
inner join Vendas V on (C.Codigo = V.Codigo);
/*-------------------------------------------------------------------------------------------------------------------
O INNER JOIN é considerado o tipo de JOIN padrão. Podemos executar o mesmo comando anterior com outra sintaxe
eliminando o INNER JOIN e obteremos o mesmo resultado.
  select 
	Nome,
    DataVenda
from 
	Clientes C
inner join Vendas V on (C.Codigo = V.Codigo);
-------------------------------------------------------------------------------------------------------------------*/
-- Com o INNER JOIN estamos trazendo a interação dos registros da tabela Clientes (ou conjunto A) e da tabela Vendas (conjunto B). --
---------------------------------------------------------------------------------------------------
/*
COMANDO LEFT JOIN

O comando LEFT JOIN, entre duas tabelas hipotéticas A e B, vai trazer todos os registros da tabela A independente do critério estabelecido no JOIN. Ou seja, se a tabela A contém 100 registros e nenhum deles tem um correspondente na outra, baseado no critério de comparação, ainda assim vai trazer 100 registros, porém onde a correspondência existir, os dados correspondentes serão resgatados.
*/
SELECT
	Nome,
	DataVenda
FROM
	Clientes C
LEFT JOIN Vendas V ON (C.Codigo = V.Cliente);
---------------------------------------------------------------------------------------------------
/*
COMANDO RIGHT JOIN

O comando RIGHT JOIN produz um resultado semelhante ao LEFT JOIN, porém com a inversão da comparação.
Exemplo: Em nosso banco de dados criamos uma tabela chamada PRODUTOS que se relaciona com a tabela VENDAS. Podemos listar a descrição de todos os produtos e a data da venda de cada um deles junto com os produtos que não realizaram vendas através de uma query.
*/

SELECT
	Descricao,
	DataVenda
FROM
	Vendas V
RIGHT JOIN Produtos P ON (P.Codigo = V.Produto);
/*---------------------------------------------------------------------------------------------------
COMANDO CASE

O comando CASE avalia uma lista de condições verificadas em um ou mais campos e retorna apenas um (1) de vários (n) resultados possíveis.
SINTAXE:

SELECT
	CASE	
		WHEN <EXPRESSÃO LÓGICA 1>
			THEN <RESULTADO DA EXPRESSÃO 1>
		WHEN <EXPRESSÃO LÓGICA 2>
			THEN <RESULTADO DA EXPRESSÃO 2>
	ELSE
		<RESULTADO FORA DAS CONDIÇÕES LISTADAS>
	END
FROM
	<TABELA>
*/
SELECT
	Codigo,
	Descricao,
	CASE
		WHEN ValorVenda BETWEEN 0 AND 100
			THEN 'Bronze'
		WHEN ValorVenda BETWEEN 101 AND 200
			THEN 'Prata'
		WHEN ValorVenda BETWEEN 201 AND 300
			THEN 'Ouro'
		WHEN ValorVenda > 300
			THEN 'Platina'
	ELSE
		'Não Classificado'
	END AS Tipo_do_Produto
FROM
	Produtos;
/*---------------------------------------------------------------------------------------------------
FUNÇÃO DE AGREGAÇÃO 
As funções de agrgação realizam cálculos com um conjunto de valores determinados pela condição estabelecida
em cláusula GRUOP BY, retornando um valor único para aquele conjunto. Para que você possa melhor a utilização das funções de agragação,
vamos utilizar diversos exemplos.alter

Uso do comando COUNT 
A função COUNT pode ser usada para contar o número de registros estabelecidos em uma condição GROUP BY.
EXEMPLO:
Para contar o número de compras realizadas por cada cliente em um determinado dia, podemos usar o seguinte
comando:
---------------------------------------------------------------------------------------------------*/
select 
	Nome, 
    DataVenda,
    count(*) as TotalVendas
from Clientes C
inner join Vendas V on (V. Cliente = C.Codigo)
group by
	Nome, DataVenda;
/*---------------------------------------------------------------------------------------------------
SOMA DOS VALORES COM SUM

A função SUM soma valores númericos em um conjunto de valores estabelecidos pelo GROUP BY.
A tabela VENDAS tem um campo determinado "ValorVenda", que armazena o valor pelo qual o produto foi vendido.
Podemos executar o seguinte scrip para conhecer o valor vendido para cada cliente.
---------------------------------------------------------------------------------------------------*/
select 
	Nome,
    DataVenda,
    SUM(ValorVenda) as TotalVendas
from 
	Clientes C 
inner join Vendas V on (V. Cliente = C. Codigo)
group by
	Nome, DataVenda;
    
    -- OUTRA FORMA--
select 
	Nome,
    P. Descricao,
    V. ValorVenda as TotalVendas,
    P. ValorVenda as ValorVendaProduto,
    (V. ValorVenda - P.ValorVenda) as Descricao
from
	Clientes C
inner join Vendas V on (V. Cliente = C. Codigo)
inner join Produtos P on (V. Produto = P. Codigo)
order by Nome;
/*---------------------------------------------------------------------------------------------------
A query anterior retorna uma listagem de cada um dos clientes e os produtos comprador por eles, assim como o valor venda,
o valor de venda cadastrado na tabela produtos (coluna "ValorVendaProduto") e o cálculo do desconto ofertado ao cliente, que é a diferença entre
o valor da venda e o valor de venda cadastrado na tabela produtos.

Para calcularmos o total de vendas e o total de desconto para cada cliente, podemos executar: 
---------------------------------------------------------------------------------------------------*/
select 
	Nome,
    SUM(V. ValorVenda) as TotalVendas,
    SUM(quantidade * P.ValorVenda) as ValorVendaProduto,
    SUM(quantidade * V.ValorVenda) - SUM(quantidade * P.ValorVenda) as Desconto
from 
	Clientes C
inner join Vendas V on (V.Cliente = C. Codigo)
inner join Produtos P on (V.Produto = P.Codigo)
group by Nome
order by Nome; 

/*
COMANDO AVG:
O comando AVG tira a média aritmética do ValorVenda da tabela vendas utilizamos:
*/
SELECT	
	avg (ValorVenda) as MediaValorVenda
from 
	Vendas;
/*---------------------------------------------------------------------------------------------------
Outra função de agregação é a instução MIN e MAX, onde:
	-> MIN - Valor MÍNIMO de um conjunto de valores.
	-> MAX - Valor MÁXIMO de um conjunto de valores.
---------------------------------------------------------------------------------------------------*/

-- UTILIZAÇÃO DO MIN --
SELECT	
	Nome,
	MIN(ValorVenda) as MenorVenda
from 
	Clientes C
inner join Vendas V on (C.Codigo = V.Codigo)
group by C.Nome;

-- UTILIZAÇÃO DO MAX -- 
select 
	Nome,
	MAX(ValorVenda) as MaiorVenda
FROM
	Clientes C
inner join Vendas V on (C.Codigo = V.Codigo)
group by C.Nome;

/* 
CRIAÇÃO DAS VIEWS
Uma VIEW é uma tabela criada "virtualmente", através de uma query, que define seu conteúdo e metadados.
A VIEW tem uma série de propósitos, como por exemplo, fazer com que todos os desenvolvedores utilize a mesma 
regra de negócio ao acessar um SET de dados ou, por questoes de segurança, limitar o acesso aos objetos
propriamente ditos para determinados usuários, delegando a eles acesso apenas as VIEWS.

A sintaxe para a criação de VIEW é bastante simples. Basta utilizar o comando CREATE VIEW informando como 
argumento o nome da VIEW a ser criada, o prefixo AS e a query definirá a consulta a ser realizada.

EXEMPLO: Para criar uma VIEW listando apenas os clientes ativos, podemos utilizar:*/

CREATE VIEW vwClientesAtivos
	AS 
		SELECT
			Codigo,
			Descricao,
			ValorVenda,
			Ativo
FROM 
	Produtos
WHERE 
	Ativo = 1;
	
/* Para acessar a VIEW criada utilizamos: */

SELECT Codigo, Descricao, ValorVenda, Ativo
	FROM vwClientesAtivos;
/-----------------------------------------------------------------------------------------------------------------------------------------/


/*OBS: AS ATIVIDADES ABAIXO SÃO BASEADAS NAS ULTIMAS ATIVIDADES QUE FIZEMOS SOBRE A BIBLIOTECA E SOBRE A ESCOLA.*/
/*Crie uma VIEW para total de emprestimo por livro (COUNT E 1 INNER JOIN)*/
/*
CREATE VIEW TotalEmprestimosPorLivro 
	AS
		SELECT
			L.Livro_Id,
			L.Titulo,
    COUNT(E.Emprestimo_Id) AS Total_Emprestimos
FROM Livros L
LEFT JOIN Emprestimos E ON L.Livro_Id = E.Livro_Id
GROUP BY 
	L.Livro_Id, 
	L.Titulo;
select * from TotalEmprestimosPorLivro;
*/

/*Crie uma VIEW para livros disponiveis (COUNT E 1 INNER JOIN)*/
/*
CREATE VIEW LivrosDisponiveis 
	AS
		SELECT
			L.Livro_Id,
			L.Titulo,
			L.Quantidade - COUNT(E.Emprestimo_Id) AS Quantidade_Disponivel
FROM Livros L
LEFT JOIN Emprestimos E ON (L.Livro_Id = E.Livro_Id)
GROUP BY 
	L.Livro_Id, 
	L.Titulo, 
	L.Quantidade;
select * from LivrosDisponiveis;
*/

/*Crie uma VIEW para emprestimo atrasado (1 INNER JOIN)*/
/*
CREATE VIEW EmprestimosAtrasados 
	AS
		SELECT
			E.Emprestimo_Id,
			L.Titulo,
			E.Data_Emprestimo,
			E.Data_Devolucao
FROM Emprestimos E
INNER JOIN Livros L ON (E.Livro_Id = L.Livro_Id)
WHERE E.Data_Devolucao < NOW();
select * from EmprestimosAtrasados;
*/

/*Crie uma VIEW para Média de nota por aluno e disciplina (2 INNER JOIN)*/
/*
CREATE VIEW vwMediaNotasPorAlunoDisciplina 
	AS
		SELECT 
			A.Aluno_id,
			A.Nome AS Aluno,
			D.Disciplina_id,
			D.Nome AS Disciplina,
			AVG(N.Nota) AS Media_Nota
FROM 
	Aluno A
INNER JOIN Notas N ON (A.Aluno_id = N.Aluno_id)
INNER JOIN Disciplinas D ON (N.Disciplina_id = D.Disciplina_id)
GROUP BY 
	A.Aluno_id, 
	D.Disciplina_id;

select * from vwMediaNotasPorAlunoDisciplina;
*/


/*Crie uma VIEW para detalhes de alunos com melhor nota por disciplina (2 INNER JOIN)*/
/*
CREATE VIEW MelhoresNotasPorDisciplina 
	AS
		SELECT 
			D.Disciplina_id,
			D.Nome AS Disciplina,
			A.Aluno_id,
			A.Nome AS Aluno,
			N.Nota AS Melhor_Nota
FROM 
	Disciplinas D
INNER JOIN Notas N ON (D.Disciplina_id = N.Disciplina_id)
INNER JOIN Aluno A ON (N.Aluno_id = A.Aluno_id)
WHERE N.Nota = (
    SELECT MAX(Nota) FROM Notas 
    WHERE Disciplina_id = D.Disciplina_id);
select * from MelhoresNotasPorDisciplina;
*/

/*Cire uma VIEW para detalhes de alunos com pior nota por disciplina (2 INNER JOIN)*/
/*
CREATE VIEW PioresNotasPorDisciplina 
	AS
		SELECT 
		D.Disciplina_id,
		D.Nome AS Disciplina,
		A.Aluno_id,
		A.Nome AS Aluno,
		N.Nota AS Pior_Nota
FROM 
	Disciplinas D
INNER JOIN Notas N ON (D.Disciplina_id = N.Disciplina_id)
INNER JOIN Aluno A ON (N.Aluno_id = A.Aluno_id)
WHERE N.Nota = (
    SELECT MIN(Nota) FROM Notas 
    WHERE Disciplina_id = D.Disciplina_id);
select * from PioresNotasPorDisciplina;
*/

/*-----------------------------------------------------------------------------------------------------------------------------------------------------------*/
/*CRIAÇÃO DAS TRIGGERS
Trigger, do inglês, significa gatilho. No contexto de banco de dados, triggers são procedimentos armazenados disparados por eventos de atualização, 
exclusão ou inserção em tabelas do SGBD.

Para entender melhor como aplicar trigger em nosso exemplo, vamos acompanhar o enunciado.

Criar tabela denominada ProdutoHistorico, que deve armazenar todas as alterações realizadas na tabela produtos.

Primeiramente vamos criar a tabela ProdutoHistorico, que deve ter a mesma estrutura da tabela Produtos, 
com um campo adicional denominado DataAlteracao que vai armazenar a data da operação e um campo TipoAlteracao que vai armazenar um string. 
Na atualização é preciso diferenciar os valores como estavam antes do UPDATE e como ficaram depois do UPDATE. Vamos observar: */

Create Table ProdutoHistorico (
Codigo int not null,
Descricao varchar(150) null,
ValorVenda numeric(18,2) null,
Ativo BIT null,
DataAlteracao datetime,
TipoAlteracao varchar(100));

/*
Agora, vamos criar a trigger propriamente dita para armazenar as atualizações
*/

create trigger UpdateProdutos on Produtos
	for Update as
    Begin
		set nocount on
        
        Insert ProdutoHistorico(Codigo, Dscricao, ValorVenda, Ativo, DataAlteracao, TipoAlteracao)
        select Codigo, Dscricao, ValorVenda, Ativo, curdate(), 'Update OLD' from Deleted
        
        Insert dbo.ProdutoHistorico(Codigo, Dscricao, ValorVenda, Ativo, DataAlteracao, TipoAlteracao)
        select Codigo, Dscricao, ValorVenda, Ativo, curdate(), 'Update NEW' from Inserted
	End

/*
Observe que a Trigger deve referenciar sempre uma tabela, portanto a declaração de criação do procedimento:

	create trigger UpdateProdutos on Produtos.
    
O argumento FOR UPDATE determina que a trigger captura apenas os eventos de atualização de dados. Os eventos de inserção e exclusão não serão capturados pela trigger.

No corpo da trigger, no contexto de UPDATE, o desenvolvedor tem acesso a duas tabelas virtuais, sendo INSERTED e DELETED

	--> INSERTED - É um SET de dados com os novos valores.
    --> DELETED - É um SET de dados com os valores antigos
    
Agora, vamos testar o funcionamento dessa trigger. Vamos executar o UPDATE apresentado a seguir:
*/

Update Produtos
	SET Descricao = 'T-SQL com Microsoft SQL Server 2012 Express'
    WHERE Codigo = 4
    
Update Produtos
	SET ValorVenda = 104.90
    WHERE Codigo = 4    
    
/*
Agora, vamos executar essa consulta na tabela ProdutoHistorico
*/

select * from ProdutoHistorico

/*
Algumas opções de eventos que pode ser aplicado nas TRIGGERS:
	--> BEFORE INSERT (ANTES DE INSERIR)
    --> AFTER INSERT (DEPOIS DE INSERIR)
    --> BEFORE UPDATE (ANTES DE ATUALIZAR)
    --> AFTER UPDATE (DEPOIS DE ATUALIZAR)
    --> BEFORE DELETE (ANTES DE APAGAR)
    --> AFTER DELETE (DEPOIS DE APAGAR)
    
*/