-- criamos um database
create database Escola;
-- selecionou um database
use Escola;
-- criamos uma tabela
create table alunos(
ra int primary key,   -- ra esta sendo a chave primaria
nome char (50),        -- caracter 
bairro char (70)
);

-- como renomear o nome da tabela
alter table alunos rename to SuperAlunos;

-- excluir a tabela 
drop table SuperAlunos;

-- caso eu queira pegar a tabela novamente, vou nela e dou ctrl enter
alter table alunos rename to SuperAlunos;

-- seleciona
select * from SuperAlunos;
-- mostrar so a tabela RA
select ra from SuperAlunos ;

select * from superprofessores;

alter table superalunos rename to alunos;

create table professores(
id int primary key,   -- ra esta sendo a chave primaria
nome char (50),        -- caracter 
disciplina char (70)
);
drop table professores;

insert into professores (
id, nome, disciplina)
values (12345, "marcos", "rua da batata");

-- MUDANDO NOME DA COLUNA 
alter table professores rename column cppf to CPF;

-- mudando nome da tabela
alter table professores rename to SuperProfessores;

insert into superprofessores (
id, nome)
values (123455, "marcos");

-- deletar uma determinada linha
delete from superprofessores where id = 12345;

-- alterar um dado ou acrescentalo caso esteja em branco da tabela 
update superprofessores set nome = "daniel" where id  = 123455;	

-- mostrar todos os nomes que começam com M 
select * from superprofessores where nome like 'm%';

-- mostrar todos os nomes com a segunda letra A
select * from superprofessores where nome like '_a%'; 
 
 -- mudando de char para vachar 
alter table superprofessores modify nome varchar(50);

-- confirmar se mudou 
describe superprofessores;

-- adicionei uma coluna 
alter table superprofessores add column bairro varchar(50); 

-- adicionado itens 
update superprofessores set bairro= "rua das batatas" where id  = 123455;	

select * from superprofessores;
update superprofessores set bairro= "rua das mandiocas" where id  = 12345;	
update superprofessores set disciplina= " PI " where id  = 12345;	
update superprofessores set disciplina= " BD " where id  = 123455;

-- alterando id da tabela 
update superprofessores set id= 102030  where id  = 123455;		

-- mostrar em ordem crescente 
select * from superprofessores order by nome;
-- mostrar em ordem decrescente 
select * from superprofessores order by nome desc;

-- exluir uma coluna poderia ser alter table filmes drop column Ano;
alter table filmes drop Ano;






