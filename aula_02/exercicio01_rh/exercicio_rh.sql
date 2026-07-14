#Criando bando de dados
CREATE database db_rh;

USE db_rh;

#Criando tabela
CREATE table tb_colaboradores (
id  bigint auto_increment PRIMARY KEY,
nome varchar(255) NOT NULL,
cpf char(11) UNIQUE NOT NULL,
salario decimal (10,2),
cargo varchar(255) NOT NULL

);

#adicionando atributo
ALTER TABLE tb_colaboradores ADD ativo BOOLEAN DEFAULT TRUE;

#Inserindo dados
INSERT INTO tb_colaboradores (nome, cpf, salario, cargo)
VALUES 
('Ana Silva', '12345678901', 4500.00, 'Analista de RH'),
('Carlos Souza', '23456789012', 9800.50, 'Gerente de TI'),
('Beatriz Costa', '34567890123', 3200.00, 'Designer Júnior'),
('Marcos Oliveira', '45678901234', 7500.00, 'Desenvolvedor Pleno'),
('Fernanda Lima', '56789012345', 1800.00, 'Estagiária de Marketing');

#Consultando tabela
SELECT * FROM tb_colaboradores;
#Consultando salario > 2000.00
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
#Consultando salario < 2000.00
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

#Atualização de um Registro (Query de Atualização)
UPDATE tb_colaboradores 
SET salario = 5200.00, cargo = 'Analista de RH Sênior'
WHERE id = 1;

#Verificando se a atualização deu certo
SELECT * FROM tb_colaboradores WHERE id = 1;