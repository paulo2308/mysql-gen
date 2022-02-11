create database db_rh;

use db_rh;

create table tb_funcionaries(
id bigint auto_increment,
nome varchar(255),
idade int,
cargo varchar(255),
salario decimal(8,2),
primary key(id)
);

insert into tb_funcionaries(nome, idade, cargo, salario)
values("Gabriel", 18, "pintor", 1200.00);
insert into tb_funcionaries(nome, idade, cargo, salario)
values("Amanda", 22, "design", 3000.00);
insert into tb_funcionaries(nome, idade, cargo, salario)
values("Flavio", 19, "desenvolvedor jr", 5000.00);
insert into tb_funcionaries(nome, idade, cargo, salario)
values("Ian", 29, "analista", 4000.00);
insert into tb_funcionaries(nome, idade, cargo, salario)
values("Giovana", 17, "aprendiz", 2000.00);

select id, nome, salario from tb_funcionaries where salario > 2000;
select id, nome, salario from tb_funcionaries where salario < 2000;

update tb_funcionaries set cargo = "analista jr", salario = 3200.00 where id = 5;

select * from tb_funcionaries;