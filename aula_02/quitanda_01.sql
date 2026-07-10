CREATE DATABASE db_quitanda;

USE db_quitanda;

create table tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
data_validade date,
preco decimal  NOT NULL,

primary key(id)
);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Banana", 1000, "2026-07-15", 12.99);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Cenoura", 800, "2026-07-25", 10.00),
	  ("Alface Higienizada", 100, "2026-07-12", 14.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Alface Higienizada", 100, "2026-07-12", 14.00);
      
select * from tb_produtos;   
   
UPDATE tb_produtos SET preco = 12.99 WHERE id = 1;      

DELETE FROM tb_produtos WHERE id = 3;
 
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);     
      
      