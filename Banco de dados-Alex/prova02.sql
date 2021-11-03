

-- Mayara Mota ra:01212163 questão 01
create database Personal;

-- Mayara Mota ra:01212163 questão 02
use Personal;

-- Mayara Mota ra:01212163 questão 03
create table tb_personal(
id_personal int primary key auto_increment,
nome_personal varchar(45),
area_atuacao varchar(45),
telefone int,
valor_hora_aula decimal(10,2)
);

create table tb_aluno(
id_aluno int primary key auto_increment,
nome_aluno varchar(45),
data_nasc date,
bairro varchar(45),
fk_personal int,
foreign key (fk_personal) references tb_personal(id_personal),
status_civil char(1)
) auto_increment = 100;

-- Mayara Mota ra:01212163 questão 04
insert into tb_personal(nome_personal, area_atuacao, telefone, valor_hora_aula)
values('Caio', 'musculação', 922223333, 100.00),
('Beatriz','boxe',911114444,110),
('Carol','pilates',977778888,160),
('Fernando','pilates',955556666,150);

insert into tb_aluno (nome_aluno, data_nasc, bairro, status_civil, fk_personal)
values('Carolina','1999-02-03','selecta','S',1),
('Bianca','2000-10-05','ferrazopolis','S',2),
('Felipe','1999-11-12','jardim','C',2),
('Margo','2003-02-06','vila almeida','C',3),
('Ana','1998-05-03','palermo','S',4),
('Carlos','1994-06-07','limpao','S',4);

-- Mayara Mota ra:01212163 questão 05
select * from tb_personal;
-- Mayara Mota ra:01212163 questão 05
select * from tb_aluno;

-- Mayara Mota ra:01212163 questão 06
alter table tb_aluno add column quant_aulas int;
update tb_aluno set quant_aulas= 20 where id_aluno=100;
update tb_aluno set quant_aulas= 10 where id_aluno=101;
update tb_aluno set quant_aulas= 15 where id_aluno=102;

-- Mayara Mota ra:01212163 questão 07
select tb_personal.*, tb_aluno.* from tb_aluno inner join tb_personal on fk_personal=id_personal;

-- Mayara Mota ra:01212163 questão 08
select tb_personal.*, tb_aluno.* from tb_aluno inner join tb_personal on fk_personal=id_personal where nome_personal='Fernando';

-- Mayara Mota ra:01212163 questão 09
select tb_personal.*, tb_aluno.* from tb_aluno inner join tb_personal on fk_personal=id_personal where status_civil='C';

-- Mayara Mota ra:01212163 questão 10
select avg(valor_hora_aula)  from tb_personal;

-- Mayara Mota ra:01212163 questão 11
select round(avg(valor_hora_aula),2)  from tb_personal;


-- Mayara Mota ra:01212163 questão 12
update tb_personal set nome_personal = 'Caroline', valor_hora_aula =170 where id_personal=3;
select * from tb_personal;

-- Mayara Mota ra:01212163 questão 13
select nome_personal as 'novo nome', valor_hora_aula as 'novo valor' from tb_personal where id_personal=3; 

-- Mayara Mota ra:01212163 questão 14
select max(valor_hora_aula)  from tb_personal;

-- Mayara Mota ra:01212163 questão 15
delete from tb_aluno  where id_aluno=100;
delete from tb_aluno  where id_aluno=102;
select * from tb_aluno;

-- Mayara Mota ra:01212163 questão 15
delete from tb_personal  where id_personal=1;
select * from tb_personal;

drop table tb_personal;
drop table tb_aluno;



