-- Verificar se algum vendedor também é fornecedor
-- Relacionamento: não há FK direita, mas ambos têm campos de identificação fiscal (cpf_cnpj e cnpj)
SELECT 
v.nome AS vendedor,
f.razao_social AS fornecedor,
v.cpf_cnpj AS identificador_comum
FROM vendedores v
INNER JOIN fornecedores f ON v.cpf_cnpj = f.cnpj;