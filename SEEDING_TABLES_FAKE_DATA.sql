-- Populando as tabelas com dados ficticios

--brands
INSERT INTO brands VALUES
(1, 'brand 001'),
(2, 'brand 002'),
(3, 'brand 003');

--categories
INSERT INTO categories VALUES
(1, 'Category 001'),
(2, 'Category 002'),
(3, 'Category 003');

--stores
INSERT INTO stores VALUES
(1, 'Loja 01', '1111-1111', 'loja01@bike.com', 'Rua A', 'São Paulo', 'SP', '01000-000'),
(2, 'Loja 02', '2222-2222', 'loja02@bike.com', 'Rua B', 'São Paulo', 'SP', '02000-000'),
(3, 'Loja 03', '3333-3333', 'loja03@bike.com', 'Rua C', 'São Paulo', 'SP', '03000-000');

--customers
INSERT INTO customers VALUES
(1, 'João', 'Silva', '9999-1111', 'joao@email.com', 'Rua A', 'SP', 'SP', '01010-000'),
(2, 'Maria', 'Souza', '9999-2222', 'maria@email.com', 'Rua B', 'SP', 'SP', '02020-000'),
(3, 'Carlos', 'Lima', '9999-3333', 'carlos@email.com', 'Rua C', 'SP', 'SP', '03030-000');

--products
INSERT INTO products VALUES
(1, 'Bike 001', 1, 1, 2024, 3500.00),
(2, 'Bike 002', 1, 1, 2025, 4200.00),
(3, 'Bike 003', 1, 1, 2026, 1800.00);

--staffs
INSERT INTO staffs VALUES
(1, 'Ana', 'Costa', 'ana@bike.com', '8888-1111', 1, 1, NULL),
(2, 'Bruno', 'Alves', 'bruno@bike.com', '8888-2222', 1, 2, 1),
(3, 'Paula', 'Mendes', 'paula@bike.com', '8888-3333', 1, 3, 1);

--orders
INSERT INTO orders VALUES
(1, 1, 1, '2025-01-01', '2025-01-05', '2025-01-03', 1, 1),
(2, 2, 1, '2025-01-02', '2025-01-06', '2025-01-04', 2, 2),
(3, 1, 1, '2025-01-03', '2025-01-07', NULL, 1, 1);

--order_items
INSERT INTO order_items VALUES
(1, 1, 1, 2, 3500.00, 0.00),
(2, 1, 2, 1, 4200.00, 0.10),
(3, 1, 1, 1, 3500.00, 0.00);

--stocks
INSERT INTO stocks VALUES
(1, 1, 10),
(2, 2, 5),
(3, 3, 0);
