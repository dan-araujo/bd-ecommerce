SELECT p.nome AS produto, p.preco 
FROM produtos p
WHERE p.preco > (SELECT AVG(preco) FROM produtos)
ORDER BY p.preco DESC;