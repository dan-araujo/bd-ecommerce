select id_categoria, count(*) as quantidade_produtos, round(avg(preco), 2) as preco_medio
from produtos
group by id_categoria
having avg(preco) > 50;