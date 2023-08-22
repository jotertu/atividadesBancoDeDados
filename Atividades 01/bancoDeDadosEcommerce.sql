DROP DATABASE IF EXISTS db_ecommerce;

CREATE DATABASE IF NOT EXISTS db_ecommerce;

USE db_ecommerce;

CREATE TABLE IF NOT EXISTS tb_Produtos(
id_produto BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
preco DECIMAL (10,2) NOT NULL,
qtdestoque INT(255) NOT NULL, 
categoria VARCHAR(255) NOT NULL, 
fornecedor VARCHAR(255) NOT NULL,
datacadastro DATETIME,
PRIMARY KEY (id_produto)
);

SHOW TABLES;

DESCRIBE tb_Produtos;

INSERT INTO tb_Produtos (
    nome,
    descricao,
    preco,
    qtdestoque,
    categoria,
    fornecedor
) VALUES (
    'Smartphone Modelo X',
    'Um smartphone avançado com recursos de última geração.',
    899.99,
    50,
    'Eletrônicos',
    'TechCorp'
);

INSERT INTO tb_Produtos (
    nome,
    descricao,
    preco,
    qtdestoque,
    categoria,
    fornecedor
) VALUES (
    'Camiseta Estampada',
    'Camiseta de algodão com estampa moderna.',
    25.99,
    100,
    'Vestuário',
    'FashionStyle'
);

INSERT INTO tb_Produtos (
    nome,
    descricao,
    preco,
    qtdestoque,
    categoria,
    fornecedor
) VALUES (
    'Mochila Esportiva',
    'Mochila resistente e confortável para atividades ao ar livre.',
    49.50,
    30,
    'Acessórios',
    'OutdoorGear'
);

INSERT INTO tb_Produtos (
    nome,
    descricao,
    preco,
    qtdestoque,
    categoria,
    fornecedor
) VALUES (
    'Tablet Infantil',
    'Tablet educativo para crianças com jogos interativos.',
    149.99,
    20,
    'Brinquedos',
    'KidsTech'
);

INSERT INTO tb_Produtos (
    nome,
    descricao,
    preco,
    qtdestoque,
    categoria,
    fornecedor
) VALUES (
    'Panela Elétrica Multiuso',
    'Panela elétrica versátil para cozinhar diversos pratos.',
    89.00,
    15,
    'Eletrodomésticos',
    'HomeApplianceCo'
);

SELECT * FROM tb_Produtos;

SELECT * FROM tb_Produtos WHERE preco > 500.0;

SELECT * FROM tb_Produtos WHERE preco < 500.0;

UPDATE tb_Produtos SET nome = 'Mochila Esportiva 2', qtdestoque = 10 WHERE id_produto = 3;

SELECT * FROM tb_Alunos;