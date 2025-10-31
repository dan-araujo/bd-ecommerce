-- ===========================
-- POPULAÇÃO DE DADOS E-COMMERCE
-- ===========================

-- 1️⃣ CATEGORIAS
INSERT INTO categorias (nome) VALUES
('Rações e Alimentos'),
('Brinquedos'),
('Higiene e Cuidados'),
('Acessórios'),
('Medicamentos'),
('Transporte'),
('Roupas e Estilo'),
('Camas e Casinhas'),
('Banho e Tosa'),
('Treinamento e Comportamento');

-- 2️⃣ CLIENTES
INSERT INTO clientes (nome, email, cpf, endereco) VALUES
('Ana Beatriz Silva', 'ana.silva@email.com', '12345678901', 'Rua das Flores, 123'),
('Bruno Oliveira', 'bruno.oliveira@email.com', '9765432100', 'Av. Recife, 55'),
('Carla Souza', 'carla.souza@email.com', '45678912300', 'Rua Pernambuco, 210'),
('Diego Santos', 'diego.santos@email.com', '32165498700', 'Rua Domingos, 44'),
('Eduarda Lima', 'eduarda.lima@email.com', '85274196300', 'Av. Paulista, 99'),
('Fernando Rocha', 'fernando.rocha@email.com', '15975348600', 'Rua das Oliveiras, 700'),
('Gabriela Castro', 'gabriela.castro@email.com', '25836914700', 'Rua Azul, 501'),
('Hugo Nascimento', 'hugo.nascimento@email.com', '74185296300', 'Rua Nova, 333'),
('Isabela Torres', 'isabela.torres@email.com', '96325874100', 'Av. Brasil, 12'),
('João Mendes', 'joao.mendes@email.com', '35795145600', 'Rua Rio Branco, 101');

-- 3️⃣ ESTOQUE
INSERT INTO estoque (local) VALUES
('Depósito Recife'),
('Depósito Olinda'),
('Loja Central'),
('Centro de Distribuição Sul'),
('Ponto Retirada Boa Viagem'),
('Armazém Paulista'),
('Loja Zona Norte'),
('Depósito Litoral'),
('Centro de Distribuição Norte'),
('Loja Shopping Recife');

-- 4️⃣ FORNECEDORES
INSERT INTO fornecedores (razao_social, cnpj, telefone) VALUES
('PetSupreme LTDA', '12345678000199', '(81) 99888-1111'),
('Animal Plus SA', '22345678000199', '(81) 91234-5678'),
('DogLovers LTDA', '32345678000199', '(81) 98888-2222'),
('PetHouse Comércio', '42345678000199', '(81) 97777-3333'),
('Pata&Cia', '52345678000199', '(81) 96666-4444'),
('VetBrasil Distribuidora', '62345678000199', '(81) 95555-5555'),
('TopPet LTDA', '72345678000199', '(81) 94444-6666'),
('Amigos do Pet', '82345678000199', '(81) 93333-7777'),
('MegaPet Distribuidora', '92345678000199', '(81) 92222-8888'),
('PetFood Nordeste', '11345678000199', '(81) 91111-9999');

-- 5️⃣ VENDEDORES
INSERT INTO vendedores (nome, email, telefone, tipo_vendedor, cpf_cnpj) VALUES
('Carlos Pereira', 'carlos.pereira@petshop.com', '(81) 99999-0001', 'Pessoa Física', '11111111111'),
('Fernanda Souza', 'fernanda.souza@petshop.com', '(81) 98888-0002', 'Pessoa Física', '22222222222'),
('Ricardo Lima', 'ricardo.lima@petshop.com', '(81) 97777-0003', 'Pessoa Física', '33333333333'),
('Amanda Rocha', 'amanda.rocha@petshop.com', '(81) 96666-0004', 'Pessoa Jurídica', '44444444000144'),
('Paulo Santos', 'paulo.santos@petshop.com', '(81) 95555-0005', 'Pessoa Jurídica', '55555555000155'),
('Juliana Alves', 'juliana.alves@petshop.com', '(81) 94444-0006', 'Pessoa Física', '66666666666'),
('Tiago Ramos', 'tiago.ramos@petshop.com', '(81) 93333-0007', 'Pessoa Física', '77777777777'),
('Luana Barros', 'luana.barros@petshop.com', '(81) 92222-0008', 'Pessoa Física', '88888888888'),
('Marcelo Gomes', 'marcelo.gomes@petshop.com', '(81) 91111-0009', 'Pessoa Jurídica', '99999999000199'),
('Patrícia Melo', 'patricia.melo@petshop.com', '(81) 90000-0010', 'Pessoa Física', '10101010101');

-- 6️⃣ PRODUTOS
INSERT INTO produtos (nome, preco, estoque, id_categoria) VALUES
('Ração Premium Cães Adultos 10kg', 129.90, 30, 1),
('Ração Gatos Filhotes 5kg', 89.90, 25, 1),
('Brinquedo Bola Mordedor', 25.00, 80, 2),
('Shampoo Neutro 500ml', 35.50, 60, 3),
('Coleira Antipulgas', 45.00, 50, 4),
('Suplemento Vitaminado Pet', 75.00, 40, 5),
('Caixa Transporte Média', 120.00, 15, 6),
('Camiseta Pet Fashion', 49.90, 70, 7),
('Cama Redonda Luxo', 180.00, 10, 8),
('Toalhas Higiênicas', 30.00, 100, 9);

