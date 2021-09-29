create database escola;
use escola;
create table alunos(
id int primary key,
nome varchar(50),
sobrenome varchar(40)
);

select * from alunos;
alter table alunos modify sobrenome varchar(30);

insert into alunos(
id, nome, sobrenome)
values (1, "mariana", "mat"),
(2, "carlos", "quim"),
(3, "bernardo", "fisica"),
(4, "arthur", "port");

select nome, sobrenome from alunos;

update alunos set nome = "carmen" where id= 2;

select * from alunos where nome like "%a";
select * from alunos where nome like "m%";
select * from alunos where nome like  "_a%";
select * from alunos where nome like "%d_";
select * from alunos where nome like "%a%";

select * from alunos order by nome;
select * from alunos order by nome desc;

delete from alunos where id= 4;

drop table alunos; 

