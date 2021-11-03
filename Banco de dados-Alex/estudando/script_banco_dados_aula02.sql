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
