CREATE TABLE clientes( 
	id_cliente serial PRIMARY KEY, 
    nome_cliente varchar(30),
	cpf bigint,
	data_nascimento date,
	rua_cliente varchar(20),
	numero_cliente varchar(15),
	cidade_cliente varchar(20),
	estado_cliente varchar(15),
	cep_cliente varchar(20)
);

INSERT INTO clientes (nome_cliente, cpf, data_nascimento, rua_cliente, numero_cliente, cidade_cliente, estado_cliente, cep_cliente)
VALUES ('Maria Silva', '1234567800', '1985-05-15', 'Rua das Laranjeiras', '100', 'São Paulo', 'SP', '01000-000');
INSERT INTO clientes (nome_cliente, cpf, data_nascimento, rua_cliente, numero_cliente, cidade_cliente, estado_cliente, cep_cliente)
VALUES ('João Santos', '98765432100', '1990-07-20', 'Av.Paulista', '1500', 'São Paulo', 'SP', '01310-200');
INSERT INTO clientes (nome_cliente, cpf, data_nascimento, rua_cliente, numero_cliente, cidade_cliente, estado_cliente, cep_cliente)
VALUES ('Ana Pereira', '11223344556', '1987-11-10', 'Rua Verde', '200', 'Campinas', 'SP', '13040-000');
INSERT INTO clientes (nome_cliente, cpf, data_nascimento, rua_cliente, numero_cliente, cidade_cliente, estado_cliente, cep_cliente)
VALUES ('Carlos Moura', '33445566778', '1975-02-25', ' Av.Brasil', '3000', 'Rio de Janeiro', 'RJ', '22050-001');
INSERT INTO clientes (nome_cliente, cpf, data_nascimento, rua_cliente, numero_cliente, cidade_cliente, estado_cliente, cep_cliente)
VALUES ('Laura Dias', '99887766554', '1982-09-05', 'Rua das Flores', '1100', 'Curitiba', 'PR', '80050-010');
INSERT INTO clientes (nome_cliente, cpf, data_nascimento, rua_cliente, numero_cliente, cidade_cliente, estado_cliente, cep_cliente)
VALUES ('Pedro Rocha', '22334455667', '1995-01-15', 'Rua das Palmeiras', '500', 'Belo Horizonte', 'MG', '30130-000');
INSERT INTO clientes (nome_cliente, cpf, data_nascimento, rua_cliente, numero_cliente, cidade_cliente, estado_cliente, cep_cliente)
VALUES ('Vanessa Lopes', '55443322110', '1989-04-27', 'Av.Independencia', '210', 'Porto Alegre', 'RS', '90020-001');
INSERT INTO clientes (nome_cliente, cpf, data_nascimento, rua_cliente, numero_cliente, cidade_cliente, estado_cliente, cep_cliente)
VALUES ('Fernando Almeida',	'66778899001', '1978-11-05', 'Rua Central', '303',	'Florianópolis', 'SC', '88030-200');
INSERT INTO clientes (nome_cliente, cpf, data_nascimento, rua_cliente, numero_cliente, cidade_cliente, estado_cliente, cep_cliente)
VALUES ('Julia Souza', '11235813213', '1992-12-10', 'Rua Augusta',	'800', 'São Paulo',	'SP', '01400-400');
INSERT INTO clientes (nome_cliente, cpf, data_nascimento, rua_cliente, numero_cliente, cidade_cliente, estado_cliente, cep_cliente)
VALUES ('Bruno Oliveira', '99887722112', '1991-03-18', 'Av. Angélica',	'350', 'São Paulo',	'SP', '01227-200');

DROP TABLE clientes;


CREATE TABLE produtos(
    id_produtos serial PRIMARY KEY,
    nome_produtos varchar(30),
	descriçao varchar(30),
	preço_unitario numeric(10,2),
    estoque numeric(10,0)
);

INSERT INTO produtos (id_produtos, nome_produtos, descriçao, preço_unitario, estoque)
VALUES ('101', 'Notebook Dell', 'Notebook i5 8GB 256GB SSD', '3500', '15');
INSERT INTO produtos (id_produtos, nome_produtos, descriçao, preço_unitario, estoque)
VALUES ('102', 'Smartphone Samsung', 'Galaxy S21 128GB', '2800', '30');
INSERT INTO produtos (id_produtos, nome_produtos, descriçao, preço_unitario, estoque)
VALUES ('103', 'Impressora HP', 'Impressora a jato de tinta', '600', '20');
INSERT INTO produtos (id_produtos, nome_produtos, descriçao, preço_unitario, estoque)
VALUES ('104', 'Teclado Mêcanico', 'Teclado RGB gamer', '250', '50');
INSERT INTO produtos (id_produtos, nome_produtos, descriçao, preço_unitario, estoque)
VALUES ('105', 'Mause Logitech', 'Mouse óptico sem fio', '120', '60');
INSERT INTO produtos (id_produtos, nome_produtos, descriçao, preço_unitario, estoque)
VALUES ('106', 'Monitor LG', 'Monitor 24 polegadas', '700', '25');
INSERT INTO produtos (id_produtos, nome_produtos, descriçao, preço_unitario, estoque)
VALUES ('107', 'HD Externo Seagate', 'Monitor 24 polegadas', '700', '25');
INSERT INTO produtos (id_produtos, nome_produtos, descriçao, preço_unitario, estoque)
VALUES ('108', 'SSD Kingston', 'SSD 512GB', '400', '35');
INSERT INTO produtos (id_produtos, nome_produtos, descriçao, preço_unitario, estoque)
VALUES ('109', 'Câmera Logitech', 'Câmera de videoconferência', '950', '10');
INSERT INTO produtos (id_produtos, nome_produtos, descriçao, preço_unitario, estoque)
VALUES ('110', 'Caixa de Som JBL', 'Caixa de som Bluetooth', '300', '20');

