-- Mayara Mota
create database Canal;
use Canal;

create table programa(
idPrograma int primary key,
nome varchar(40),
genero varchar(30),
emissora varchar(20)
);

insert into programa (
idPrograma, nome, genero, emissora)
values (3,"carrosel","novela","sbt");

-- (4,"verdades secretas","novela","globo"),
-- (5, "eliana","reportagem","sbt"),
-- (6,"dez mandamentos","historia","record"),
-- (7,"jaco","novela","record"),
-- (8,"jornal da manha","jornal","record"),
-- (9,"jornal nacional","jornal","globo");

-- Mayara Mota  ra:01212163 questão 1
select * from programa;																		

-- Mayara Mota 2
select nome, emissora from programa;

-- Mayara Mota 3
select * from programa where emissora ="sbt";

-- Mayara Mota 4 
select * from programa where genero= "jornal";

-- Mayara Mota 5
select genero from programa;

-- Mayara Mota 6
select * from programa order by nome desc;

-- Mayara Mota 7
select * from programa where nome like "%a";

-- Mayara Mota 8 
select * from programa where nome like "e%"; 

-- Mayara Mota 9
select * from programa where nome like "_e%";

-- Mayara Mota 10
select * from programa where nome like "%a_";

-- Mayara Mota 11
update programa set emissora= "disney" where idPrograma=1;
select * from programa;

-- Mayara Mota 12
delete from programa where idPrograma=3;
select * from programa;

-- Mayara Mota 13
alter table programa modify genero varchar(50);
describe programa;

-- Mayara Mota 14
drop table programa;

