-- Quem forneceu qual produto
-- Relacionamento: fornecedores <--> produtos_fornecedor <--> produtos
SELECT 
f.razao_social AS fornecedor, 
p.nome AS produto
FROM fornecedores f 
INNER JOIN produtos_fornecedor pf ON f.id = pf.id_fornecedor 
INNER JOIN produtos p ON pf.id_produto = p.id 
ORDER BY f.razao_social, p.nome;