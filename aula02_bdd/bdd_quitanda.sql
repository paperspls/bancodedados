CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT, 
	DataValidade DATE,
	Preco DECIMAL NOT NULL,
	PRIMARY KEY(Id)

);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES 
('Laranja', 20, '2023-09-18', 8.00),
('Couve', 35, '2023-09-18', 5.00),
('Banana', 25, '2023-09-18', 16.00),
('Maçã', 10, '2023-09-18', 15.25);

SELECT * FROM tb_produtos WHERE Id = 1;

SELECT * FROM tb_produtos WHERE Nome = 'Banana';

SELECT Nome, Quantidade, Preco FROM tb_produtos WHERE Nome = 'Banana';

SELECT * FROM tb_produtos WHERE Id = 1 OR Id = 2 OR Id = 3;

SELECT * FROM tb_produtos WHERE preco > 4 AND preco < 10;

ALTER TABLE tb_produtos ALTER COLUMN preco DECIMAL (6,2);

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES 
('Milho', 20, '2023-09-18', 10.25);

ALTER TABLE tb_produtos ADD Descricao VARCHAR(255); 

UPDATE tb_produtos SET Descricao = 'Milho verde natural' WHERE Id = 9;

DELETE FROM tb_produtos WHERE Id = 6;