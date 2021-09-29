create database Atleta;
use Atleta;

create table tb_atleta(
id_atleta int primary key auto_increment,
nome_atleta varchar(40),
modalidade varchar(40),
qtd_medalhas int
);

insert into tb_atleta(
nome_atleta, modalidade, qtd_medalhas)
values('Mariana','Natação',5),
('Marcos','Natação',4),
('Natalia','Natação',2),
('Renan','Volei',1),
('Diego','Volei',3),
('Ana','Golf',4),
('Carlos','Golf',1);

select * from tb_atleta;
select nome_atleta, qtd_medalhas from tb_atleta;
select * from tb_atleta where modalidade='natação';
select * from tb_atleta order by modalidade;
select * from tb_atleta order by qtd_medalhas desc;
select * from tb_atleta where nome_atleta like '%s%';
select * from tb_atleta where nome_atleta like 'm%';
select * from tb_atleta where nome_atleta like '%o';
select * from tb_atleta where nome_atleta like '%r_';

drop table tb_atleta;




