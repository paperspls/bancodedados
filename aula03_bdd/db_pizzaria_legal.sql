CREATE DATABASE db_pizzaria_legal;
GO

USE db_pizzaria_legal;
GO

CREATE TABLE tb_categorias (
    Id BIGINT IDENTITY(1,1),
    nome_categoria VARCHAR(50),
    descricao_categoria VARCHAR(255),
	PRIMARY KEY (Id)
);


CREATE TABLE tb_pizzas (
    Id BIGINT IDENTITY(1,1),
    nome_pizza VARCHAR(50),
    descricao_pizza VARCHAR(255),
    valor DECIMAL(10, 2),
    categoria_id BIGINT,
	 PRIMARY KEY(Id),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);


INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
    ('Salgadas', 'Pizzas com recheios salgados'),
    ('Doces', 'Pizzas com recheios doces'),
    ('Vegetarianas', 'Pizzas vegetarianas'),
    ('Especiais', 'Pizzas especiais'),
    ('Calzones', 'Calzones recheados');


INSERT INTO tb_pizzas (nome_pizza, descricao_pizza, valor, categoria_id)
VALUES
    ('Margherita', 'Molho de tomate, muçarela e manjericão', 50.00, 1),
    ('Pepperoni', 'Molho de tomate, muçarela e pepperoni', 55.00, 1),
    ('Brigadeiro', 'Chocolate, leite condensado e granulado', 40.00, 2),
    ('Vegetariana', 'Molho de tomate, muçarela e vegetais', 48.00, 3),
    ('Frango com Catupiry', 'Molho de tomate, frango e Catupiry', 60.00, 4),
    ('Calzone de Calabresa', 'Calabresa, muçarela e molho de tomate', 52.00, 5),
    ('Mussarela', 'Molho de tomate e muçarela', 45.00, 1),
    ('Quatro Queijos', 'Molho de tomate e quatro tipos de queijo', 55.00, 1);


SELECT * FROM tb_pizzas WHERE valor > 45.00;


SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;


SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

SELECT p.*, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.Id;

SELECT p.*, c.nome_categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.categoria_id = c.Id
WHERE c.nome_categoria = 'Doces';