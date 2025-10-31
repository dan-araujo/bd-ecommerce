CREATE TABLE fornecedores (
id int PRIMARY KEY AUTO_INCREMENT,
razao_social varchar(45) NOT NULL, 
cnpj varchar(14) NOT NULL,
telefone varchar(20) NOT NULL,
CONSTRAINT fornecedor_unico UNIQUE (cnpj)
);