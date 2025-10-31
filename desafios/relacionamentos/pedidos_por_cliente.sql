-- Quantos pedidos foram feitos por cada cliente
-- Relacionamento: clientes (1) <--> (N) pedidos
SELECT 
c.nome AS cliente,
COUNT(p.id) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.id_cliente 
GROUP BY c.id, c.nome 
ORDER BY total_pedidos DESC;



