DROP DATABASE IF EXISTS db_Rh;

/*
1 - Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
*/
CREATE DATABASE IF NOT EXISTS db_Rh;

USE db_Rh;

/*
2 - Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
*/
CREATE TABLE IF NOT EXISTS tb_Usuarios(
	id_usuario BIGINT NOT NULL AUTO_INCREMENT,	
	nome VARCHAR(255) NOT NULL, 
	sobrenome VARCHAR(255) NOT NULL,
	setor VARCHAR(255) NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	salario DECIMAL(10,2),
	sexo ENUM('f' ,'m','n') NOT NULL DEFAULT 'n',
	ativo ENUM ('s','n') NOT NULL DEFAULT 'n',
	PRIMARY KEY(id_usuario)
 );

SHOW TABLES;

DESCRIBE tb_Usuarios;

/*
3 - Insira nesta tabela no mínimo 5 dados (registros).
*/
INSERT INTO tb_Usuarios (
    nome,
    sobrenome,
    setor,
    telefone,
    salario,
    sexo,
    ativo
) VALUES (
    'Gabriel Freitas',
    'Santos Nunes',
    'Tecnologia da Informação',
    '11-988545440',
    1000.00,
    'm',
    's'
);

INSERT INTO tb_Usuarios (
    nome,
    sobrenome,
    setor,
    telefone,
    salario,
    sexo,
    ativo
) VALUES (
    'João Vitor',
    'Nunes Tertuliano',
    'Cyber Security',
    '11-956448722',
    3000.00,
    'm',
    's'
);

INSERT INTO tb_Usuarios (
    nome,
    sobrenome,
    setor,
    telefone,
    salario,
    sexo,
    ativo
) VALUES (
    'Junior Gabriel',
    'Malafaia Silas',
    'Recursos Humanos',
    '11-975785825',
    2540.80,
    'm',
    's'
);

INSERT INTO tb_Usuarios (
    nome,
    sobrenome,
    setor,
    telefone,
    salario,
    sexo,
    ativo
) VALUES (
    'Fernando Samuel',
    'Rodrigues',
    'Manutenção',
    '11-997587454',
    1734.25,
    'm',
    's'
);

INSERT INTO tb_Usuarios (
    nome,
    sobrenome,
    setor,
    telefone,
    salario,
    sexo,
    ativo
) VALUES (
    'Antony',
    'Michellon Freitas',
    'Engenharia Civil',
    '11-988545440',
    1200.00,
    'm',
    's'
);

/*
4 - Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
*/
SELECT * FROM tb_Usuarios WHERE salario > 2000.00;

/*
5 - Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
*/
SELECT * FROM tb_Usuarios WHERE salario < 2000.00;

/*
6 - Ao término atualize um registro desta tabela através de uma query de atualização.
*/
UPDATE tb_Usuarios SET salario = 2380.00 WHERE id_usuario = 4; 

SELECT * FROM tb_Usuarios;