CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR (255) NOT NULL,
	Cargo VARCHAR (255) NOT NULL, 
	DataAdmissao DATE,
	Salario DECIMAL(7,2) NOT NULL,
	PRIMARY KEY(Id)

);

INSERT INTO tb_funcionarios
(Nome, Cargo, DataAdmissao, Salario)
VALUES 
('Gabriel', 'Gerente', '2023-09-18', 4000.00),
('Pedro', 'Supervisor', '2023-05-31', 3000.00),
('Julia', 'Tech Engineer', '2022-01-12', 5650.00),
('Udson', 'Analista de Sistemas', '2023-05-14', 2000.00),
('Rhyan', 'CEO', '2021-05-14', 100.00);

SELECT * FROM tb_funcionarios WHERE Salario > 2000;

SELECT * FROM tb_funcionarios WHERE Salario < 2000;

UPDATE tb_funcionarios SET Salario = 1900.00 WHERE Id = 6;

SELECT * FROM tb_funcionarios;

