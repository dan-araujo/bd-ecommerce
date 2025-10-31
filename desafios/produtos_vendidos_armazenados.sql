-- JOIN completo
-- Quem vendeu o produto, onde ele estava armazenado e em qual pedido foi vendido
SELECT 
c.nome AS cliente,
v.nome AS vendedor,
pr.nome AS produto,
e.local AS local_estoque,
p.id AS pedido,
p.status, ip.quantidade,
(ip.quantidade * ip.preco_unitario) AS total_item
FROM itens_pedido ip
INNER JOIN pedidos p ON ip.id_pedido = p.id
INNER JOIN clientes c ON p.id_cliente = c.id
INNER JOIN produtos pr ON ip.id_produto = pr.id 
INNER JOIN produtos_vendedor pv ON pr.id = pv.id_produto 
INNER JOIN vendedores v ON pv.id_vendedor = v.id 
INNER JOIN produtos_estoque pe ON pr.id = pe.id_produto 
INNER JOIN estoque e ON pe.id_estoque = e.id 
ORDER BY p.id;


