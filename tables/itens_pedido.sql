CREATE TABLE itens_pedido ( 
id_pedido INT NOT NULL,
id_produto INT NOT NULL,
quantidade INT NOT NULL check(quantidade > 0),
preco_unitario DECIMAL(10,2) NOT NULL CHECK (preco_unitario > 0),
PRIMARY KEY (id_pedido, id_produto),
CONSTRAINT fk_itens_pedido FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
CONSTRAINT fk_itens_pedido_produto FOREIGN KEY (id_produto) REFERENCES produtos(id)
);



