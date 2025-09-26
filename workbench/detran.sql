create database detran;
use detran;

create table propr(
id int primary key auto_increment,
nome varchar(150) not null,
data_nasci date
);

create table veiculo(
id int primary key auto_increment,
nome varchar (150) not null,
placa varchar(8) not null,
id_p int not null,
foreign key (id_p) references propr (id)
); 