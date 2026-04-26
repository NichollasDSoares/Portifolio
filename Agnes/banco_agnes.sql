Create database agnes;
Use agnes;
Create table usuario(
Id_usuario Int auto_increment primary key,
nome_usuario varchar(100),
email_usuario varchar(100),
senha_usuario varchar(20),
foto_usuario varchar(80)
);
Create table administrador (
Id_adm int auto_increment primary key,
nome_afm varchar(100),
senha_adm varchar(20)
);
Create table projeto (
id_projeto int auto_increment primary key,
projeto varchar(80),
banco_de_midia varchar(80),
id_usuario int references usuario(id_usuario)
);