create database TecShine;
use TecShine;

create table cadastro_contratante(
id_contratante int primary key auto_increment,
nome varchar(40),
cnpj int, 
nome_responsavel varchar(40),
telefone int,
cep int,
email varchar(40),
acessosSimuntaneos varchar(2),
usuario_id int 
);

create table cadastro_usuario(
id_usuario int primary key auto_increment,
nome varchar(40),
cnpj int,
nome_responsavel varchar(40),
telefone int,
cep int,
email varchar(40),
cadastro_contratante_id int
);

create table login(
id_login int primary key auto_increment,
cnpj int,
senha varchar(6),
cadastro_contratante_id int,
cadastro_usuario_id int
);

create table sensor(
	id_sensor int primary key auto_increment,
    nome_sensor varchar(20),
    latitude float, -- ver
    longitude float,
    tipo_sensor_id int,
    espaco_id int
);

create table tipo_sensor(
	id_tipo_sensor int primary key auto_increment,
    nome_tipo_sensor varchar(20)
); 

create table espaco(
	id_espaco int primary key auto_increment,
    nome_espaco varchar(30),
    andar int,
    padrao_intensidade int 
);

create table sensor_proximidade(
	id_sensor_proximidade int primary key auto_increment,
    sensor_id int,
    hora_registro datetime,
    valor int
);

create table sensor_luminosidade(
	id_sensor_luminosidade int primary key auto_increment,
    sensor_id int,
    hora_registro datetime,
    valor_inicial int,
    valor_final int
);

insert into login (
cnpj, senha, cadastro_usuario_id,  cadastro_contratante_id)
values (0000,"xxx",1,11),
(1111,"yyy",2,22),
(2222,"www",3,11);

select * from login;
select * from login order by senha desc;
select * from login where senha like "%x";

describe login;
alter table login add column cnpj int;
