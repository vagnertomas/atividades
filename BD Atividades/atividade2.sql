CREATE TABLE chat(
    id_chat serial PRIMARY KEY,
	nome varchar(20),
	msg varchar(200)
)

SELECT * FROM chat ORDER BY chat;

INSERT INTO chat (nome,msg) values ('vagner','ola');
INSERT INTO chat (nome,msg) values ('gabriel','ola');
INSERT INTO chat (nome,msg) values ('evelyn', 'ola');
INSERT INTO chat (nome,msg) values ('maria', 'ola');
INSERT INTO chat (nome,msg) values ('larissa','ola');
INSERT INTO chat (nome,msg) values ('arthur','ola');
INSERT INTO chat (nome,msg) values ('domini','ola');
INSERT INTO chat (nome,msg) values ('gustavo','ola');
INSERT INTO chat (nome,msg) values ('willian','ola');
INSERT INTO chat (nome,msg) values ('agatha','ola');
INSERT INTO chat (nome,msg) values ('arthur2','ola');

UPDATE chat SET nome = 'vagner tomas', msg = 'hello' WHERE id_chat = 1;

DELETE FROM chat WHERE id_chat = 3;

DROP TABLE chat;