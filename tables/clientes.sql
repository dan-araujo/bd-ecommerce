CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(100) NOT NULL,
  `cpf` char(11) NOT NULL,
  `data_cadastro` date DEFAULT (curdate()),
  `endereco` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `cliente_cpf_unico` (`cpf`)
) 