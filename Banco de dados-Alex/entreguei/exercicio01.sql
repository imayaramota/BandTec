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




