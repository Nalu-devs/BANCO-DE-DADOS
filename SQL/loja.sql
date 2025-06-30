create database loja;
use loja;

create table clientes (id_clientes integer primary key auto_increment, 
nome varchar,
cidade varchar);

insert into clientes (nome, cidade)
values ("Ana Lima", "São Paulo");
insert into clientes (nome, cidade)
values ("João Souza", "Rio de Janeiro");
insert into clientes (nome, cidade)
values ("Maria Santos", "Belo Horizonte");
insert into clientes (nome, cidade)
values ("Lucas Oliveira", "São Paulo");

create table pedidos (id_pedidos integer primary key  auto_increment,
foreign key (id_clientes) references clientes(id_clientes),
data_pedido datetime,
valor numeric(10,2));

insert into pedidos values(1, "2024/01/10", 100.00)