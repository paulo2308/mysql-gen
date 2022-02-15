create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key(id)
);

insert into tb_categoria(categoria) values("remedios");
insert into tb_categoria(categoria) values("remedios controlado");
insert into tb_categoria(categoria) values("higiene");

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(5,2),
marca varchar(255),
validade date,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, preco, marca, validade, categoria_id) values("fralda", 15.90, "pampers", "2022-05-27", 3);
insert into tb_produto(nome, preco, marca, validade, categoria_id) values("diclofenaco", 9.50, "neo quimica", "2022-05-27", 1);
insert into tb_produto(nome, preco, marca, validade, categoria_id) values("clonozempa", 230.00, "neo quimica", "2022-012-07", 2);
insert into tb_produto(nome, preco, marca, validade, categoria_id) values("diazepam", 140.00, "neo quimica", "2022-08-26", 2);

select * from tb_produto;
select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%B%";
select * from tb_produto inner join tb_categoria on categoria_id = tb_categoria.id;
select * from tb_produto inner join tb_categoria on categoria_id = tb_categoria.id where tb_categoria.id = 2;