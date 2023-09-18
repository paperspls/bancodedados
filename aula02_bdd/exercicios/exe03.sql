CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
	Id BIGINT IDENTITY(1,1),
    Nome VARCHAR(255) NOT NULL,
    Sobrenome VARCHAR(255) NOT NULL,
    Nota DECIMAL(4, 2) NOT NULL,
    DataNascimento DATE
	PRIMARY KEY(Id)
);

INSERT INTO tb_estudantes(Nome, Sobrenome, Nota, DataNascimento)
VALUES
    ('João', 'Silva', 8.5, '2000-05-15'),
    ('Maria', 'Santos', 7.2, '2001-02-28'),
    ('Pedro', 'Oliveira', 6.8, '1999-09-10'),
    ('Ana', 'Pereira', 9.0, '2002-07-20'),
    ('Lucas', 'Fernandes', 6.5, '2000-11-03'),
    ('Laura', 'Rodrigues', 7.8, '2001-12-12'),
    ('Mariana', 'Gonçalves', 8.2, '1999-04-05'),
    ('Rafael', 'Carvalho', 6.0, '2002-03-25');

SELECT * FROM tb_estudantes WHERE Nota > 7.0;

SELECT * FROM tb_estudantes WHERE Nota < 7.0;

UPDATE tb_estudantes SET Nota = 8.5 WHERE ID = 6;






