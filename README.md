# 🛒Projeto Lógico de Banco de Dados - E-commerce
Este projeto contém o **modelo lógico relacional** desenvolvido para representar o funcionamento de um sistema **E-commerce**, abrangendo entidades como clientes, pedidos, produtos, fornecedores, vendedores e estoques.

O projeto foi elaborado com base em **boas práticas de modelagem de dados** e implementado em **MySQL**, respeitando integridade referencial, normalização e clareza de relacionamentos.

---

## 📘 Objetivo

Reproduzir e refinar o modelo lógico de um cenário de comércio eletrônico, aplicando o mapeamento de entidades, relacionamentos e constraints e integridade.
Além disso, o projeto inclui a criação do **script SQL completo** com:
- Criação do esquema de banco de dados;
- Inserção de dados fictícios (para testes);
- Consultas SQL complexas utilizando `JOIN`, `GROUP BY`, `HAVING`, `CASE` e subqueries.

## 🧩 Estrutura do Banco de Dados
O modelo foi estruturado em **entidades principais** e **entidades associativas (intermediárias)**, permitindo relacionamentos do tipo 1:N e N:N de forma normalizada.

## 🗂️ Entidades Principais
 | Tabela | Função |
 |--------|--------|
 | **clientes** | Armazena informações pessoais e de contato dos clientes. |
 | **categorias** | Agrupa produtos por tipo (ração, brinquedos, higiene, etc.). |
 | **produtos** | Contém dados sobre os produtos disponíveis à venda. |
 | **fornecedores** | Registra empresas responsáveis pelo fornecimento de produtos. |
 | **vendedores** | Identifica os locais físicos onde os produtos estão armazenados. |
 | **pedidos** | Registra as compras feitas pelos clientes. |
 | **pagamentos** | Armazena informações de pagamento associadas aos pedidos. |

 ---

 ### 🔗 Entidades Associativas
 | Tabela | Relacionamento | Descrição |
 |--------|----------------|------------|
 | **produtos_estoque | **produtos ↔  estoque | Indica a quantidade de cada produto disponível em cada estoque. |**
 | **produtos_fornecedor** | produtos ↔ fornecedores | Mostra quais fornecedores fornecem cada produto. |
 | **produtos_vendedor | produtos ↔ vendedores | Define quais produtos são vendidos por cada vendedor. |**
 | **local_estoque** | produtos ↔ vendedores | Registra o local físico exato de cada produto em determinado estoque. |
 | **itens_pedido | pedidos ↔ produtos | Lista os produtos que compõem cada pedido, suas quantidades e preços unitários. |**
 | **produtos_pedidos** | produtos ↔ pedidos | Relaciona pedidos com produtos neles contidos (usado para relatórios logísticos). |

## 🧱 Modelo Entidade-Relacionamento (EER)

O diagrama abaixo representa a estrutura lógica do banco de dados, com as entidades, chaves-primárias, chaves-estrangeiras e relacionamentos definidos:

 📎**Arquivo:** `Diagrama Entidade-Relacionamento Aprimorado (EER).png` 
 ![Modelo EER](./Diagrama%20Entidade-Relacionamento%20Estendido%20(EER).png)

 > Esse modelo segue a filosofia **EER (Entidade-Relacionamento Aprimorado)**, incorporando entidades associativas, atributos derivados, restrições (`CHECK`, `DEFAULT`, `ENUM`), e mapeamento direto para o modelo físico relacional.

 ---

 ## 🧮 Exemplos de Queries SQL
 Neste repositório encontra-se alguns exemplos das consultas criadas para testar e validar a integridade e o relacionamento entre a tabelas do sistema:

##### Quantos pedidos foram feitos por cada cliente?
##### Algum vendedor também é fornecedor?
##### Quais produtos vêm de quais fornecedores e em quais estoques estão armazenados?
##### Quem fornece qual produto?
##### Quais clientes possuem pelo menos 1 pedido confirmado?
##### Produtos classificados com faixas de preço.
##### Quais produtos custam mais do que a média de preço de todos os produtos?


#### ⚙️Tecnologias Utilizadas
- **SGBG:** MySQL 8.0+
- **Ferramenta de modelagem:** DBeaver / MySQL Workbench
- **Linguagem SQL:** DDL, MDL, DQL
- **Charset:** utf8mb4 (suporte a acentuação e emojis)

### Conceitos Aplicados
- **Modelo EER (Entidade-Relacionamento Aprimorado)**
→ Utilização de entidades associativas, atributos derivados e especializações.
- **Normalização até 3ª Forma Normal (3FN)** para eliminar redundâncias.
- **Integridade referencial** via `FOREIGN KEY` e `ON DELETE/UPDATE`.
- **Atributos restritos** via `ENUM, DEFAULT` e `CHECK`
- **Relacionamentos N:N** resolvidos por tabelas intermediárias.
- **Queries complexas** com `JOIN, GROUP BY, HAVING` e `CASE`.


