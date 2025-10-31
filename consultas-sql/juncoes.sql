select c.nome as cliente, p.id, pr.nome as produto, ip.quantidade
from clientes c
join pedidos p on c.id = p.id_cliente
join itens_pedido ip on p.id = ip.id_pedido
join produtos pr on ip.id_produto = pr.id;