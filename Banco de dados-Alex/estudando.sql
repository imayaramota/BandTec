create database Escola;
Use Escola;
create table Aluno (
id int primary key,
nome varchar(50),
disciplina varchar(40)
);
select * from Aluno;

insert into Aluno (
id, nome, disciplina)
values (1, "Amanda", "Matematica"),
(2, "Bianca", "Portugues"),
(3, "Carlos", "Quimica");

select nome, disciplina from Aluno;

update Aluno set nome= "Beatriz" where id = 2;

alter table Aluno modify disciplina varchar(30);

select * from Aluno where nome like "%a%";
select * from Aluno where nome like "c%";
select * from Aluno where nome like "_a%";
select * from Aluno where nome like "%d_";
select * from aluno where nome like "%s";

delete from Aluno where id = 2;

drop table Aluno;