-- 7️⃣ PRODUTOS_ESTOQUE
INSERT INTO produtos_estoque (id_produto, id_estoque, quantidade) VALUES
(1, 1, 20),
(2, 2, 15),
(3, 3, 40),
(4, 4, 25),
(5, 5, 30),
(6, 6, 10),
(7, 7, 8),
(8, 8, 12),
(9, 9, 6),
(10, 10, 35);

-- 8️⃣ PRODUTOS_FORNECEDOR
INSERT INTO produtos_fornecedor (id_fornecedor, id_produto, endereco) VALUES
(1, 1, 'Rua das Palmeiras, 111'),
(2, 2, 'Rua Aroeira, 222'),
(3, 3, 'Rua Acácias, 333'),
(4, 4, 'Rua Figueira, 444'),
(5, 5, 'Rua do Sol, 555'),
(6, 6, 'Rua Boa Vista, 666'),
(7, 7, 'Av. Norte, 777'),
(8, 8, 'Rua das Andorinhas, 888'),
(9, 9, 'Rua Vitória, 999'),
(10, 10, 'Av. Paulista, 1000');

-- 9️⃣ PRODUTOS_VENDEDOR
INSERT INTO produtos_vendedor (id_vendedor, id_produto, quantidade) VALUES
(1, 1, 10),
(2, 2, 15),
(3, 3, 30),
(4, 4, 20),
(5, 5, 10),
(6, 6, 8),
(7, 7, 5),
(8, 8, 7),
(9, 9, 6),
(10, 10, 12);

-- 🔟 LOCAL_ESTOQUE
INSERT INTO local_estoque (id_produto, id_estoque, local) VALUES
(1, 1, 'Depósito Recife - Ala A'),
(2, 2, 'Depósito Olinda - Setor 1'),
(3, 3, 'Loja Central - Prateleira B'),
(4, 4, 'CD Sul - Galpão 2'),
(5, 5, 'Boa Viagem - Bloco 3'),
(6, 6, 'Armazém Paulista - Setor C'),
(7, 7, 'Zona Norte - Prateleira D'),
(8, 8, 'Depósito Litoral - Ala E'),
(9, 9, 'CD Norte - Bloco F'),
(10, 10, 'Loja Shopping Recife - G1');

-- 11️⃣ PEDIDOS
INSERT INTO pedidos (status, descricao, id_cliente, frete) VALUES
('Confirmado', 'Pedido de ração e brinquedos', 1, 15.00),
('Em andamento', 'Pedido de shampoo e coleira', 2, 10.00),
('Confirmado', 'Pedido de suplemento', 3, 12.00),
('Cancelado', 'Pedido cancelado', 4, 0.00),
('Confirmado', 'Pedido de cama e toalhas', 5, 20.00),
('Em andamento', 'Pedido de ração', 6, 10.00),
('Confirmado', 'Pedido de brinquedo e camiseta', 7, 15.00),
('Confirmado', 'Pedido de transporte', 8, 18.00),
('Cancelado', 'Pedido não finalizado', 9, 0.00),
('Em andamento', 'Pedido de ração e suplemento', 10, 14.00);

-- 12️⃣ PAGAMENTOS
INSERT INTO pagamentos (id_cliente, forma_pagamento, limite_disponivel, id_pedido) VALUES
(1, 'Crédito', 1500, 1),
(2, 'Pix', 0, 2),
(3, 'Débito', 500, 3),
(4, 'Dinheiro', 0, 4),
(5, 'Crédito', 2000, 5),
(6, 'Pix', 0, 6),
(7, 'Débito', 800, 7),
(8, 'Crédito', 2500, 8),
(9, 'Dinheiro', 0, 9),
(10, 'Crédito', 1800, 10);

-- 13️⃣ ITENS_PEDIDO
INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 2, 129.90),
(1, 3, 1, 25.00),
(2, 4, 1, 35.50),
(2, 5, 1, 45.00),
(3, 6, 2, 75.00),
(5, 9, 1, 180.00),
(5, 10, 2, 30.00),
(6, 2, 3, 89.90),
(7, 3, 2, 25.00),
(8, 7, 1, 120.00);

-- 14️⃣ PRODUTOS_PEDIDOS
INSERT INTO produtos_pedidos (id_produto, id_pedido, quantidade_produtos, status) VALUES
(1, 1, 2, 'Disponível'),
(3, 1, 1, 'Em estoque'),
(4, 2, 1, 'Disponível'),
(5, 2, 1, 'Disponível'),
(6, 3, 2, 'Em estoque'),
(9, 5, 1, 'Disponível'),
(10, 5, 2, 'Disponível'),
(2, 6, 3, 'Em estoque'),
(3, 7, 2, 'Disponível'),
(7, 8, 1, 'Disponível');
