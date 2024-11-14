CREATE TABLE disciplina(
	
    id_disciplina serial PRIMARY KEY,
	nome_disciplina varchar(20),
	matricula_idfk int, FOREIGN KEY (matricula_idfk) REFERENCES professor(matricula)
	
);

SELECT * FROM disciplina ORDER BY disciplina;

INSERT INTO disciplina (nome_disciplina) values ('portugues');
INSERT INTO disciplina (nome_disciplina) values ('matematica');
INSERT INTO disciplina (nome_disciplina) values ('ingles');
INSERT INTO disciplina (nome_disciplina) values ('geografia');
INSERT INTO disciplina (nome_disciplina) values ('biologia');

CREATE TABLE professor(
	
	matricula serial PRIMARY KEY,
	nome_professor varchar (20),
	cpf varchar (20),
	data_nasc varchar (20),
	telefone varchar (20),
	endereço varchar (20)

);

SELECT * FROM professor ORDER BY professor;

INSERT INTO professor (matricula, nome_professor, cpf, data_nasc, telefone, endereço) values ('1', 'Vagner Tomas', '123.230.342-67', '27/04/1998', '(46) 92001-3567', 'Av. Rio Grande');
INSERT INTO professor (matricula, nome_professor, cpf, data_nasc, telefone, endereço) values ('2', 'Domini Eduardo', '543.762.893-21', '30/07/2000', '(46) 99546-7823', 'Rua 7 de Setembro');
INSERT INTO professor (matricula, nome_professor, cpf, data_nasc, telefone, endereço) values ('3', 'Gustavo Breier', '256.983.702-73', '03/10/1994', '(46) 99672-5692', 'Rua Paraná');
INSERT INTO professor (matricula, nome_professor, cpf, data_nasc, telefone, endereço) values ('4', 'Arthur Siega', '567.980.132-14', '12/08/1995', '(46) 99746-7832', 'Rua do Comércio');
INSERT INTO professor (matricula, nome_professor, cpf, data_nasc, telefone, endereço) values ('5', 'Kevin Guimrães', '634.872.941-52', '02/05/1990', '(46) 99725-9843', 'Rua 15 de Novembro');


UPDATE professor SET nome = 'Vagner Tomas', data_nasc = '27/04/1998' WHERE matricula = 1;
DROP TABLE professor;

SElECT nome_disciplina FROM professor
inner join disciplina on matricula_idfk = matricula;