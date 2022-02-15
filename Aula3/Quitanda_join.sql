use db_quitanda;

select * from tb_produtos;

-- selecionar usando %
select * from tb_produtos where nome like "A%" and nome like "%m";

-- contar registros
select count(id) from tb_produtos;

-- alterar
select sum(preco) as valortotal from tb_produtos;

-- alterar nomes dos atributos
select nome as produto, preco as valor from tb_produtos;

-- valor medio
select avg(preco) from tb_produtos;

-- valor min
select min(preco) from tb_produtos;

-- valor max
select max(preco) from tb_produtos;

-- relacionamentos entre tabelas
select * from 
tb_produtos left join tb_categorias 
on tb_produtos.categoria_id = tb_categorias.id;

select * from 
tb_produtos right join tb_categorias 
on tb_produtos.categoria_id = tb_categorias.id;

select * from 
tb_produtos inner join tb_categorias 
on tb_produtos.categoria_id = tb_categorias.id order by tb_produtos.id;