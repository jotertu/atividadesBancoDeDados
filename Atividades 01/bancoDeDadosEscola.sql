DROP DATABASE IF EXISTS db_Escola;

CREATE DATABASE IF NOT EXISTS db_Escola;

USE db_Escola;

CREATE TABLE IF NOT EXISTS tb_Alunos (
    id_aluno BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nascimento DATE NOT NULL,
    email VARCHAR(255),
    turma VARCHAR(4),
    sexo ENUM('f', 'm', 'n') NOT NULL DEFAULT 'n',
    telefone VARCHAR(255) NOT NULL,
    endereco VARCHAR(255) NOT NULL,
    nota DECIMAL(3, 1) NOT NULL, -- Ajustado para permitir até 999.9
    periodoaula ENUM('m', 't', 'n') NOT NULL DEFAULT 'n',
    frequencia ENUM('0', '1') NOT NULL DEFAULT '1',
    PRIMARY KEY (id_aluno)
);


SHOW TABLES;

INSERT INTO tb_Alunos (
    nome,
    email,
    nascimento,
    sexo,
    endereco,
    telefone,
    nota,
    turma,
    frequencia

) VALUES (
      'Raimundo Nonato',
      'raimundo.nonato@gmail.com',
      '1990-04-23',
      'm',
      'Avenida Ramiro Colleoni, 110 - Vila Dora - Santo André - SP',
      '(11)4235-3659',
      8.2,
      't2',
      '1'
);

INSERT INTO tb_Alunos (
    nome,
    email,
    nascimento,
    sexo,
    endereco,
    telefone,
    nota,
    turma,
    frequencia

) VALUES (
      'Caleb Leonardo Figueiredo',
      'caleb.leonardo.figueiredo@fclar.net.br',
      '2005-07-01',
      'm',
      'Rodovia Amaral Peixoto 538 Loja 2, 872 - Guanabara - RJ',
      '(22)3584-6739',
      8.2,
      't2',
      '1'
);

INSERT INTO tb_Alunos (
    nome,
    email,
    nascimento,
    sexo,
    endereco,
    telefone,
    nota,
    turma,
    frequencia

) VALUES (
      'Fábio Matheus Castro',
      'rfabio-castro97@inovasom.com',
      '1996-08-10',
      'm',
      'Passagem Nossa Senhora do Carmo, 387- Ananindeua - PA',
      '(91)2597-9759',
      2.0,
      't2',
      '1'
);

INSERT INTO tb_Alunos (
    nome,
    email,
    nascimento,
    sexo,
    endereco,
    telefone,
    nota,
    turma,
    frequencia

) VALUES (
      'Tiago Pietro Corte Real',
      'tiago_cortereal@sigtechbr.com',
      '2005-07-15',
      'm',
      'Av. Getulio Vargas, 454 - SÃO PAULO - SP ',
      '(11)3432-3349',
      6.2,
      't2',
      '1'
);

INSERT INTO tb_Alunos (
    nome,
    email,
    nascimento,
    sexo,
    endereco,
    telefone,
    nota,
    turma,
    frequencia

) VALUES (
      'Fernanda Luciana Figueiredo',
      'fernanda.luciana.figueiredo@vivax.com',
      '1998-01-25',
      'f',
      'Vila Frota Neto, 744 - São João do Tauape - Fortaleza - CE',
      '(85)9869-3131',
      10.0,
      't2',
      '1'
);

SELECT * FROM tb_Alunos;

SELECT * FROM tb_Usuarios WHERE nota > 7.0;

SELECT * FROM tb_Usuarios WHERE nota < 7.0;

UPDATE tb_Alunos SET nome = 'Tiago Pietro Corte Real Fernando', nota = 5.4 WHERE id_Aluno = 4; 

SELECT * FROM tb_Alunos;