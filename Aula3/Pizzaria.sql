create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
doce varchar(255),
salgada varchar(255),
vegetariana varchar(255),
primary key(id)
);

insert into tb_categoria(doce) values("romeu e julieta");
insert into tb_categoria(salgada) values("portuguesa");
insert into tb_categoria(vegetariana) values("rucula");

create table tb_pizza(
id bigint auto_increment,
nome varchar(255) not null,
tamanho varchar(255),
preco decimal(5,2),
ingredientes varchar(255),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza(nome, tamanho, preco) values("queijo com goiabada", "familia", 19.90);
insert into tb_pizza(nome, tamanho, preco) values("portuguesa II", "familia", 35.90);
insert into tb_pizza(nome, tamanho, preco) values("portuguesa I", "brotinho", 21.90);
insert into tb_pizza(nome, tamanho, preco) values("rucula", "familia", 60.90);

update tb_pizza set categoria_id = 1 where id = 1;
update tb_pizza set categoria_id = 2 where id = 2;
update tb_pizza set categoria_id = 2 where id = 3;
update tb_pizza set categoria_id = 3 where id = 4;

select * from tb_pizza;
select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where nome like "%c%";
select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;
select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id where tb_categoria.id = 2;