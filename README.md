# DBA Challenge - Bike Stores Inc

Consultas SQL sobre a base de dados da empresa Bike Stores Inc para obter métricas relevantes para as equipes de Marketing e Comercial.

## Tecnologias Utilizadas

- **SQL** (T-SQL / SQL Server)

## Modelo de Dados

![Modelo de Dados](samples/model.png)

## Como Instalar e Usar

### Pré-requisitos

- SQL Server (ou qualquer SGBD compatível com T-SQL, como Azure SQL ou SQL Server Express)

### Instalação

1. Clone este repositório:
   ```bash
   git clone https://github.com/johnsantanna/coodeshSQL.git
   cd coodeshSQL
   ```

2. Importe a base de dados **Bike Stores Inc** no seu servidor SQL. Você pode obter o script de criação da base em: https://www.sqlservertutorial.net/sql-server-sample-database/

3. Conecte-se ao banco de dados usando seu cliente SQL preferido (ex.: SQL Server Management Studio, DBeaver, Azure Data Studio).

### Executando as Consultas

Abra os arquivos `.sql` no seu cliente e execute-os contra o banco de dados **BikeStores**:

- **Clientes sem compras** – lista todos os clientes que não realizaram nenhuma compra.
- **Produtos não comprados** – lista os produtos que nunca foram vendidos.
- **Produtos sem estoque** – lista os produtos com quantidade zero em estoque.
- **Vendas por marca e loja** – agrupa a quantidade de vendas de cada marca por loja.
- **Funcionários sem pedido** – lista os funcionários que não estão associados a nenhum pedido.

## Consultas

### 1. Clientes que não realizaram compras

```sql
SELECT c.customer_id, c.first_name, c.last_name, c.email
FROM sales.customers c
LEFT JOIN sales.orders o ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;
```

### 2. Produtos que não foram comprados

```sql
SELECT p.product_id, p.product_name
FROM production.products p
LEFT JOIN sales.order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;
```

### 3. Produtos sem estoque

```sql
SELECT p.product_id, p.product_name, s.store_id, s.quantity
FROM production.products p
JOIN production.stocks s ON p.product_id = s.product_id
WHERE s.quantity = 0;
```

### 4. Quantidade de vendas por marca por loja

```sql
SELECT st.store_name, b.brand_name, COUNT(oi.order_id) AS total_vendas
FROM sales.orders o
JOIN sales.stores st ON o.store_id = st.store_id
JOIN sales.order_items oi ON o.order_id = oi.order_id
JOIN production.products p ON oi.product_id = p.product_id
JOIN production.brands b ON p.brand_id = b.brand_id
GROUP BY st.store_name, b.brand_name
ORDER BY st.store_name, total_vendas DESC;
```

### 5. Funcionários sem pedido relacionado

```sql
SELECT s.staff_id, s.first_name, s.last_name, s.email
FROM sales.staffs s
LEFT JOIN sales.orders o ON s.staff_id = o.staff_id
WHERE o.staff_id IS NULL;
```

---

> This is a challenge by [Coodesh](https://coodesh.com/)
