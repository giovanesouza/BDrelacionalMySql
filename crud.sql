Use crud;
create table contato(
id int primary key auto_increment,
nome varchar(50),
idade int,
dataCadastro Date
);

-- INSERE CADASTRO - DATA = AAA-MM-DD SEM OS TRAÇOS
insert into contato (nome, idade, dataCadastro) values ("Gio", 23, 20220828); 
insert into contato (nome, idade, dataCadastro) values ("Raiara", 27, 20220928);

-- ATUALIZA UMA DETERMINADA CÉLULA DA TABELA (SET) COM BASE NO Id
update contato set nome = "Alana Fonseca" where id = 9;
update contato set dataCadastro = 20220928 where id = 1;
update contato set id = 5 where id = 2;

-- EXCLUI CADASTRO 
delete from contato where id = 9;

-- CONSULTA TABELA
select * from contato;