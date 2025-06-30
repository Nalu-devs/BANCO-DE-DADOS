create database tabelasMultiplas;

use tabelasMultiplas;

create table filme (
    id integer primary key auto_increment,
    titulo varchar(100),
    diretor varchar(100),
    ano integer(4),
    duracao_minutos integer(4)
);

create table bilheteria (
    id_do_filme int,
    avaliacao numeric(10, 1),
    vendas_nacionais numeric(10),
    vendas_internacionais numeric(10),
    foreign key (id_do_filme) references filme(id)
)
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

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        5,
        8.2,
        380843261,
        555900000
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        14,
        7.4,
        268492764,
        475066843
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        8,
        8,
        206445654,
        417277164
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        12,
        6.4,
        191452396,
        368400000
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        3,
        7.9,
        245852179,
        239163000
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        6,
        8,
        261441092,
        370001000
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        9,
        8.5,
        223808164,
        297503696
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        11,
        8.4,
        415004880,
        648167031
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        1,
        8.3,
        191796233,
        170162503
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        7,
        7.2,
        244082982,
        217900167
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        10,
        8.3,
        293004164,
        438338580
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        4,
        8.1,
        289916256,
        272900000
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        2,
        7.2,
        162798565,
        200600000
    );

insert into
    bilheteria(
        id,
        avaliacao,
        vendas_nacionais,
        vendas_internacionais
    )
values
    (
        13,
        7.2,
        237283207,
        301700000
    );

