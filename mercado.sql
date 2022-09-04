create database mercado;

use mercado;
create table cliente(
id_cli int primary key,
nome_cli varchar(50),
endereco_cli varchar(100),
cidade_cli varchar(30),
cep_cli varchar(20),
uf_cli char(2)
);

create table produto (
id_produto int primary key,
unidade char(2) not null,
descricao varchar(30) not null,
valor_unitario double(5,2) not null
);

create table vendedor (
id_vendedor int primary key,
nome_vendedor varchar(40) not null,
salario_vendedor float(10,2),
comissão float(4,2)
);

Create table pedido (
Numero_pedido int primary key auto_increment,
id_cli int,
prazo_entrega date,
foreign key (id_cli) references cliente (id_cli),
foreign key (id_vendedor) references vendedor (id_vendedor)
);

Create table itens_pedido (
id_item_pedido int,
num_pedido int,
id_produto int,
quantidade int,
primary key (id_item_pedido),
foreign key (num_pedido) references pedido (numero_pedido),
foreign key (id_produto) references produto (id_produto)
);


