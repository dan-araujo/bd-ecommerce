CREATE TABLE produtoS_estoque (
id_produto INT,
id_estoque INT, 
quantidade INT NOT NULL,
PRIMARY KEY (id_produto, id_estoque),
CONSTRAINT fk_produtoestoque_produto FOREIGN KEY (id_produto) REFERENCES produtos(id),
CONSTRAINT fk_produtoestoque_estoque FOREIGN KEY (id_estoque) REFERENCES estoque(id)
);

