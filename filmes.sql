create database filmes;

use filmes;

create table filme (
    id integer primary key auto_increment,
    titulo varchar(100),
    diretor varchar(100),
    ano integer(4),
    duracao_minutos integer(4)
);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("Toy Story", "John Lasseter", 1995, 81);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("Vida de inseto", "John Lasseter", 1998, 95);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("Toy Story 2", "John Lasseter", 1999, 93);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("Monstros S.A", "Pete Docter", 2001, 92);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("Procurando Nemo", "Andrew Stanton", 2003, 107);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("Os incriveis", "Brad Bird", 2004, 116);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("Carros", "John Lasseter", 2006, 117);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("Ratatouille", "Brad Bird", 2007, 115);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("WALL-E", "Andrew Stanton", 2008, 104);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("Up", "Pete Docter", 2009, 101);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("Toy Story 3", "Lee unkrich", 2010, 103);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("Carros 2", "John Lasseter", 2011, 120);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
("Coragem", "Brepman", 2012, 102);

insert into
    filme (titulo, diretor, ano, duracao_minutos)
values
(
        "Universidade dos monstros",
        "dan Scanlon",
        2013,
        110
    );

select
    titulo
from
    filme;

/*Encontre o titulo de cada filme*/
select
    diretor
from
    filme;

/*Encontre o diretor de cada filme*/
select
    titulo,
    diretor
from
    filme;

/*Encontre o titulo e o diretor de cada filme*/
select
    titulo,
    ano
from
    filme;

/*Encontre o titulo e o ano de cada filme*/
select
    *
from
    filme;

/*Mostre tudo da tabela filme*/
select
    *
from
    filme
where
    id = 6;

/*Encontre o filme com uma linha id 6*/
SELECT
    *
FROM
    filme
where
    ano >= 2000
    and ano <= 2010;

/*Encontre os filmes lançados na década de 2000 e 2010*/
SELECT
    *
FROM
    filme
where
    ano < 2000
    or ano > 2010;

/*Encontre os filmes não lançados na década de 2000 e 2010*/
SELECT
    *
FROM
    filme
order by
    ano
limit
    5;

/*Descubra os 5 primeiros filmes da Pixar e seus lançamentos*/
select
    *
from
    filme
where
    titulo like "Toy Story%";

/*Encontre todos os filmes de toy story*/
SELECT
    *
FROM
    filme
where
    diretor = "John Lasseter";

/*Encontre todos os filmes dirigidos por John Lasseter*/
SELECT
    *
FROM
    filme
where
    diretor != "John Lasseter";

/*Encontre todos os filmes não dirigidos por John Lasseter*/
select
    *
from
    filme
where
    titulo like "wall-%";

/*Encontre todos os filmes de Wall-*/
SELECT
    distinct diretor
FROM
    filme
order by
    diretor;

/*Mostrar os diretores em ordem alfabetica sem duplicar*/
select
    *
from
    filme
order by
    ano desc
limit
    4;

/*Lista dos últimos quatro filmes da Pixar lançados (ordenados do mais recente para o menos recente)*/
select
    *
from
    movies
order by
    title asc
limit
    5;

/*Liste os cinco primeiros filmes da Pixar em ordem alfabética*/
select
    *
from
    movies
order by
    title asc
limit
    5 offset 5;

/*Lista dos próximos cinco filmes da Pixar em ordem alfabética*/