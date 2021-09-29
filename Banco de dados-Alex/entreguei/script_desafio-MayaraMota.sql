create database Olimpiedas;
use Olimpiedas;

create table pais(
id_pais int primary key auto_increment,
nome_pais varchar(40),
continente varchar(40),
idioma varchar(40),
presidente varchar (40)
);

create table atleta(
id_atleta int primary key auto_increment,
nome_atleta varchar(40),
idade int,
etnia varchar(40),
altura float,
fk_pais int, 
foreign key (fk_pais) references pais (id_pais) 
);

insert into pais(
nome_pais, continente, idioma, presidente)
values 
("Eua","America do Norte","Ingles","Jhow"),
("Brasil","America do Sul","Portugues","Dilma"),
("Japao","Asia","Japones","Carlos");

select * from pais;
select * from atleta;

insert into atleta(
nome_atleta, idade, etnia, altura, fk_pais)
values 
("Mayara",18,"preta",1.67,2);

select atleta.*, pais.nome_pais, pais.idioma from atleta inner join pais on atleta.fk_pais = pais.id_pais;

select atleta.nome_atleta, atleta.altura, pais.nome_pais from atleta inner join pais on atleta.fk_pais = pais.id_pais;

create table modalidade(
id_modalidade int primary key auto_increment,
nome_modalidade  varchar(40),
ano_criacao int,
quantidade_jogadores int,
area_de_pratica varchar (40),
fk_origem int, 
foreign key (fk_origem) references pais (id_pais) 
);

insert into modalidade(
nome_modalidade, ano_criacao, quantidade_jogadores, area_de_pratica, fk_origem )
values 
("Natação",1930,"1","Piscina",2);

alter table modalidade rename column quantidade_jogadores to quantidade_atletas;

alter table modalidade modify quantidade_atletas int; 

select * from modalidade;

-- alter table atleta  rename column fk_modalidades to fk_modalidade;

alter table atleta add column fk_modalidades int;
alter table atleta add constraint foreign key(fk_modalidade) references modalidade(id_modalidade);
desc atleta;

-- REGRA DE NEGOCIO
-- A regra de negócio ultizada nesse banco foi que, 1 atleta teria uma unica nacionalidade (tabela pais) 
-- e também o mesmo poderia práticar uma modalidades.
-- A modalidade pode ter apenas 1 oriegm (tabela pais), mas 1 pais pode ter origem de diversas modalidades.

