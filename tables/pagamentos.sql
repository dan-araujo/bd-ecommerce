create table pagamentos (
id_pagamento int primary key auto_increment,
id_cliente int,
id_pedido int,
forma_pagamento enum('Pix', 'Crédito', 'Debito', 'Dinheiro'),
limite_disponivel float,
constraint fk_pagamento_cliente foreign key(id_cliente) references clientes(id),
constraint fk_pagamento_pedido foreign key(id_pedido) references pedidos(id)
);