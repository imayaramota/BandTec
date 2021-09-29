  create database BandTec; 
  use Escola;
  
  create table aluno (
  id int primary key,
  nome varchar(50),
  escola varchar (50)
  );
  
  select * from alunos;
  -- delete from alunos; 
  
  update alunos set nome = 'mayara' where id= 01;
  
  alter table alunos drop escola;
  
  delete from alunos where id= 02;
  
  describe alunos; 
  
  
  
  