CREATE TABLE `pedidos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` enum('Confirmado','Cancelado','Em andamento') DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `frete` float DEFAULT '10',
  `id_pagamento` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pedidos_cliente` (`id_cliente`),
  KEY `pedidos_pagamentos_FK` (`id_pagamento`),
  CONSTRAINT `fk_pedidos_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `pedidos_pagamentos_FK` FOREIGN KEY (`id_pagamento`) REFERENCES `pagamentos` (`id_pagamento`)
)