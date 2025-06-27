create database filmes;
use filmes;

create table filme (id integer primary key auto_increment,
titulo varchar(100),
diretor varchar(100),
ano integer(4),
duracao_minutos integer(4));

insert into filme (titulo, diretor, ano, duracao_minutos)
values("Toy Story","John Lasseter", 1995, 81);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("A Bug's Life","John Lasseter", 1998, 95);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("Toy Story 2","John Lasseter", 1999, 93);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("Monsters, Inc","Pete Docter", 2001, 92);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("Finding Nemo","Andrew Stanton", 2003, 107);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("The Incredibles","Brad Bird", 2004, 116);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("Cars","John Lasseter", 2006, 117);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("Ratatouille","Brad Bird", 2007, 115);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("WALL-E","Andrew Stanton", 2008, 104);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("Up","Pete Docter", 2009, 101);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("Toy Story 3","Lee unkrich", 2010, 103);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("Cars 2","John Lasseter", 2011, 120);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("Brave","Brepman", 2012, 102);
insert into filme (titulo, diretor, ano, duracao_minutos)
values("Monsters University","dan Scanlon", 2013, 110);

select titulo from filme;
/*Encontre o titulo de cada filme*/
select diretor from filme;
/*Encontre o diretor de cada filme*/
select titulo, diretor from filme;
/*Encontre o titulo e o diretor de cada filme*/
select titulo, ano from filme;
/*Encontre o titulo e o ano de cada filme*/
select * from filme;
/*Mostre tudo da tabela filme*/
select * from filme where id=6;
/*Encontre o filme com uma linha id 6*/
SELECT * FROM filme where ano>=2000 and ano<=2010;
/*Encontre os filmes lançados na década de 2000 e 2010*/
SELECT * FROM filme where ano<2000 or ano>2010;
/*Encontre os filmes não lançados na década de 2000 e 2010*/
SELECT * FROM filme order by ano limit 5;
/*Descubra os 5 primeiros filmes da Pixar e seus lançamentos*/