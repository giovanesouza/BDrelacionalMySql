-- Exercícios, vamos usar a base de dados LOCADORA para realizar as consultas, agora usando duas ou mais tabelas.

-- 1. Consultar o nome do cliente que fez a locação número 100
select * from filme;
select * from cliente;

-- 2. Consultar quais as cidades e seu pais correspondente que pertencem a um país que inicie com a letra "E"
select * from cidade;

-- 3. Listar a quantidade de filmes classificados como "G" OU "PG" por categoria
select * from filme where classificacao = "G";