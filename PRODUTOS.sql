create database ESCOLA;
use ESCOLA;

ALTER TABLE ALUNO ADD COLUMN BAIRRO VARCHAR (200) NOT NULL;

create TABLE ALUNO (ID_ALUNO INT PRIMARY KEY auto_increment,
CPF numeric (11) NOT NULL,
DATA_NASCIMENTO DATE default current_timestamp,
NOME VARCHAR (200) NOT NULL,
ENDERECO VARCHAR (100),
RA numeric (19) NOT NULL,
CIDADE VARCHAR (200) NOT NULL);

CREATE TABLE FUNCIONARIO (ID_FUNCIONARIO INT primary KEY auto_increment,
MATERIA varchar (20),
NOME varchar (200) NOT NULL,
CPF numeric (11) NOT NULL,
SALARIO numeric (10,2) NOT NULL,
CARGO VARCHAR (60));

create table CONTAS (ID_CONTA INT PRIMARY KEY auto_increment,
AGUA numeric (10,2) NOT NULL,
LUZ numeric (10,2) NOT NULL,
GAS numeric (10,2) NOT NULL,
MATERIAIS numeric (10,2) NOT NULL);

CREATE TABLE CURSO (ID_CURSO INT primary KEY auto_increment,
ID_FUNCIONARIO INT,
ID_ALUNO INT,
HORARIO TIME, 
CARGA_HORARIA numeric(20),
NOME VARCHAR (100));

CREATE TABLE FINANCA (ID_FINANCA INT primary KEY auto_increment,
ID_FUNCIONARIO INT,
ID_CONTA INT,
APM numeric (10,2),
DOACOES NUMERIC (10,2));

INSERT INTO ALUNO(CPF, DATA_NASCIMENTO, NOME, ENDERECO, RA, CIDADE)
VALUES ("56176276861","2007/07/16","ANA LUCIA","RUA MARIANO HERNANDES","20241350090", "São Paulo");
INSERT INTO ALUNO(CPF, DATA_NASCIMENTO, NOME, ENDERECO, RA, CIDADE)
VALUES ("564875962321","2007/05/08","FATIMA","RUA SARGENTO HERNANDES","541268759352", "Bauru");
INSERT INTO ALUNO(CPF, DATA_NASCIMENTO, NOME, ENDERECO, RA, CIDADE)
VALUES ("54896278531","2004/07/16","LUCIA","RUA MARIANO HERNANDES","56748921548", "Rio de Janeiro");
INSERT INTO ALUNO(CPF, DATA_NASCIMENTO, NOME, ENDERECO, RA, CIDADE)
VALUES ("54127863295","2000/01/15","ANA","RUA HERNANDES","24158963275", "São Paulo");
INSERT INTO ALUNO(CPF, DATA_NASCIMENTO, NOME, ENDERECO, RA, CIDADE)
VALUES ("24563158793","2010/10/16","LUCIANA","RUA MARIANO","21548632975", "São Paulo");

INSERT INTO FUNCIONARIO(MATERIA, NOME, CPF, SALARIO, CARGO)
VALUES ("PORTUGUES", "MARIO", "54568752194", "1020.90","PROFESSOR");
INSERT INTO FUNCIONARIO(MATERIA, NOME, CPF, SALARIO, CARGO)
VALUES ("MATEMATICA", "SARA", "5412896475", "4000.00","EXPETORAA");
INSERT INTO FUNCIONARIO(MATERIA, NOME, CPF, SALARIO, CARGO)
VALUES ("COORDENADORA", "SANDRA", "54568752194", "956.00","COORDENADORA");
INSERT INTO FUNCIONARIO(MATERIA, NOME, CPF, SALARIO, CARGO)
VALUES ("DIRETOR", "MARTA", "54568752194", "458.00","DIRETOR");
INSERT INTO FUNCIONARIO(MATERIA, NOME, CPF, SALARIO, CARGO)
VALUES ("FISICA", "RUBENS", "54568752194", "541.00","PROFESSORA");

INSERT INTO CONTAS(AGUA, LUZ, GAS, MATERIAIS)
VALUES ("5049.00", "344.00", "1233.00", "67.80");
INSERT INTO CONTAS(AGUA, LUZ, GAS, MATERIAIS)
VALUES ("443.00", "3444.00", "556.00", "785.00");
INSERT INTO CONTAS(AGUA, LUZ, GAS, MATERIAIS)
VALUES ("5049.00", "6544.00", "455.00", "433.00");
INSERT INTO CONTAS(AGUA, LUZ, GAS, MATERIAIS)
VALUES ("560.00", "6665.00", "1233.00", "678.00");
INSERT INTO CONTAS(AGUA, LUZ, GAS, MATERIAIS)
VALUES ("5049.00", "344.00", "1233.00", "678.00");

INSERT INTO CURSO(HORARIO, CARGA_HORARIA, NOME)
values("12:09:00", "200","MATEMATICA");
INSERT INTO CURSO(HORARIO, CARGA_HORARIA, NOME)
values("11:30:00", "100","FINANCAS");
INSERT INTO CURSO(HORARIO, CARGA_HORARIA, NOME)
values("08:00:00", "400","PACOTE OFFICE");
INSERT INTO CURSO(HORARIO, CARGA_HORARIA, NOME)
values("13:00:00", "200","HISTORIA");
INSERT INTO CURSO(HORARIO, CARGA_HORARIA, NOME)
values("18:40:00", "40","SECRETARIADO");

