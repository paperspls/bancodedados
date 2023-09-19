USE db_quitanda;

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos ORDER BY Preco DESC;

SELECT * FROM tb_produtos ORDER BY Preco ASC;

SELECT * FROM tb_produtos WHERE id = 1;

SELECT * FROM tb_produtos WHERE  NOT id = 1;

SELECT* FROM tb_produtos WHERE Preco IN(5,2,8) ORDER BY Nome ASC;

SELECT * FROM tb_produtos WHERE Preco BETWEEN 
5 and 15;

SELECT * FROM tb_produtos WHERE Nome LIKE '%a';

