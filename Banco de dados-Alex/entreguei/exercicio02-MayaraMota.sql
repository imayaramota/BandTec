create database Filmes;
use Filmes;
create table filmes(
idfilme int primary key,
titulo varchar(20),
genero varchar (30),
diretor varchar(50)
);
describe filmes; 
select * from filmes;

insert into filmes (
idfilme, titulo, genero, diretor)
values (01, 'Titanic', 'Romance', 'Sr.alguem');

insert into filmes (
idfilme, titulo)
values (02, 'Madagascar');

insert into filmes (
idfilme, titulo)
values (03, 'MonstrosSA');

insert into filmes (
idfilme, titulo)
values (04, 'SuperMan'),
(05, 'Friend'),
(06, 'Madagascar 2'),
(07, 'Madagascar 3'),
(08, 'Madagascar 4'),
(09, 'VivaLaVida'),
(10, 'Lalalend'),
(11, 'Batman');
select * from filmes;

update filmes set diretor='Sra. Alguem' where idfilme= 05;
update filmes set diretor='Sr. Alguem' where idfilme= 06;
update filmes set diretor='Sra. Alguem' where idfilme= 11;

update filmes set diretor='Sra. Alguem', genero= 'Acao' where idfilme= 04;
update filmes set diretor='Sr. Alguem', genero= 'Acao' where idfilme= 09;

update filmes set genero='Romance' where idfilme= 05;
update filmes set genero='Romance' where idfilme= 06;
select * from filmes;

update filmes set genero='Ficcao' where idfilme= 02;
update filmes set genero='Comedia' where idfilme= 11;

update filmes set diretor='Sra. Alguem' where idfilme= 02;

update filmes set genero= 'Comedia', diretor='Sra. Alguem' where idfilme= 02;

update filmes set genero= 'Terror', diretor= 'Sr.Alguem' where idfilme=03;

update filmes set genero= 'Comedia', diretor= 'Sra. Alguma' where idfilme=07;

update filmes set genero= 'Comedia', diretor= 'Sra. Alguem' where idfilme=08;

update filmes set genero= 'Comedia' where idfilme=07;

select * from filmes;

delete from filmes where idfilme = 06;
delete from filmes where idfilme = 11;
delete from filmes where idfilme = 05;

alter table filmes add column Ano int;
select * from filmes; 
describe filmes;

alter table filmes modify titulo varchar(50);
describe filmes;

alter table filmes drop Ano;

select titulo from filmes;
select diretor from filmes; 
select * from filmes order by diretor desc, titulo desc;
















