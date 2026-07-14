CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE  tb_estudantes (
    id_estudante INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    turma VARCHAR(20) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    data_nascimento DATE NOT NULL
);

INSERT INTO tb_estudantes (nome, turma, nota, data_nascimento) VALUES 
('Ana Souza', '9º Ano A', 8.5, '2011-04-12'),
('Carlos Eduardo', '9º Ano A', 6.2, '2011-08-23'),
('Beatriz Pinheiro', '9º Ano B', 9.0, '2011-01-15'),
('Daniel Alencar', '9º Ano B', 5.5, '2010-12-05'),
('Fernanda Lima', '9º Ano A', 7.0, '2011-05-30'), 
('Gabriel Santos', '9º Ano B', 9.8, '2011-09-02'),
('Juliana Costa', '9º Ano A', 4.8, '2011-03-18'),
('Lucas Oliveira', '9º Ano B', 7.5, '2011-07-22'),
('Mariana Rocha', '9º Ano A', 6.8, '2011-10-11');

SELECT * FROM tb_estudantes 
WHERE nota > 7.0;

SELECT * FROM tb_estudantes 
WHERE nota < 7.0;

UPDATE tb_estudantes 
SET nota = 7.2 
WHERE id_estudante = 4;

-- Verificando a atualização realizada
SELECT * FROM tb_estudantes 
WHERE id_estudante = 4;