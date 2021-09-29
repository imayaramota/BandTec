create database petshop;
use petshop;

create table tb_cliente(
id_cliente int primary key auto_increment,
nome_cliente varchar(45),
telefone varchar(45),
celular varchar(45),
endereço varchar(45)
);

create table tb_pet (
id_pet int primary key auto_increment,
tipo_pet varchar(45),
nome_pet varchar(45),
raca varchar(45),
data_nasc_pet date,
fk_cliente int,
foreign key (fk_cliente) references tb_cliente(id_cliente)
) auto_increment =101;

insert into tb_cliente(nome_cliente, telefone, celular, endereço)
values('','','',''),
('','','',''),
('','','',''),
('','','','');

insert into tb_pet (tipo_pet, nome_pet, raca, data_nasc_pet, fk_cliente)
values ('cachorro','Babi','labrador','2019-01-03', 1),
('cachorro','Fred','vira-lata','2015-11-04', 2),
('gato','Mary','siberio','2020-01-08', 1),
('coelho','Mel','french lop','2019-05-10', 3),
('gato','Bob','ciames','2018-04-05', 4);

select * from tb_pet;
select * from tb_cliente;
desc tb_cliente;


