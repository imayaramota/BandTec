create database Musica;
use Musica;

create table tb_autor(
id_autor int primary key auto_increment,
nome varchar(40),
idade int
);

create table tb_genero(
id_genero int primary key auto_increment,
nome varchar(40)
);

 create table tb_pais(
id_pais int primary key auto_increment,
nome varchar(40)
);

create table tb_banda(
id_banda int primary key auto_increment,
nome varchar(40),
n_integrantes int
);
alter table tb_banda add column fk_genero int;
alter table tb_banda add constraint foreign key(fk_genero) references tb_genero(id_genero);
alter table tb_banda add column fk_pais int;
alter table tb_banda add constraint foreign key(fk_pais) references tb_pais(id_pais);

create table tb_musica(
id_musica int primary key auto_increment,
titulo varchar(40),
fk_autor int,
fk_banda int
);
alter table tb_musica add constraint foreign key(fk_autor) references tb_autor(id_autor);
alter table tb_musica add constraint foreign key(fk_banda) references tb_banda(id_banda);


insert into tb_autor(
nome, idade)
values ('Luiza',22),
('Roberto',56),
('L7',29),
('Ferreguem',34),
('Anitta',30),
('Jairo',62);

insert into tb_pais(
nome)
values ('Brasil'),
('EUA'),
('Canada'),
('França');

insert into tb_genero(
nome)
values ('Funk'),
('Rap'),
('MPB'),
('Sertanejo');

insert into tb_banda(
nome, n_integrantes, fk_genero, fk_pais)
values ('Mamonas',5,1,2),
('Carlo e Marcos',2,2,1),
('L7 e Djong',2,3,3),
('Jorge e Matheus',2,4,1),
('Larrisa´s',3,3,2);

insert into tb_musica(
titulo, fk_autor, fk_banda)
values
('Giro dos Artista',1, 2),
('Sozinha',5 ,5),
('Obistinado', 3, 3 ),
('Mulher', 3, 3),
('Linda', 4, 4),
('Melhor Sozinha',6 ,1),
('Sozinha',2 ,5),
('Catavento',5 ,5);

select * from tb_autor;
select * from tb_pais;
select * from tb_genero;
select * from tb_banda;
select * from tb_musica;


 
 
 