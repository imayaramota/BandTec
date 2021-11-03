create database Jogos;
use Jogos;

create table tb_time (
id_time int primary key auto_increment,
nome_time varchar(45),
fundacao date,
faturamento decimal(10,2),
quant_jogadores int,
check (quant_jogadores <=11)
);

insert into tb_time(nome_time, fundacao, faturamento, quant_jogadores)
values('Couves','2019-03-10',30000.00,11),
('Flamingo','1965-10-03',30000.00,11),
('Efan','1985-12-05',30000.00,11),
('Batan','1992-08-09',30000.00,11);
select * from tb_time;

create table tb_jogadores(
id_jogador int primary key auto_increment,
nome_jogador varchar (45),
data_nasc date,
salario decimal(10,2),
idade int,
check (idade > 17),
fk_time int not null,
foreign key (fk_time) references tb_time(id_time)
) auto_increment = 100;

insert into tb_jogadores(nome_jogador, data_nasc, salario, idade, fk_time)
values('Leandro','2003-03-10',5000.00,18,1),
('Caio','2000-10-03',4500.00,21,2),
('Alfredo','1998-12-05',4000.00,23,2),
('Bruno','1999-08-09',3700.00,22,3),
('Bianca','2002-10-09',6000.00,19,3),
('Alice','2001-08-09',5000.00,20,4),
('Fernanda','2001-08-09',5000.00,20,4);
select * from tb_jogadores;

create table tb_seguidores(
id_seguidor int primary key auto_increment,
nome_seguidor varchar(45),
nome_fc varchar(45),
data_fc date,
mesada decimal(10,2),
idade int,
check (idade > 12),
fk_jogador int,
foreign key (fk_jogador) references tb_jogadores(id_jogador)
) auto_increment = 1001;

insert into tb_seguidores(nome_seguidor, nome_fc, data_fc, mesada, idade,fk_jogador)
values('Maya','fc_lovers','2015-03-10',500.00,18,100),
('Alessandra','fc_lovess','2017-10-03',450.00,13,101),
('Carlos','fc_fut_love','2018-12-05',400.00,15,102),
('Robert','fc_fut','2019-08-09',370.00,14,103),
('Beatriz','fc_eterno','2020-11-09',640.00,15,104),
('Bianca','fc_amor','2020-04-09',630.00,16,104),
('Triz','fc_eter_amor','2020-10-12',600.00,16,105),
('Maria','fc_futzinho','2021-08-09',500.00,17,106);
select * from tb_seguidores;



update tb_time set nome_time = 'Heletan' where id_time= 3;
update tb_jogadores set nome_jogador = 'Caique' where id_jogador =1 ;

select sum(salario) as 'total de salario' from tb_jogadores;
select round(avg(salario),2) as 'media do salario' from tb_jogadores;

select sum(faturamento) as 'total de faturamento' from tb_time;
select round(avg(faturamento),2) as 'media do faturamento' from tb_time;

select sum(mesada) as 'total de mesada' from tb_seguidores;
select round(avg(mesada),2) as 'media mesada' from tb_seguidores;

select tb_jogadores.*, tb_seguidores.nome_seguidor as 'nome seguidor' from tb_seguidores inner join tb_jogadores on fk_jogador=id_jogador;
select tb_jogadores.*, tb_time.nome_time as 'nome time'  from tb_jogadores inner join tb_time on fk_time=id_time where id_time= 2;


select tb_jogadores.nome_jogador, tb_seguidores.nome_seguidor, tb_time.nome_time from tb_seguidores 
inner join tb_jogadores on fk_jogador=id_jogador
inner join tb_time on fk_time=id_time;








