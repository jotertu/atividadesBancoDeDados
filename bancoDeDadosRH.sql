DROP DATABASE IF EXISTS db_Rh;

CREATE DATABASE IF NOT EXISTS db_Rh;

USE db_Rh;

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

SELECT * FROM tb_Usuarios WHERE salario > 2000.00;

SELECT * FROM tb_Usuarios WHERE salario < 2000.00;

UPDATE tb_Usuarios SET salario = 2380.00 WHERE id_usuario = 4; 

SELECT * FROM tb_Usuarios;