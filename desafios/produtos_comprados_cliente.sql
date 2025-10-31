-- JOIN intermediário
-- Quais produtos foram comprados em cada pedido, e quem foi o cliente?
SELECT 
c.nome AS cliente,
p.id AS pedido,
pr.nome AS produto,
i.quantidade, i.preco_unitario,
(i.quantidade * i.preco_unitario) AS total_item
FROM itens_pedido i
INNER JOIN pedidos p ON i.id_pedido = p.id
INNER JOIN clientes c ON p.id_cliente = c.id 
INNER JOIN produtos pr ON i.id_produto = pr.id;
