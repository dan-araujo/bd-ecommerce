-- Quais produtos vêm de quais fornecedores e em quais estoques estão armazenados
-- Relacionamentos:
-- produtos <--> produtos_fornecedor <--> fornecedores
-- produtos <--> produtos_estoque <--> estoque
SELECT p.nome AS produto,
f.razao_social AS fornecedor,
e.LOCAL AS local_estoque,
pe.quantidade AS quantidade_estoque
FROM produtos p
INNER JOIN produtos_fornecedor pf ON p.id = pf.id_produto
INNER JOIN fornecedores f ON pf.id_fornecedor = f.id 
INNER JOIN produtos_estoque pe ON p.id = pe.id_produto 
INNER JOIN estoque e ON pe.id_estoque = e.id 
ORDER BY produto, fornecedor;