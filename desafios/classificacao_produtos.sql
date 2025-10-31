SELECT p.nome AS produto, p.preco,
CASE 
	WHEN p.preco < 50 THEN 'Econômico'
	WHEN p.preco BETWEEN 50 AND 150 THEN 'Intermediário'
	WHEN p.preco > 150 THEN 'Premium'
	ELSE 'Sem classificação'
END AS categoria_preco
FROM produtos p
ORDER BY p.preco;
