drop database biblioteca;
create database biblioteca;
use biblioteca;
create table Livros (
 livro_id INT primary key,
 titulo VARCHAR(100),
 autor_id INT references Autores(autor_id),
 quantidade INT);
create table Autores (
autor_id INT primary key,
Nome_autor VARCHAR(100)
);
create table Emprestimo (
emprestimo_id INT primary key,
livro_id INT references Livros(livro_id),
data_emprestimo date,
data_devolucao date);

insert into Livros (
livro_id,
 titulo,
 autor_id,
 quantidade
)
VALUES
(10,"o tempo não espera",33,104),
(11,"criatividade",44,93),
(12,"recordações penosas",44,58),
(13,"brilho do luar",33,247),
(14,"como os passaros",55,118);
insert into Autores (
autor_id,
Nome_autor
)
VALUES
(33,"Pedro Pessoa"),
(44,"Matheus Matos"),
(55,"Algusto Alcantra");
insert into Emprestimo (
emprestimo_id,
livro_id,
data_emprestimo,
data_devolucao
)
VALUES
(143,10,20230811,20230823),
(176,11,20230811,20230912),
(135,12,20230811,20231122),
(109,14,20230811,20231018);
/*3*/
select A.Nome_autor, count(L.livro_id) from Livros L
join(Autores A) on (A.autor_id = L.autor_id)
group by L.autor_id;
/*4*/
select sum(quantidade) from Livros;
/*5*/
select min(quantidade) from Livros;
/*6*/
select * from Livros
order by titulo;
/*7*/
select min(quantidade) from Livros;
/*8*/
select * from Emprestimo 
group by data_emprestimo -- data_devolucao --   /*só da certo se agrupar o data_devolucao junto :)(pelo menos foi a solução que eu encontrei) se não colocar exibe somente um registro*/
order by data_emprestimo;