create database db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
idade int,
ra varchar(255),
turma int,
nota decimal(2,1),
primary key(id)
);

insert into tb_estudantes(nome, idade, ra, turma, nota)
values("Paulo", 27, "35", 44, 9);
insert into tb_estudantes(nome, idade, ra, turma, nota)
values("Carla", 21, "03", 40, 4);
insert into tb_estudantes(nome, idade, ra, turma, nota)
values("Natalia", 20, "30", 46, 9.5);
insert into tb_estudantes(nome, idade, ra, turma, nota)
values("Jeferson", 27, "23", 50, 6.8);

select nome, nota from tb_estudantes where nota > 7;
select nome, nota from tb_estudantes where nota < 7;

update tb_estudantes set nota = 7.5 where id = 2;

select * from tb_estudantes;