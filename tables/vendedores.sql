CREATE TABLE vendedores (
id int PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
telefone VARCHAR(20),
tipo_vendedor ENUM('Pessoa Física', 'Pessoa Jurídica') DEFAULT 'Pessoa Física',
cpf_cnpj VARCHAR(20),
data_cadastro DATE DEFAULT (CURRENT_DATE),
status ENUM('Ativo', 'Inativo') DEFAULT 'Ativo',
CONSTRAINT vendedor_unico UNIQUE (cpf_cnpj),
CONSTRAINT vendedor_email_unico UNIQUE (email)
);