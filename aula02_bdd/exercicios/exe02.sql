CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255),
    Descricao TEXT,
    Preco DECIMAL(10, 2),
    Quantidade INT
);

INSERT INTO tb_produtos(Nome, Descricao, Preco, Quantidade)
VALUES
    ('Camisa', 'Camisa bonita', 599.99, 10),
    ('Blusa', 'Blusa bonita', 299.95, 5),
    ('Calça', 'Calça bonita', 899.50, 8),
    ('Meia', 'Meia bonita', 149.75, 15),
    ('Jaqueta', 'Jaqueta bonita', 799.00, 12),
    ('Moletom', 'Moletom bonito', 249.99, 7),
    ('Touca', 'Toucas bonitas', 499.50, 20),
    ('Luvas', 'Luvas bonitas ', 399.95, 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Preco > 500;

SELECT * FROM tb_produtos WHERE Preco < 500;

UPDATE tb_produtos SET Preco = 699.99 WHERE ID = 1;




