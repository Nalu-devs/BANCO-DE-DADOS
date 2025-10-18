create database internet;
use internet;

create table departamento(
departamentoid int primary key auto_increment,
nome varchar(45)
);

create table pacotes(
pacoteid int primary key auto_increment,
velocidade varchar(45),
data_inicio date,
mensalidade float,
depar int not null,
foreign key (depar) references departamento (departamentoid)
);

create table clientes(
clienteid int primary key auto_increment,
nome varchar(45),
sobrenome varchar(45),
data_nascimento date,
data_cadastro date,
cidade varchar(45),
estado char(2),
endereco varchar(45),
telefone varchar(45),
celular varchar(45),
desconto_mensal varchar(45),
paco int not null,
foreign key (paco) references pacotes(pacoteid)
);

create table categoria_pacote(
categoriaid int primary key auto_increment,
nome varchar(45),
preco_min float,
preco_max float
);

insert into departamento (nome) values
("TI"),("Rede"),("Atendimento ao cliente"),("Comercial"),("Marketing"),("Gestão"),("Administrativo");

insert into pacotes (velocidade, data_inicio, mensalidade, depar) values
("1 Mbps", "2025-01-20", 50.00, 1),("5 Mbps", "2024-05-26", 70.00, 2),("8 Mbps","2025-10-17",80.00, 3),("25 Mbps", "2024-05-30", 90.00, 4);

insert into clientes (nome, sobrenome, data_nascimento, data_cadastro, cidade, estado, endereco, telefone, celular, desconto_mensal, paco) values
('João', 'Silva', '1990-05-15', '2023-01-10', 'São Paulo', 'SP', 'Rua A, 123', '1123456789', '11987654321', '10%', 9),
('Maria', 'Oliveira', '1985-08-20', '2023-03-12', 'Rio de Janeiro', 'RJ', 'Av. Central, 456', '2134567890', '21987654322', '15%',9),
('Carlos', 'Souza', '1992-11-30', '2023-05-05', 'Belo Horizonte', 'MG', 'Rua das Flores, 789', '3133344455', '31999999999', '5%', 10),
('Fernanda', 'Costa', '1988-07-12', '2023-07-15', 'Curitiba', 'PR', 'Av. Brasil, 321', '4133221100', '41988776655', '12%', 11),
('Rafael', 'Almeida', '1995-09-22', '2023-09-20', 'Fortaleza', 'CE', 'Rua Mar, 101', '8533221133', '85999887766', '8%', 12),
('Juliana', 'Lima', '1991-03-18', '2023-11-01', 'Recife', 'PE', 'Rua do Sol, 202', '8133211100', '81999900011', '10%', 12);

insert into categoria_pacote (nome, preco_min, preco_max) values
('Econômico', 99.90, 199.90), 
('Padrão', 200.00, 399.90),
('Executivo', 400.00, 599.90),
('Luxo', 600.00, 999.90),
('Familiar', 150.00, 450.00);

/*Mostre o estado e o número de clientes de cada estado.*/
select estado, count(*) as quantidade from clientes group by estado;

/*Mostre a velocidade de internet e a média de pagamento mensal para cada velocidade.*/
select velocidade, sum(mensalidade)/count(*) from pacotes group by velocidade;

/*Mostre o estado e o número de cidades para cada estado.*/
select estado, count(cidade) as quantidade from clientes group by estado;

/*Mostre o número do departamento (Departamento_departamentoid) e o maior pagamento mensal por departamento.*/
select depar, max(mensalidade) from pacotes group by depar;

/*Mostre o número do pacote (pacoteid) e a média de desconto mensal para cada pacote.*/
select paco, sum(desconto_mensal)/count(*) from clientes group by paco;

/*Mostre o número do pacote (pacoteid) e a média de desconto mensal para cada pacote, apenas para pacotes cujos números sejam iguais a 22 ou 13.*/
select paco, sum(desconto_mensal)/count(*) as desconto from clientes where paco=22 or paco=13 group by paco;

/* Mostre o maior, o menor e a média mensal de pagamento para cada velocidade de internet.*/
select max(mensalidade) as maior, min(mensalidade) as menor, sum(mensalidade)/count(*) as media from pacotes group by velocidade;

/*Mostre a velocidade de internet e o número do pacote para cada velocidade de internet, apenas para velocidades de internet acima de 200Mb.*/
select velocidade, pacoteid from pacotes where velocidade>"100Mb";