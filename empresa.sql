-- importar o banco de dados de um arquivo ( empresa )

Create database empresa_feer;
use empresa_feer;

-- importar o arquivo do script 

-- manipulando as informações do DB
-- Listar o nome dos itens de pelo menos uma tabela;

show tables;
select * from department; 
select * from dependent; 
select * from dept_locations; 
select * from employee; 
select * from project;
select * from works_on;

-- Quantos empregados tem o departamento de pesquisa ("research")?
select * from department; 
select * from employee where dno = 5;
select count(*) from employee where	dno = 5;

-- Incluir um novo departamento denominado "datascience" com Dno =7;
insert into department values ("Datascience", 7, 123456789, '2020-07-23');

-- Incluir pelo menos dois cientistas de dados no novo departamento com os atributos básicos;

insert into employee values ("Arthur", "H", "Willame", 552518110, '2004-11-25', "100 Conviver, Itapaje, CE", "M", 25000, 123456789, 7);
insert into employee values ("Douglas", "F", "Andrade", 400289220, '2002-07-13', "nossa senhora das graças, General, CE", "M", 25000, 123456789, 7);

-- Aumentar o salário de todos os empregados em 13.5% do valor atual;

update employee set Salary = Salary + (Salary * 0.135) where Dno = 7 or Dno = 1 or Dno=5 or Dno = 4;

-- Mudar a endereço de residência ("Address") do departamento 4 ("Administration") para Itapajé, CE;

update dept_locations set Dlocation = 'General Sampaio, CE' where Dnumber = 4;
