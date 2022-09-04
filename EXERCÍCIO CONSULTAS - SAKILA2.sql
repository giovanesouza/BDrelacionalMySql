Create database sakila2;
use sakila2;

-- 1 PAÍSES CADASTRADOS (OK)
select * from pais;

-- 2. QUANTOS PAÍSES ESTÃO CADASTRADOS (NÃO CONSEGUI)
select pais, count(*) as 'Total de países' from pais group by pais_id;

-- 3. QUANTOS PAÍSES TERMINAM COM A LETRA A (REVISAR)
select * from pais where pais like '%A';


-- 4. LISTAR, SEM REPETIÇÃO, OS ANOS QUE HOUVERAM LANÇAMENTO DE FILME (PROFESSOR PEDIU P NÃO FAZER)


-- 5. ALTERAR O ANO DE LANÇAMENTO IGUAL A 2007 PARA FILMES QUE INICIEM COM A LETRA "B" (OK)
-- select * from filme; SELECIONA TODOS OS FILMES
-- select * from filme where titulo like 'B%'; SELECIONA TODOS OS FILMES QUE INICIAM COM A LETRA B
update filme set ano_de_lancamento = 2007 where titulo like 'B%';


-- 6. LISTAR OS FILMES QUE POSSUEM DURAÇÃO MAIOR QUE 100 E CLASSIFICAÇÃO IGUAL A "G" (OK)
select * from filme;
select * from filme where duracao_do_filme > 100 and classificacao = 'G';

-- REVISAR A 7
-- 7. ALTERAR O ANO DE LANÇAMENTO IGUAL A 2008 PARA FILMES QUE POSSUEM DURAÇÃO DE LOCAÇÃO MENOR QUE 4 E CLASSIFICAÇÃO IGUAL A "PG"
select * from filme;
update filme set ano_de_lancamento = 2008 where duracao_da_locacao < 4 and classificacao = 'PG';

-- 8. LISTAR A QUANTIDADE DE FILMES QUE ESTEJAM CLASSIFICADOS COMO "PG-13" E PREÇO DA LOCAÇÃO MAIOR QUE 2.4
