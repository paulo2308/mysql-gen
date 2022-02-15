create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
primary key(id)
);

insert into tb_categoria(categoria) values("T.I");
insert into tb_categoria(categoria) values("Negócios");
insert into tb_categoria(categoria) values("Saúde");

create table tb_curso(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(5,2),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_curso(nome, preco,categoria_id) values("tec. enfermagem", 900.00, 3);
insert into tb_curso(nome, preco,categoria_id) values("Administração", 40, 2);
insert into tb_curso(nome, preco,categoria_id) values("java", 34.90, 1);
insert into tb_curso(nome, preco,categoria_id) values("gestão financeira", 14.00, 2);

select * from tb_curso;
select * from tb_curso where preco > 50.00;
select * from tb_curso where preco between 3.00 and 60.00;
select * from tb_curso where nome like "%j%";
select * from tb_curso inner join tb_categoria on categoria_id = tb_categoria.id;
select * from tb_curso inner join tb_categoria on categoria_id = tb_categoria.id where tb_categoria.id = 1;