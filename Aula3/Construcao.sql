create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key(id)
);

insert into tb_categoria(categoria) values("acabamento");
insert into tb_categoria(categoria) values("construcao");
insert into tb_categoria(categoria) values("utensilios");

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(5,2),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, preco,categoria_id) values("cimento", 60.00, 2);
insert into tb_produto(nome, preco,categoria_id) values("porcelanato", 90.00, 1);
insert into tb_produto(nome, preco,categoria_id) values("pia", 7.30, 3);
insert into tb_produto(nome, preco,categoria_id) values("tijolos", 14.00, 2);

select * from tb_produto;
select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3.00 and 60.00;
select * from tb_produto where nome like "%c%";
select * from tb_produto inner join tb_categoria on categoria_id = tb_categoria.id;
select * from tb_produto inner join tb_categoria on categoria_id = tb_categoria.id where tb_categoria.id = 1;