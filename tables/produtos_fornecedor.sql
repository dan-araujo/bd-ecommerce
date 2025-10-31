CREATE TABLE produtos_fornecedor (
id_fornecedor INT,
id_produto INT,
endereco varchar(255) NOT NULL ,
PRIMARY KEY (id_fornecedor, id_produto),
CONSTRAINT fk_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES fornecedores(id),
CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES produtos(id)
);