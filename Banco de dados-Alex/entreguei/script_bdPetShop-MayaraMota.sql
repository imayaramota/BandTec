create database petshop;
use petshop;

create table tb_cliente(
id_cliente int primary key auto_increment,
nome_cliente varchar(45),
sobrenome_cliente varchar(45),
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

insert into tb_cliente(nome_cliente, sobrenome_cliente, telefone, celular, endereço)
values('Carla', 'Almeida','4444-8888','94586-6291','Rua das couves'),
('Arthur','Castro','2222-5555','95635-2331','Rua das batatas'),
('Leticia ','Castro','2222-4444','94455-2225','Av. Carlos Roberto'),
('Alexandre ','Ferraz','6666-222','97852-2668','Rua Alameda Souza');

insert into tb_pet (tipo_pet, nome_pet, raca, data_nasc_pet, fk_cliente)
values ('cachorro','Babi','labrador','2019-01-03', 1),
('cachorro','Fred','vira-lata','2015-11-04', 2),
('gato','Mary','siberio','2020-01-08', 1),
('coelho','Mel','french lop','2019-05-10', 3),
('gato','Bob','ciames','2018-04-05', 4);

select * from tb_pet;
select * from tb_cliente;

alter table tb_cliente modify nome_cliente varchar(50);

select * from tb_pet where tipo_pet = 'cachorro';
select nome_pet, data_nasc_pet from tb_pet; 
select * from tb_pet order by nome_pet;
select * from tb_cliente order by endereço desc;
select * from tb_pet where nome_pet like 'b%';
select * from tb_cliente where sobrenome_cliente = 'Castro';

update tb_cliente set telefone = '4454-2222'where id_cliente= 1;
select * from tb_cliente;

select tb_pet.*, tb_cliente.nome_cliente from tb_pet inner join tb_cliente on tb_pet.fk_cliente =  tb_cliente.id_cliente;
/*select tb_pet.*, tb_cliente.nome_cliente as cliente from tb_pet inner join tb_cliente on tb_pet.fk_cliente = tb_cliente.id_cliente where tb_cliente.id_cliente = 2;*/
select tb_pet.*, tb_cliente.nome_cliente as cliente from tb_pet inner join tb_cliente on tb_pet.fk_cliente = tb_cliente.id_cliente where fk_cliente = 2;
/*select * from tb_pet where fk_cliente = 2;*/

delete from tb_pet where id_pet = 103;
select * from tb_pet;


drop table tb_pet;
drop table tb_cliente;



