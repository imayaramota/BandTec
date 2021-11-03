create database faculdade;
use faculdade;

create table tb_aluno(
id_aluno int primary key auto_increment,
nome_aluno varchar(45),
telefone varchar(45),
fk_projeto int,
fk_id_representante int,
foreign key (fk_id_representante) references tb_aluno (id_aluno)
);