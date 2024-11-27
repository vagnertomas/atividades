CREATE TABLE Clientes(
    ID_Cliente SERIAL PRIMARY KEY,
	NomeCliente varchar(20),
	Cpf bigint,
	DataNascimento date,
	Estado varchar(20),
	Cidade varchar(20),
	Rua varchar(20),
	Numero int,
	CEP bigint
);

DROP TABlE Clientes;

INSERT INTO Clientes (ID_Cliente, NomeCliente, Cpf, DataNascimento, Estado, Cidade, Rua, Numero, CEP)
VALUES ('01', 'João Ribas', '12829976397', '25/07/04', 'Parana', 'Curitiba', 'AV. 7 de Abril', '205', '8354000');
INSERT INTO Clientes (ID_Cliente, NomeCliente, Cpf, DataNascimento, Estado, Cidade, Rua, Numero, CEP)
VALUES ('02', 'Maria Luiza', '19072283641', '17/02/05', 'Parana', 'Curitiba', 'AV. Generoso Marques', '79', '8679000');
INSERT INTO Clientes (ID_Cliente, NomeCliente, Cpf, DataNascimento, Estado, Cidade, Rua, Numero, CEP)
VALUES ('03', 'Leticia Faria', '62791872502', '28/04/02', 'Parana', 'Curitiba', 'AV . 7 de Setembro', '304', '8945000');


CREATE TABLE Pedido(
    ID_Pedido SERIAL PRIMARY KEY,
	DataCriacao date,
	Status varchar(15),
	Cliente_IDFK int, FOREIGN KEY (Cliente_IDFK) REFERENCES Clientes (ID_Cliente)
);

DROP TABlE Pedido;

INSERT INTO Pedido (ID_Pedido, DataCriacao, Status, Cliente_IDFK)
VALUES ('10', '30/09/24', 'concluido', '02');
INSERT INTO Pedido (ID_Pedido, DataCriacao, Status, Cliente_IDFK)
VALUES ('20', '18/10/24', 'concluido', '01');
INSERT INTO Pedido (ID_Pedido, DataCriacao, Status, Cliente_IDFK)
VALUES ('30', '07/11/24', 'em andamento', '03');


CREATE TABLE ItemPedido(
    ID_ItemPedido SERIAL PRIMARY KEY,
	Quantidade_Compra int,
    ValorTotal numeric(10,2),
	Pedido_IDFK int, FOREIGN KEY (Pedido_IDFK) REFERENCES Pedido (ID_Pedido),
	Produto_IDFK int, FOREIGN KEY (Produto_IDFK) REFERENCES Produto (ID_Produto)
);
	
DROP TABlE ItemPedido;

INSERT INTO ItemPedido (ID_ItemPedido, Quantidade_Compra, ValorTotal, Pedido_IDFK, Produto_IDFK)
VALUES ('101', '1', '1500', '10', '112');
INSERT INTO ItemPedido (ID_ItemPedido, Quantidade_Compra, ValorTotal, Pedido_IDFK, Produto_IDFK)
VALUES ('102', '1', '2800', '20', '113');
INSERT INTO ItemPedido (ID_ItemPedido, Quantidade_Compra, ValorTotal, Pedido_IDFK, Produto_IDFK)
VALUES ('103', '1', '4800', '30', '114');


CREATE TABLE Produto(
    ID_Produto SERIAL PRIMARY KEY,
	Nome varchar(20),
	Descricao varchar(25),
	PrecoUnitario numeric(10,2),
	QuantidadeEstoque int,
	Fornecedor_IDFK int, FOREIGN KEY (Fornecedor_IDFK) REFERENCES Fornecedor (ID_Fornecedor)
);

DROP TABLE Produto;

INSERT INTO Produto (ID_Produto, Nome, Descricao, PrecoUnitario, QuantidadeEstoque, Fornecedor_IDFK)
VALUES ('112', 'Redmi Note 10', '126GB', '1500', '92', '40');
INSERT INTO Produto (ID_Produto, Nome, Descricao, PrecoUnitario, QuantidadeEstoque, Fornecedor_IDFK)
VALUES ('113', 'Iphone 12', '256GB', '2800', '37', '50');
INSERT INTO Produto (ID_Produto, Nome, Descricao, PrecoUnitario, QuantidadeEstoque, Fornecedor_IDFK)
VALUES ('114', 'Iphone 14', '256GB', '4800', '25', '50');


CREATE TABLE Fornecedor(
    ID_Fornecedor SERIAL PRIMARY KEY,
	Nome varchar(20),
	CNPJ bigint,
	Telefone bigint,
	Rua varchar(20),
	Numero int,
	Estado varchar(20),
	CEP bigint,
	Cidade varchar(20)
);

DROP TABLE Fornecedor;

INSERT INTO Fornecedor (ID_Fornecedor, Nome, CNPJ, Telefone, Rua, Numero, Estado, CEP, Cidade)
VALUES ('40', 'Xiomi', '26730000026', '41920013567', 'AV. México', '190', 'Parana', '8739000', 'Curitiba');
INSERT INTO Fornecedor (ID_Fornecedor, Nome, CNPJ, Telefone, Rua, Numero, Estado, CEP, Cidade)
VALUES ('50', 'Apple', '38940000023', '4198490620', 'AV. das Torres', '207', 'Parana', '8592000', 'Curitiba');


SELECT * FROM Clientes;

SELECT * FROM Pedido;

SELECT * FROM ItemPedido;

SELECT * FROM Produto;

SELECT * FROM Fornecedor;


SELECT MAX(PrecoUnitario) AS maior_valor FROM Produto;