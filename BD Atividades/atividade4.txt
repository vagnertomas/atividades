CREATE TABLE autores(

    id_autor serial PRIMARY KEY,
    nome_autor varchar (50),
	data_nascimento date,
	nacionalidade varchar(30)
)
INSERT INTO autores (nome_autor, data_nascimento, nacionalidade) VALUES ('João', '29/07/1968', 'Brasileiro');
INSERT INTO autores (nome_autor, data_nascimento, nacionalidade) VALUES ('Lucas', '16/03/1973', 'Brasileiro');
INSERT INTO autores (nome_autor, data_nascimento, nacionalidade) VALUES ('Rafael', '23/11/1965', 'Brasileiro');
INSERT INTO autores (nome_autor, data_nascimento, nacionalidade) VALUES ('Pedro', '07/02/1982', 'Brasileiro');
INSERT INTO autores (nome_autor, data_nascimento, nacionalidade) VALUES ('José', '03/12/1957', 'Brasileiro');

CREATE TABLE livros(

    id_livro serial PRIMARY KEY,
    titulo varchar(50),
    idfk_autor int, FOREIGN KEY (idfk_autor) REFERENCES autores (id_autor),
	data_publicação date,
	preço numeric(10,2),
    estoque int
)
INSERT INTO livros (titulo, idfk_autor, data_publicação, preço, estoque) VALUES ('Metamorfose', '1', '07/10/1997', '65.00', '50');
INSERT INTO livros (titulo, idfk_autor, data_publicação, preço, estoque) VALUES ('Não Confunda', '2', '10/08/2004', '70.00', '40');
INSERT INTO livros (titulo, idfk_autor, data_publicação, preço, estoque) VALUES ('Todo Dia', '3', '03/09/1992', '50.00', '30');
INSERT INTO livros (titulo, idfk_autor, data_publicação, preço, estoque) VALUES ('Judas', '4', '20/05/2008', '45.00', '50');
INSERT INTO livros (titulo, idfk_autor, data_publicação, preço, estoque) VALUES ('Arte Mágica', '5', '26/05/1989', '60.00', '40');


CREATE TABLE clientes(

    id_cliente serial PRIMARY KEY,
    nome_cliente varchar(50),
    email varchar(50),
    telefone varchar(15),
    data_cadastro date
)
INSERT INTO clientes (nome_cliente, email, telefone, data_cadastro) VALUES ('Gabriel Refatti', 'reffati@gmail.com', '(46)99782-9812', '22/08/2023');
INSERT INTO clientes (nome_cliente, email, telefone, data_cadastro) VALUES ('Domini Eduardo', 'domini@gmail.com', '(46)99302-3721', '17/04/2023');
INSERT INTO clientes (nome_cliente, email, telefone, data_cadastro) VALUES ('Arthur Siega', 'siega@gmail.com', '(46)98449-7621', '03/10/2023');
INSERT INTO clientes (nome_cliente, email, telefone, data_cadastro) VALUES ('Gustavo Breier', 'breier@gmail.com', '(46)99406-2189', '12/07/2023');
INSERT INTO clientes (nome_cliente, email, telefone, data_cadastro) VALUES ('Vagner Tomas', 'vagner@gmail.com', '(46)92001-3567', '27/09/2023');


CREATE TABLE vendas(

    id_venda serial PRIMARY KEY,
    idfk_cliente int, FOREIGN KEY (idfk_cliente) REFERENCES clientes (id_cliente),
    data_venda date,
    valor_total decimal(10,2)
)
INSERT INTO vendas (idfk_cliente, data_venda, valor_total) VALUES ('1', '05/11/2023', '60.00');
INSERT INTO vendas (idfk_cliente, data_venda, valor_total) VALUES ('2', '28/10/2023', '50.00');
INSERT INTO vendas (idfk_cliente, data_venda, valor_total) VALUES ('3', '15/11/2023', '45.00');
INSERT INTO vendas (idfk_cliente, data_venda, valor_total) VALUES ('4', '03/12/2023', '65.00');
INSERT INTO vendas (idfk_cliente, data_venda, valor_total) VALUES ('5', '14/12/2023', '70.00');


CREATE TABLE itens_vendas(

    id_item serial PRIMARY KEY,
	idfk_venda int, FOREIGN KEY (idfk_venda) REFERENCES vendas (id_venda),
	idfk_livro int, FOREIGN KEY (idfk_livro) REFERENCES livros (id_livro),
	quantidade int,
	preco_unitario numeric(10,2)
)
INSERT INTO itens_vendas (idfk_venda, idfk_livro, quantidade, preco_unitario) VALUES ('1', '5', '1', '60.00');
INSERT INTO itens_vendas (idfk_venda, idfk_livro, quantidade, preco_unitario) VALUES ('2', '3', '1', '50.00');
INSERT INTO itens_vendas (idfk_venda, idfk_livro, quantidade, preco_unitario) VALUES ('3', '4', '1', '45.00');
INSERT INTO itens_vendas (idfk_venda, idfk_livro, quantidade, preco_unitario) VALUES ('4','1', '1', '65.00');
INSERT INTO itens_vendas (idfk_venda, idfk_livro, quantidade, preco_unitario) VALUES ('5', '2', '1', '70.00');


SELECT * FROM autores;
SELECT * FROM livros;
SELECT * FROM clientes;
SELECT * FROM vendas;
SELECT * FROM itens_vendas;


SELECT titulo, nome_autor FROM livros
INNER JOIN autores ON livros.idfk_autor = autores.id_autor;


SELECT idfk_cliente, nome_cliente, data_venda, titulo, nome_autor, preço FROM vendas
INNER JOIN clientes ON id_cliente = idfk_cliente
INNER JOIN itens_vendas ON idfk_venda = id_venda
INNER JOIN livros ON idfk_livro = id_livro
INNER JOIN autores ON idfk_autor = id_autor
where idfk_cliente = 5