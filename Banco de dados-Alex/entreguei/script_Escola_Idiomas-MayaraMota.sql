create database escola_idiomas;
use escola_idiomas;

create table tb_aluno(
id_aluno_ra int primary key auto_increment,
nome_aluno varchar(45) not null,
bairro_aluno varchar(45) not null
)auto_increment= 101;

create table tb_curso(
id_curso int primary key auto_increment,
nome_curso varchar(45) not null,
nome_coordenador varchar(45) not null
);

create table tb_situacao_aluno(
id_situacao_aluno int primary key auto_increment,
data_inicio date not null,
media_global decimal(4,2) not null,
nivel_aluno int not null,
fk_aluno int,
fk_curso int,
foreign key (fk_aluno) references tb_aluno(id_aluno_ra),
foreign key (fk_curso) references tb_curso(id_curso)
)auto_increment=1001;

insert into tb_aluno (nome_aluno, bairro_aluno)
values('Bianca Albert','Jardim Palermo'),
('Antonio Santos','Vila São José'),
('Fred Silva','Silvina'),
('Amanda Lopes','Selecta'),
('Carla Almeida','Nova Petropolis');

insert into tb_curso (nome_curso, nome_coordenador)
values('Inglês','Agatha Lopes'),
('Francês','Sabrina Laviole'),
('Espanhol','Marcos Albert');

insert into tb_situacao_aluno (data_inicio, media_global, nivel_aluno, fk_aluno, fk_curso)
values('2018-02-15', 9.2, 2, 101, 1),
('2018-07-23', 7.5, 2, 102, 1),
('2021-02-20', 7.5, 2, 102, 3),
('2019-02-22', 6.2, 1, 103, 2),
('2020-07-15', 4.1, 3, 104, 2),
('2020-07-15', 7.1, 3, 105, 2),
('2021-02-20', 8.5, 1, 105, 3);

select *  from tb_aluno;
select * from tb_curso;
select * from tb_situacao_aluno;

select tb_aluno.*, tb_curso.*, tb_situacao_aluno.* from tb_situacao_aluno
inner join tb_curso on fk_curso= id_curso
inner join tb_aluno on fk_aluno= id_aluno_ra;

select tb_curso.*, tb_aluno.* from tb_situacao_aluno
inner join tb_curso on fk_curso =  id_curso
inner join tb_aluno on fk_aluno = id_aluno_ra where id_curso = 2; 

select tb_aluno.*, tb_curso.*, tb_situacao_aluno.* from tb_situacao_aluno
inner join tb_curso on fk_curso = id_curso
inner join tb_aluno on fk_aluno = id_aluno_ra where id_aluno_ra = 105;

select sum(media_global) as'soma das médias', avg(media_global) as 'média das médias' from tb_situacao_aluno;

select max(media_global) as 'maior média', min(media_global) as'menor media' from tb_situacao_aluno;

select tb_situacao_aluno.fk_curso, max(media_global) as 'maior média', min(media_global) as'menor media'  from tb_situacao_aluno group by (fk_curso);

select tb_situacao_aluno.fk_aluno, max(media_global) as 'maior média', min(media_global) as'menor media'  from tb_situacao_aluno group by (fk_aluno);

select media_global from tb_situacao_aluno;

select distinct media_global from tb_situacao_aluno;

select count(media_global) from tb_situacao_aluno;

select count(distinct media_global) from tb_situacao_aluno;













