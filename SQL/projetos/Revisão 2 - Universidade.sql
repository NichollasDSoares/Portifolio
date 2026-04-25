create database universidade;
use universidade;
create table DEPARTAMENTO(
 CodigoDP int auto_increment primary key, 
 NomeDP varchar (50), 
 TelefoneDP varchar (20), 
 CentroDP varchar (100));
 
create table  ALUNO(
NumerodeMatriculaA int auto_increment primary key, 
Departamento int references DEPARTAMENTO (CodigoDP),
Curso int references CURSO (CodigoC),
NomeA varchar (50), 
CPFA varchar (20), 
EnderecoA varchar (100), 
TelefonesA varchar (100), 
DatadeNascimentoA datetime, 
SexoA varchar (20));


create table CURSO(
CodigoC int auto_increment primary key,
Departamento int references DEPARTAMENTO (CodigoDP),
NomeC varchar (50), 
TipoC varchar (50), 
CoordenadorC varchar (50), 
ViceCoordenadorC varchar (50));

create table PROFESSOR(
CodigoPROF int auto_increment primary key,
Departamento int references DEPARTAMENTO (CodigoDP),
NomePROF varchar (50), 
CPFPROF varchar (20), 
TelefonePROF varchar (50));

create table DISCIPLINA( 
CódigoDC int auto_increment primary key,
Departamento int references DEPARTAMENTO (CodigoDP),
NomeDC varchar (50), 
Descriçao varchar (50), 
NumerodeCreditos varchar (50));

create table OFERTA(
CodigoOF int auto_increment primary key,
Professor int references PROFESSOR (CodigoPROF), 
HorarioOF time);

insert into DEPARTAMENTO(
NomeDP, 
TelefoneDP, 
CentroDP)
values
('Harvard','(12)99315-6126','Portaria 12'),
('Oxford','(12)93215-2125','Secretaria principal'),
('Stanford','(12)91537-8223','Sala 22'),
('Unip','(11)98866-1125','Hall 45'),
('USP','(12)99731-6447','Portaria 56');

insert into ALUNO(
NomeA, 
CPFA, 
EnderecoA, 
TelefonesA, 
DatadeNascimentoA, 
SexoA)
values
('João Pedro','201.705.110-12','Rua Grande, 08','(12)98314-8317','2006-03-12','M'),
('Nicolas Eduardo','012.627.118-60','Rua Morta, 12','(12)99501-9301','2006-12-22','M'),
('Eloah Rodrigues','825.663.084-11','Rua Perpetua, 76','(12)92013-9532','2006-07-17','F'),
('Maria Clara','166.578.173-47','Rua Ismenia, 87','(12)90032-2201','2006-04-20','F'),
('Geovanna Freitas','746.486.918-49','Rua Aquarius, 99','(12)83950-1147','2006-11-29','F');

insert into CURSO(
NomeC, 
TipoC, 
CoordenadorC, 
ViceCoordenadorC)
values
('Desenvolvimento de Sistemas','Tecnico','Roberto','Maria'),
('Medicina','Graduacao','Vinicius','Lucas'),
('Administração','Faculdade','Jacke','Paulo'),
('Engenharia','Mestrado','Antonio','Pedro'),
('Mecanica','','Pos Graduacao','Luiza');

insert into PROFESSOR(
NomePROF, 
CPFPROF, 
TelefonePROF)
values
('Neymar','913.001.553-70','(12)98292-1713'),
('Rogério','774.736.671-06','(12)33581-4243'),
('Claudinei','654.306.137-54','(12)98360-3121'),
('Marta','273.664.148-59','(12)9922-1183'),
('Ana','276.619.107-05','(12)98834-5159');

insert into DISCIPLINA(
NomeDC,
Descriçao, 
NumerodeCreditos)
values
('Banco de Dados','fundamentos da programação, 
gerenciamento de dados e sistemas de tomada de 
decisões para desenvolver um sistema com desempenho estratégico','4000:00'),
('Cardiologia','doenças que acometem o coração e os demais componentes do sistema circulatório','3000:00'),
('Logistica','atividades de transporte, armazenamento e distribuição de produtos e mercadorias','3500:00'),
('Robotica','design e construção de máquinas','5000:00'),
('cinematica','movimento dos corpos sem levar em conta as causas desse movimento','3200:00');

insert into OFERTA(
HorarioOF)
values
('40:00'),
('50:00'),
('60:00'),
('55:00'),
('45:00');

select * from DEPARTAMENTO;
select * from ALUNO;
select * from CURSO;
select * from PROFESSOR;
select * from DISCIPLINA;
select * from OFERTA;

select NomeDC, NomeDP, TelefoneDP, 
CentroDP from DISCIPLINA, DEPARTAMENTO;
select NomeA, CPFA from ALUNO;
select NomePROF, CPFPROF from PROFESSOR where CodigoPROF = 4;
select * from OFERTA;