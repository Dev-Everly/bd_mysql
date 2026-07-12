CREATE DATABASE db_ecommerce;

USE db_ecommerce;

-- Criando tabela
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    quantidade INT
);

-- Inserindo registros
INSERT INTO tb_produtos(nome, preco, categoria, quantidade)
VALUES
("Notebook Dell Inspiron", 3500.00, "Informática", 15),
("Smartphone Samsung Galaxy A55", 2200.00, "Celulares", 25),
("Mouse Gamer RGB", 150.00, "Periféricos", 40),
("Teclado Mecânico", 450.00, "Periféricos", 30),
("Monitor LG 24 Polegadas", 899.90, "Monitores", 20),
("Headset Gamer", 299.90, "Áudio", 35),
("Smart TV 50 Polegadas", 2800.00, "Eletrônicos", 10),
("Webcam Full HD", 199.90, "Acessórios", 18);

-- Produtos com valor maior que 500
SELECT * FROM tb_produtos
WHERE preco > 500.00;

-- Produtos com valor menor que 500
SELECT * FROM tb_produtos
WHERE preco < 500.00;

SELECT * FROM tb_produtos;

-- Atualização de registro
UPDATE tb_produtos
SET preco = 399.90
WHERE id = 4;


 #Verificando se a atualização deu certo
SELECT * FROM tb_produtos WHERE id = 4;
