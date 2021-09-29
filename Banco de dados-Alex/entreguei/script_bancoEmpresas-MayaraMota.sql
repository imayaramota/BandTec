create database SuperFacul;
use SuperFacul;
create table Empresa(
id int  primary key,
nome varchar(50),
responsavel varchar(40) );

alter table Empresa modify responsavel varchar(50);

insert into Empresa (
id, nome, responsavel)
values (1,"Fleury","Maria"),
(2,"C6", "Pedro"),
(3,"TIVIT","Camila"),
(4,"Safra","Natalia");

select * from Empresa;
select nome, responsavel from Empresa;

select * from Empresa order by nome;
select * from Empresa order by responsavel desc;

-- que tenha R 
select * from Empresa  where nome like '%r%';

select * from Empresa  where nome like 'c%';

-- penutima letra r // segunda letra   '_r%'
select * from Empresa where nome like '%r_';

update Empresa set  responsavel = "Paulo" where id= 2 ;

delete from Empresa where id = 3;

drop table empresa02;


