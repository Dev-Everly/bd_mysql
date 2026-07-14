CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

 
CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(500),
receita_obrigatoria BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    valor DECIMAL(8, 2) NOT NULL,
    quantidade_estoque INT NOT NULL,
    marca VARCHAR(100),
    categoria_id BIGINT,
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) 
        REFERENCES tb_categorias(id) ON DELETE SET NULL
);

INSERT INTO tb_categorias (nome, descricao, receita_obrigatoria) VALUES
('Medicamentos', 'Remédios para tratamento de doenças e sintomas', TRUE),
('Cosméticos', 'Produtos para cuidados estéticos, pele e cabelo', FALSE),
('Higiene Pessoal', 'Itens de uso diário como sabonetes e cremes dentais', FALSE),
('Suplementos', 'Vitaminas, minerais e complementos alimentares', FALSE),
('Infantil', 'Produtos voltados para bebês e crianças', FALSE);

INSERT INTO tb_produtos (nome, valor, quantidade_estoque, marca, categoria_id) VALUES
('Amoxicilina 500mg (30 cápsulas)', 45.90, 50, 'Genericon', 1),
('Shampoo Anticaspa 200ml', 29.90, 100, 'ClearHair', 2),
('Protetor Solar FPS 60 50g', 69.90, 40, 'SunBlock', 2),
('Sabonete Líquido Neutro 400ml', 18.50, 120, 'PureSkin', 3),
('Fio Dental 50m', 9.90, 200, 'CleanTooth', 3),
('Suplemento de Vitamina C 1g', 14.90, 80, 'VitaVida', 4),
('Fralda Descartável Tam G (30 unid)', 54.90, 30, 'BabyDry', 5),
('Dipirona Monoidratada 500mg/ml Gotas', 8.20, 150, 'MedMed', 1);

-- Retornar todos os produtos cujo valor seja maior do que R$ 50,00
SELECT * FROM tb_produtos
WHERE valor > 50.00;

-- Retornar todos os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos
WHERE valor BETWEEN 5.00 AND 60.00;

-- Buscar todos os produtos que possuam a letra 'C' no atributo nome (usando LIKE)
SELECT * FROM tb_produtos
WHERE nome LIKE '%C%';

-- Unir dados de tb_produtos com tb_categorias (INNER JOIN)
SELECT 
    p.id AS produto_id,
    p.nome AS produto_nome,
    p.valor AS produto_valor,
    p.marca AS produto_marca,
    c.nome AS categoria_nome,
    c.descricao AS categoria_descricao
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- Unir tb_produtos e tb_categorias filtrando por uma categoria específica (Ex: Cosméticos)
SELECT 
    p.id AS produto_id,
    p.nome AS produto_nome,
    p.valor AS produto_valor,
    p.marca AS produto_marca,
    c.nome AS categoria_nome
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Cosméticos';