CREATE TABLE clientes (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE pedidos (
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    qtd_itens INT(10),
    total FLOAT,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

INSERT INTO clientes (nome, data_nascimento) VALUES ('Matheus', "1991-05-01");
INSERT INTO clientes (nome, data_nascimento) VALUES ('João', "1992-06-02");

-- pedidos do Matheus
INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES (5, 214.01, 1);
INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES (2, 358.36, 1);
INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES (6, 652.28, 1);

-- pedidos do Joao
INSERT INTO pedidos (qtd_itens, total, cliente_id) VALUES (2, 199.12, 2);

-- Um cliente pode ter diversos pedidos na loja, porém um pedido é de um único cliente.

SELECT * FROM pedidos;
SELECT * FROM clientes;

-- pedidos do Matheus que tem id = 1
SELECT clientes.nome, pedidos.id AS pedido_id
FROM clientes
JOIN pedidos ON pedidos.cliente_id = clientes.id
WHERE clientes.id = 1;

-- pedidos do Joao que tem id = 2
SELECT clientes.nome, pedidos.id AS pedido_id
FROM clientes
JOIN pedidos ON pedidos.cliente_id = clientes.id
WHERE clientes.id = 2;