INSERT INTO FINANCA(APM, DOACOES)
values("300.00", "4564.00");
INSERT INTO FINANCA(APM, DOACOES)
values("1000.00", "567.00");
INSERT INTO FINANCA(APM, DOACOES)
values("3098.00", "6545.00");
INSERT INTO FINANCA(APM, DOACOES)
values("900.00", "4355.00");
INSERT INTO FINANCA(APM, DOACOES)
values("1345.00", "2345.00");

select *  from aluno;/*Apresentar todos os registros da entidade ALUNO;*/

select * from aluno where CIDADE="São Paulo";/*Apresentar todos os registros da entidade ALUNO nascidos em uma cidade específica;*/

select * FROM ALUNO WHERE YEAR(DATA_NASCIMENTO)=2007;/*Apresentar todos os registros da entidade ALUNO cuja data de nascimento seja de um ano específico;*/

update ALUNO SET BAIRRO="Vila Cardia" WHERE ID_ALUNO=1;
update ALUNO SET BAIRRO="Samambaia" WHERE ID_ALUNO=2;
update ALUNO SET BAIRRO="Santa Edwirgens" WHERE ID_ALUNO=3;
update ALUNO SET BAIRRO="Samambaia" WHERE ID_ALUNO=4;
update ALUNO SET BAIRRO="Centro" WHERE ID_ALUNO=5;

select NOME, CPF FROM ALUNO WHERE BAIRRO="Samambaia";/*Apresentar todos os registros da entidade ALUNO cuja data de nascimento seja de um ano específico;*/

select * from curso;/*Apresentar todos os registros da entidade DISCIPLINA */

update aluno set NOME="Roberta" where ID_ALUNO=2;/*Alterar o nome de um registro na entidade ALUNO */

update curso set HORARIO="12:00:00" where id_curso=1;/*Alterar o nome de um registro da entidade DISCIPLINA;*/

delete from aluno where cidade="São Paulo";/*Deletar os registros da entidade ALUNO nascidos na mesma cidade;*/

delete from curso where id_curso=3 and id_curso=7;/*Deletar o terceiro e sétimo registro da entidade DISCIPLINA */

INSERT INTO CURSO(NOME) VALUE ("BANCO DE DADOS I");/* Inserir um novo registro na tabela DISCIPLINA chamado BANCO DE DADOS I */

create database computador;/*Criar um bando de dados (schema) chamado computador;*/

show databases;/*Verificar se o banco foi criado;*/

use computador;/* Definir o banco COMPUTADOR como padrão para uso;*/

create table componente(ID_comp INT primary KEY auto_increment,
descricao varchar(100),
valor numeric(10, 2),
data_aquisi date default current_timestamp);/*Criar a tabela COMPONENTE no banco COMPUTADOR
15. Criar os seguintes campos na tabela COMPONENTE:
a. ID_comp: tipo numérico, não nulo, auto incremento e chave primária
b. Descrição: varchar
c. Valor: numérico
d. Data_Aquis: date YYYY/MM/DD*/

insert into componente(descricao, valor, data_aquisi)
value ("CPU", "600.00", "2024/04/14");
insert into componente(descricao, valor, data_aquisi)
value ("Placa Mãe", "900.00", "2007/07/16");
insert into componente(descricao, valor, data_aquisi)
value ("GPU", "1900.00", "2022/04/15");
insert into componente(descricao, valor, data_aquisi)
value ("SSD M2", "300.00", "2017/08/14");
insert into componente(descricao, valor, data_aquisi)
value ("HD", "150.00", "2014/12/14");
insert into componente(descricao, valor, data_aquisi)
value ("Memoria RAM", "250.00", "2023/11/20");
insert into componente(descricao, valor, data_aquisi)
value ("Gabinete", "460.00", "2000/09/30");
insert into componente(descricao, valor, data_aquisi)
value ("Mouse", "240.00", "2024/06/14");
insert into componente(descricao, valor, data_aquisi)
value ("Teclado", "350.00", "2025/01/13");
insert into componente(descricao, valor, data_aquisi)
value ("Cooler", "150.00", "2024/04/14");/* Inserir 10 registros na tabela componente;*/

select * from  componente where month(data_aquisi)=2 and valor>=500 and valor<=1000; /*Selecionar da tabela COMPONENTE todos itens comprados no mês de 02 com valor entre R$ 500,00 e R$ 1.000,00*/

update componente set descricao="Placa Video" where id_comp=4;/* Alterar o nome do item de ID igual a quatro para PLACA VIDEO;*/

update componente set valor="1225.00" where id_comp=9;/* Alterar o valor do item de ID igual a 9 para R$ 1.225,00*/

delete from componente where id_comp=5;/* Deletar o registro de ID igual a 5;*/

drop table componente;/*Deletar o a tabela COMPONENTE*/

drop database computador;/*Deletar o banco COMPUTADOR*/