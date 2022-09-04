
-- CLIENTE (INSERINDO DADOS) 

insert into CLIENTE (ID_CLI,NOME_CLI,ENDERECO_CLI,CIDADE_CLI,CEP_CLI,UF_CLI)
values (01,'FLAVIO MOTA','RUA X','SAO PAULO','02812260','SP');

insert into CLIENTE (ID_CLI,NOME_CLI,ENDERECO_CLI,CIDADE_CLI,CEP_CLI,UF_CLI)
values (02,'Giovane Souza','RUA Y','Recife','54236987','PE');

insert into CLIENTE (ID_CLI,NOME_CLI,ENDERECO_CLI,CIDADE_CLI,CEP_CLI,UF_CLI)
values (03,'Maria da Fonseca','RUA Mariana Galvão','Curitiba','54236987','PR');

select * from cliente;

-- VENDEDOR (INSERINDO DADOS)

insert into VENDEDOR (ID_VENDEDOR, NOME_VENDEDOR, SALARIO_VENDEDOR, COMISSÃO)
values (01,'JOAO', 1000, 10);

insert into VENDEDOR (ID_VENDEDOR, NOME_VENDEDOR, SALARIO_VENDEDOR, COMISSÃO)
values (02,'ANA MARIA', 1100, 14);

insert into VENDEDOR (ID_VENDEDOR, NOME_VENDEDOR, SALARIO_VENDEDOR, COMISSÃO)
values (03,'MARIA PAULA', 1500, 12);

select * from vendedor;

-- PRODUTOS (INSERINDO DADOS)

insert into PRODUTO(ID_PRODUTO, UNIDADE, DESCRICAO, VALOR_UNITARIO)
values (01,'PC','TABLET',180);

insert into PRODUTO(ID_PRODUTO, UNIDADE, DESCRICAO, VALOR_UNITARIO)
values (02,'PC','NOTBOOK',50);

insert into PRODUTO(ID_PRODUTO, UNIDADE, DESCRICAO, VALOR_UNITARIO)
values (03,'PC','MOUSE',999);


-- VERIFICADOR (VERIFICA DADOS NAS TABELAS)
select * from produto;

select * from produto where id_produto = 3;


-- FUNÇÕES

-- Em UNIDADE -> PEGAR Valor Unitário de Produto E agrupá-los em Unidade com título TOTAL.
select unidade, sum(valor_unitario) as 'Total' from produto group by unidade;