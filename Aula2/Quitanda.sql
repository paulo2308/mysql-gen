create database db_quitanda;

use db_quitanda;

create table  tb_produtos(
id bigint auto_increment,
nome varchar(255),
quantidade int,
preco decimal,
primary key(id)
);

insert into tb_produtos(nome, quantidade, preco)
values("Maça", 10, 1.99);
insert into tb_produtos(nome, quantidade, preco)
values("Banana", 13, 4.99);
insert into tb_produtos(nome, quantidade, preco)
values("Manga", 20, 5.49);
insert into tb_produtos(nome, quantidade, preco)
values("Melancia", 3, 10.00);

select * from tb_produtos;

update tb_produtos set preco = 1.99 where id = 1;

delete from tb_produtos where id = 4;

alter table tb_produtos modify preco decimal(8,2); -- 000000.00
alter table tb_produtos add descricao varchar(255);
alter table tb_produtos drop descricao; -- exclui a coluna descrição