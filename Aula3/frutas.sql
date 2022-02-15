create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key(id)
);

insert into tb_categoria(categoria) values("citricas");
insert into tb_categoria(categoria) values("semi-citricas");
insert into tb_categoria(categoria) values("doces");

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(5,2),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, preco,categoria_id) values("Maçã", 1.50, 2);
insert into tb_produto(nome, preco,categoria_id) values("Mamão", 9.50, 3);
insert into tb_produto(nome, preco,categoria_id) values("limão", 7.30, 1);
insert into tb_produto(nome, preco,categoria_id) values("Maracujá", 12.00, 1);

select * from tb_produto;
select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on categoria_id = tb_categoria.id;
select * from tb_produto inner join tb_categoria on categoria_id = tb_categoria.id where tb_categoria.id = 1;