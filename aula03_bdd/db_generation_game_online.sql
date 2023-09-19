CREATE DATABASE db_generation_game_online;
GO

USE db_generation_game_online;
GO

--TABELA DE CLASSES
CREATE TABLE tb_classes (
    Id BIGINT IDENTITY(1,1),
    nome_classe VARCHAR(50),
    descricao VARCHAR(255)
	PRIMARY KEY(Id)
);

--TABELA DE PERSONAGENS
CREATE TABLE tb_personagens (
    Id BIGINT IDENTITY(1,1),
    nome VARCHAR(50),
    poder_ataque INT,
    poder_defesa INT,
    classe_id BIGINT,
	PRIMARY KEY (Id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(Id)
);


INSERT INTO tb_classes (nome_classe, descricao)
VALUES
    ('Guerreiro', 'Lutador corpo a corpo'),
    ('Mago', 'Dominador de feitiços'),
    ('Arqueiro', 'Especialista em arco'),
    ('Ladrão', 'Assasino rápido e sorrateiro'),
    ('Cavaleiro', 'Lutador com armadura pesada');


INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, classe_id)
VALUES
    ('Herói', 2500, 1500, 1),
    ('Feiticeira', 1800, 1200, 2),
    ('Arqueira', 2100, 900, 3),
    ('Ladrão Furtivo', 1600, 800, 4),
    ('Cavaleiro da Justiça', 2200, 1800, 5),
    ('Guerreiro Valente', 2800, 1600, 1),
    ('Mago das Sombras', 2000, 1100, 2),
    ('Arqueiro Rápido', 1900, 1200, 3);


SELECT * FROM tb_personagens WHERE poder_ataque > 2000;


SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;


SELECT * FROM tb_personagens WHERE nome LIKE '%C%';


SELECT p.*, c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.Id;

SELECT p.*, c.nome_classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.classe_id = c.Id
WHERE c.nome_classe = 'Arqueiro';
