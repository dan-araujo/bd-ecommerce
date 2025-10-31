SELECT 
    c.nome AS cliente,
    COUNT(p.id) AS total_confirmados
FROM clientes c
INNER JOIN pedidos p ON c.id = p.id_cliente
WHERE p.status = 'Confirmado'
GROUP BY c.id, c.nome
HAVING COUNT(p.id) >= 1
ORDER BY total_confirmados DESC;