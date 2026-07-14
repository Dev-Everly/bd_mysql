CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
setor VARCHAR(100) NOT NULL

);
CREATE TABLE tb_produtos (
id BIGINT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
marca VARCHAR(255),
quantidade INT NOT NULL,
categoria_id BIGINT,

CONSTRAINT fk_produtos_categorias FOREIGN KEY (categoria_id) 
        REFERENCES tb_categorias(id) ON DELETE SET NULL

);

INSERT INTO tb_categorias (nome, setor) VALUES
('Hidráulica', 'Tubos, conexões e registros'),
('Elétrica', 'Fiação, tomadas e disjuntores'),
('Ferramentas', 'Manuais e elétricas'),
('Pisos e Revestimentos', 'Cerâmicas e porcelanatos'),
('Tintas e Acessórios', 'Pinturas interna e externa');

INSERT INTO tb_produtos (nome, preco, marca, quantidade, categoria_id) VALUES
('Tubo Soldável PVC 25mm 3m', 15.90, 'Tigre', 150, 1),
('Fio Flexível 2.5mm² 100m Azul', 139.90, 'Sil', 60, 2),
('Furadeira de Impacto 650W', 249.90, 'Bosch', 20, 3),
('Porcelanato Polido 60x60 (m²)', 89.90, 'Portobello', 300, 4),
('Tinta Acrílica Fosca Branca 18L', 320.00, 'Coral', 15, 5),
('Chave de Fenda Simples', 12.50, 'Tramontina', 100, 3),
('Disjuntor Monopolar 20A', 14.90, 'Lorenzetti', 200, 2),
('Torneira Elétrica Multitemperatura', 119.90, 'Hydra', 35, 1);

SELECT id, nome, preco, marca, quantidade, categoria_id 
FROM tb_produtos 
WHERE preco > 100.00;

SELECT id, nome, preco, marca, quantidade, categoria_id 
FROM tb_produtos 
WHERE preco BETWEEN 70.00 AND 150.00;

SELECT id, nome, preco, marca, quantidade, categoria_id 
FROM tb_produtos 
WHERE nome LIKE '%C%';

SELECT 
    p.id AS produto_id,
    p.nome AS produto_nome,
    p.preco AS produto_preco,
    p.marca AS produto_marca,
    c.nome AS categoria_nome,
    c.setor AS categoria_setor
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT 
    p.id AS produto_id,
    p.nome AS produto_nome,
    p.preco AS produto_preco,
    p.marca AS produto_marca,
    c.nome AS categoria_nome
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Hidráulica';
 