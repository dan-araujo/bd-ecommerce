CREATE TABLE local_estoque (
id_produto INT NOT NULL ,
id_estoque INT NOT NULL,
local VARCHAR(255) NOT NULL,
PRIMARY KEY (id_produto, id_estoque),
CONSTRAINT fk_local_estoque_produto FOREIGN KEY (id_produto) REFERENCES produtos(id),
CONSTRAINT fk_local_estoque FOREIGN KEY (id_estoque) REFERENCES estoque(id)
);