DROP TABLE produtos;


CREATE TABLE fornecedores(
	id_fornecedor serial PRIMARY KEY,
	nome_fornecedor varchar(20),
	cnpj bigint,
	telefone varchar(20),
	rua_fornecedor varchar(20),
	numero_fornecedor varchar(15),
	cidade_fornecedor varchar(20),
	estado_fornecedor varchar(15),
	cep_fornecedor varchar(20)
);

INSERT INTO fornecedores (id_fornecedor, nome_fornecedor, cnpj, telefone, rua_fornecedor, numero_fornecedor, cidade_fornecedor, estado_fornecedor, cep_fornecedor) VALUES
(201,	'Tech Distribuidora', '12345678000190', '(11) 4000-3000', 'Rua da Liberdade', '500', 'São Paulo', 'SP', '01500-000'),
(202,	'Eletrônicos Brasil', '98765432000180', '(21) 2500-4000', 'Rua das Flores', '80', 'Rio de Janeiro', 'RJ', '20030-001'),
(203,	'FastTech',	'34567890000150', '(31) 3500-3200', 'Av. Amazonas', '1200', 'Belo Horizonte', 'MG', '30140-000'),
(204,	'Digital Solutions', '45678912000170', '(41) 3200-2500', 'Av. do Comércio', '750',	'Curitiba',	'PR', '80060-050'),
(205,	'PC Hardware', '56789123000130', '(51) 3200-3200',	'Rua Sete de Setembro',	'999', 'Porto Alegre', 'RS', '90030-020'),
(206,	'EletroShop', '67891234000110', '(21) 2500-8000', 'Av. Presidente', '100', 'Rio de Janeiro', 'RJ',	'20040-040');

DROP TABLE fornecedor;


CREATE TABLE pedidos(
	numero_pedido serial PRIMARY KEY,
	idfk_cliente int, FOREIGN KEY (idfk_cliente) REFERENCES clientes (id_cliente),
	data_criaçao date,
	status varchar(25)
);

INSERT INTO pedidos (numero_pedido, idfk_cliente, data_criaçao, status) VALUES
(1001,	1,	'2024-10-01',	'Concluído'),
(1002,	2,	'2024-10-03',	'Em andamento'),
(1003,	3,	'2024-10-05',	'Concluído'),
(1004,	4,	'2024-10-06',	'Cancelado'),
(1005,	5,	'2024-10-07',	'Em andamento'),
(1006,	6,	'2024-10-08',	'Concluído'),
(1007,	7,	'2024-10-10',	'Em andamento'),
(1008,	8,	'2024-10-12',	'Concluído'),
(1009,	9,	'2024-10-15',	'Cancelado'),
(1010,	10,	'2024-10-18',	'Em andamento');

DROP TABLE pedidos;


CREATE TABLE itens_pedidos(
   fk_numero_pedido int, FOREIGN KEY (fk_numero_pedido) REFERENCES pedidos (numero_pedido),
   idfk_produtos int, FOREIGN KEY (idfk_produtos) REFERENCES produtos (id_produtos),
   quantidade varchar(20),
   valor_total numeric(10,2)
);

INSERT INTO itens_pedidos (fk_numero_pedido, idfk_produtos, quantidade, valor_total) VALUES
(1001,	101,	1,	3500.00),
(1001,	104,	2,	500.00),
(1002,	102,	1,	2800.00),
(1003,	103,	1,	600.00),
(1003,	104,	1,	250.00),
(1004,	105,	2,	240.00),
(1005,	106,	1,	700.00),
(1006,	107,	3,	1050.00),
(1007,	108,	2,	800.00),
(1008,	109,	1,	950.00);

DROP TABLE itens_pedidos;


SELECT * FROM clientes ORDER BY clientes;
SELECT * FROM produtos ORDER BY produtos;
SELECT * FROM fornecedores ORDER BY fornecedores;
SELECT * FROM pedidos ORDER BY pedidos;
SELECT * FROM itens_pedidos ORDER BY itens_pedidos;


SELECT nome_cliente, data_criaçao FROM clientes
INNER JOIN pedidos ON clientes.id_cliente = pedidos.idfk_cliente;

INNER JOIN itens_pedidos ON 


SELECT MIN(preço_unitario) AS menor_valor FROM produtos;
SELECT MAX(preço_unitario) AS maior_valor FROM produtos;