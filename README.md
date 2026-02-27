# BikeStores SQL Challenge

Consultas SQL sobre a base de dados da empresa Bike Stores Inc para geração de métricas relevantes para as equipes de Marketing e Comercial.

## Tecnologias

- **T-SQL** (Transact-SQL)
- **SQL Server**

## Modelo de Dados

![Modelo de Dados](samples/model.png)

## Como instalar e usar

### Pré-requisitos

- SQL Server (ou SQL Server Express) instalado

### Passos

1. Execute o script de criação do banco e das tabelas:
   ```sql
   -- Execute o arquivo:
   CREATE_DB_AND_TABLES.sql
   ```

2. Execute o script de inserção dos dados fictícios:
   ```sql
   -- Execute o arquivo:
   SEEDING_TABLES_FAKE_DATA.sql
   ```

3. Execute as consultas de exemplo:
   ```sql
   -- Execute o arquivo:
   QUERIES_EXAMPLES.sql
   ```

## Consultas implementadas

- Listar todos os Clientes que não realizaram uma compra
- Listar os Produtos que não foram comprados
- Listar os Produtos sem Estoque
- Listar os Funcionários que não estão relacionados a nenhum Pedido
- Agrupar a quantidade de vendas por Marca e por Loja

---

> This is a challenge by [Coodesh](https://coodesh.com/)
