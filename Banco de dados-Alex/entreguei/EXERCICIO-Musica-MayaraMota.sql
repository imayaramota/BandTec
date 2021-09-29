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
alter table tb_musica add column fk_genero int;
alter table tb_musica add constraint foreign key(fk_genero) references tb_genero(id_genero);


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
nome, n_integrantes, fk_pais)
values ('Mamonas',5,2),
('Carlo e Marcos',2,1),
('L7 e Djong',2,3),
('Jorge e Matheus',2,1),
('Larrisa´s',3,2);
 desc tb_musica;

insert into tb_musica(
titulo, fk_autor, fk_banda, fk_genero)
values
('Giro dos Artista',1, 2, 2),
('Sozinha',5 ,5, 3),
('Obistinado', 3, 2, 2 ),
('Mulher', 3, 3, 4),
('Linda', 4, 4, 1),
('Melhor Sozinha',6 ,1, 3),
('Sozinha',2 ,5, 3),
('Catavento',5 ,5,4);

select * from tb_autor;
select * from tb_pais;
select * from tb_genero;
select * from tb_banda;
select * from tb_musica;

select tb_banda.*, tb_pais.nome from tb_banda inner join tb_pais on tb_banda.fk_pais = tb_pais.id_pais;

select tb_musica.*, tb_genero.nome, tb_autor.nome, tb_banda.nome from tb_musica 
inner join tb_genero on tb_musica.fk_genero = tb_genero.id_genero
inner join tb_autor  on tb_musica.fk_autor = tb_autor.id_autor
inner join tb_banda  on tb_musica.fk_banda = tb_banda.id_banda;

select tb_musica.titulo, tb_genero.nome, tb_autor.nome, tb_banda.nome from tb_musica 
inner join tb_genero on tb_musica.fk_genero = tb_genero.id_genero
inner join tb_autor  on tb_musica.fk_autor = tb_autor.id_autor
inner join tb_banda  on tb_musica.fk_banda = tb_banda.id_banda;

insert into tb_musica (titulo)
values ('Ceu Azul'),
 ('Tesouro');
 
select * from tb_musica left join tb_autor on tb_musica.fk_autor = tb_autor.id_autor;
select * from tb_musica right join tb_autor on tb_musica.fk_autor = tb_autor.id_autor;
/*aparece quase a mesma coisa a diferença é se tiver uma musica sem autor no rigth ela nao aparece e no left ela aparece*/
 
select tb_musica.titulo as 'nome do autor' from tb_musica right join tb_autor on tb_musica.fk_autor = tb_autor.id_autor;
  
select tb_musica.titulo as 'Nome da musica', tb_autor.nome as 'Nome autor' from tb_musica right join tb_autor on tb_musica.fk_autor = tb_autor.id_autor;

 

 