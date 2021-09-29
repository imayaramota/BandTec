create database Netflix;
use Netflix;
create table series(
id int primary key, 
nome varchar(40),
diretor varchar(30)
);

insert into series (
id, nome, diretor)
value(1,"pll","amanda"),
(2,"suits","marcos"),
(3,"gg","bruna"),
(4,"vg","roberto");

select * from series;
select id,nome from series;
select * from series order by nome;
select * from series where diretor like "a%";

alter table series add column nota int;

update series set nota = 10 where id in (1,2);
update series set nota = 7 where id = 3;  

alter table series modify diretor varchar(35);

describe series;

delete from series where id=3; 

 create table filmes( 
 id int primary key auto_increment,
 nome varchar(40)
 );
 
 insert into filmes (nome)
 values ("viva la vida" ),
 ("madagascar"), 
