create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
peso decimal(8,1),
quantidade int,
preco decimal(8,2),
primary key(id)
); 

insert into tb_produtos(nome, peso, quantidade, preco)
values("arroz", 5.0, 30, 22.00);
insert into tb_produtos(nome, peso, quantidade, preco)
values("feijão", 1.0, 12, 8.00);
insert into tb_produtos(nome, peso, quantidade, preco)
values("macarrão", 1.0, 24, 7.50);
insert into tb_produtos(nome, peso, quantidade, preco)
values("whisky", 1.5, 5, 800.00);
insert into tb_produtos(nome, peso, quantidade, preco)
values("tequila", 1.0, 13, 230.00);
insert into tb_produtos(nome, peso, quantidade, preco)
values("açai", 5.0, 20, 42.00);
insert into tb_produtos(nome, peso, quantidade, preco)
values("manteiga", 0.5, 50, 5.60);
insert into tb_produtos(nome, peso, quantidade, preco)
values("café", 1.0, 50, 8.90);

select nome, preco from tb_produtos where preco > 500.00;
select nome, preco from tb_produtos where preco < 500.00;

update tb_produtos set peso = 7.5 where id = 6;

select * from tb_produtos;