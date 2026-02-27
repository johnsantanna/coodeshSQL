-- consultas de exemplo...

-- Listar todos os Clientes que não realizaram uma compra
SELECT c.* FROM customers c
LEFT JOIN orders o ON o.customer_id = c.customer_id
WHERE o.order_id IS NULL

-- Listar todos os Produtos que nunca foram vendidos
SELECT p.* FROM products p
LEFT JOIN order_items oi ON oi.product_id = p.product_id
WHERE oi.product_id IS NULL

-- Listar todos os Produtos que estão sem estoque
SELECT p.*, s.quantity FROM products p
JOIN stocks s ON s.product_id = p.product_id
WHERE s.quantity = 0

-- Listar todos os Funcionários que não realizaram pedidos
SELECT s.* FROM staffs s
LEFT JOIN orders o ON o.staff_id = s.staff_id
WHERE o.order_id IS NULL

-- Agrupar a quantidade de vendas por marca/loja
SELECT 
    st.store_name,
    b.brand_name,
    SUM(oi.quantity) total_vendido
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN products p ON p.product_id = oi.product_id
JOIN brands b ON b.brand_id = p.brand_id
JOIN stores st ON st.store_id = o.store_id
GROUP BY st.store_name, b.brand_name;

-- listar produtos sem estoque no total (todas as lojas)
SELECT
    p.product_id,
    p.product_name,
    SUM(s.quantity) AS estoque_total
FROM products p
JOIN stocks s ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.quantity) = 0;

-- agrupar a qtd de pedidos (COUNT) por marca/loja
SELECT
    st.store_name,
    b.brand_name,
    COUNT(*) AS total_itens_pedidos
FROM orders o
JOIN order_items oi ON oi.order_id = o.order_id
JOIN products p ON p.product_id = oi.product_id
JOIN brands b ON b.brand_id = p.brand_id
JOIN stores st ON st.store_id = o.store_id
GROUP BY st.store_name, b.brand_name;