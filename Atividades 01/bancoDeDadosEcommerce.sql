DROP DATABASE IF EXISTS db_ecommerce;

/*
1 - Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce.
*/
CREATE DATABASE IF NOT EXISTS db_ecommerce;

USE db_ecommerce;

/*
2 - Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
*/
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

/*
3 - Insira nesta tabela no mínimo 8 dados (registros).
*/
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

INSERT INTO tb_Produtos (
    nome,
    descricao,
    preco,
    qtdestoque,
    categoria,
    fornecedor
) VALUES (
    'Liquidificador Profissional',
    'Liquidificador potente para preparar smoothies e bebidas.',
    129.99,
    10,
    'Eletrodomésticos',
    'KitchenTech'
);

INSERT INTO tb_Produtos (
    nome,
    descricao,
    preco,
    qtdestoque,
    categoria,
    fornecedor
) VALUES (
    'Fone de Ouvido Bluetooth',
    'Fone de ouvido sem fio com qualidade de som excepcional.',
    59.90,
    25,
    'Eletrônicos',
    'AudioWave'
);

INSERT INTO tb_Produtos (
    nome,
    descricao,
    preco,
    qtdestoque,
    categoria,
    fornecedor
) VALUES (
    'Cadeira Ergonômica',
    'Cadeira de escritório ergonômica para maior conforto durante o trabalho.',
    199.00,
    8,
    'Móveis',
    'ErgoDesign'
);


SELECT * FROM tb_Produtos;

/*
4 - Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
*/
SELECT * FROM tb_Produtos WHERE preco > 500.0;

/*
5 - Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
*/
SELECT * FROM tb_Produtos WHERE preco < 500.0;

/*
6  - Ao término atualize um registro desta tabela através de uma query de atualização.
*/
UPDATE tb_Produtos SET nome = 'Mochila Esportiva 2', qtdestoque = 10 WHERE id_produto = 3;

SELECT * FROM tb_Alunos;
