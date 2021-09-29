create database Musica;
use Musica;

create table tb_musica(
id_musica int primary key auto_increment,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

insert into tb_musica(
titulo, artista, genero)
values('Macarena','Jorge','Funk'),
('Giro dos Artista','Jorge','Funk'),
('Sozinha','Luiza','Funk'),
('Obistinado','Belo','Rap'),
('Mulher','Luiza','Rap'),
('Nocaute','Jorge e Matheus','Sertanejo'),
('Linda','Jorge e Matheus','Sertanejo'),
('Quarta Cadeira','Caio','Sertanejo'),
('Melhor Sozinha','Luiza','Pop'),
('Catavento','Caetana','Pop');

select * from tb_musica;
select titulo, artista from tb_musica;
select * from tb_musica where genero='rap';
select * from tb_musica where artista='luiza';
select * from tb_musica order by titulo;
select * from tb_musica order by artista desc;
select * from tb_musica where titulo like 'm%';
select * from tb_musica where artista like '%a';
select * from tb_musica where genero like '_e%';
select * from tb_musica where titulo like '%t_';

drop table tb_musica;



