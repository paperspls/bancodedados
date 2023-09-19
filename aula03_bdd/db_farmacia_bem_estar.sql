CREATE DATABASE db_farmacia_bem_estar;
GO

USE db_farmacia_bem_estar;
GO


CREATE TABLE tb_categorias (
    Id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(255)
);


CREATE TABLE tb_produtos (
    Id BIGINT IDENTITY(1,1) PRIMARY KEY,
    nome_produto VARCHAR(50) NOT NULL,
    descricao_produto VARCHAR(255),
    valor DECIMAL(10, 2) NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(Id)
);


INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES
    ('Medicamentos', 'Produtos farmacêuticos para tratamento médico'),
    ('Higiene Pessoal', 'Produtos de higiene e cuidados pessoais'),
    ('Vitaminas e Suplementos', 'Suplementos nutricionais e vitaminas'),
    ('Cosméticos', 'Produtos de beleza e cuidados com a pele'),
    ('Cuidados com o Bebê', 'Produtos para bebês e cuidados infantis');


INSERT INTO tb_produtos (nome_produto, descricao_produto, valor, categoria_id)
VALUES
    ('Paracetamol', 'Analgésico e antitérmico', 10.00, 1),
    ('Sabonete', 'Sabonete líquido hidratante', 5.50, 2),
    ('Multivitamínico', 'Suplemento vitamínico diário', 20.00, 3),
    ('Base para Maquiagem', 'Base líquida de alta cobertura', 25.00, 4),
    ('Fralda Descartável', 'Fraldas tamanho P', 15.00, 5),
    ('Ibuprofeno', 'Anti-inflamatório', 8.00, 1),
    ('Shampoo', 'Shampoo para cabelos secos', 12.00, 2),
    ('Creme Hidratante', 'Creme hidratante para o corpo', 18.00, 4);


SELECT * FROM tb_produtos WHERE valor > 50.00;


SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;


SELECT * FROM tb_produtos WHERE nome_produto LIKE '%C%';


SELECT p.*, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.Id;


SELECT p.*, c.nome_categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.Id
WHERE c.nome_categoria = 'Higiene Pessoal';