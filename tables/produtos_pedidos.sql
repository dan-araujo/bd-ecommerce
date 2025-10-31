CREATE TABLE produtos_pedidos (
id_produto INT,
id_pedido INT,
quantidade_produtos INT DEFAULT 1,
status ENUM('Disponível', 'Em estoque') DEFAULT 'Disponível',
PRIMARY KEY (id_produto, id_pedido),
CONSTRAINT fk_produtos_pedidos FOREIGN KEY (id_produto) REFERENCES produtos(id),
CONSTRAINT fk_pedidos_produtos FOREIGN KEY (id_pedido) REFERENCES pedidos(id)
);