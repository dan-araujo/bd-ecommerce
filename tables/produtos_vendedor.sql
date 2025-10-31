CREATE TABLE produtos_vendedor (
id_vendedor INT,
id_produto INT,
quantidade INT DEFAULT 1,
PRIMARY KEY (id_vendedor, id_produto),
CONSTRAINT fk_vendedor_produtos FOREIGN KEY (id_vendedor) REFERENCES vendedores(id),
CONSTRAINT fk_produtos FOREIGN KEY (id_produto) REFERENCES produtos(id)
);
