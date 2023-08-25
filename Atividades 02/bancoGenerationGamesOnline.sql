/*
Exercicio: Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. 
O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.
*/
DROP DATABASE IF EXISTS db_generation_game_online;
CREATE DATABASE IF NOT EXISTS db_generation_game_online;
USE db_generation_game_online;

/*
1 - Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
*/
CREATE TABLE IF NOT EXISTS tb_Class(
id BIGINT NOT NULL AUTO_INCREMENT,
nameClass VARCHAR(255) NOT NULL, 
typeClass VARCHAR(255) NOT NULL,
descriptionClass TEXT,
PRIMARY KEY(id)
);

/*
2 - Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online. 
3 - Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens. 
*/
CREATE TABLE IF NOT EXISTS tb_Characters(
id BIGINT NOT NULL AUTO_INCREMENT,
nameCharacter VARCHAR(255) NOT NULL,
weaponCharacter VARCHAR(255) NOT NULL,
armorCharacter VARCHAR(255) NOT NULL,
levelCharacter INT NOT NULL,
defenseCharacter INT NOT NULL,
attackCharacter INT NOT NULL, 
experienceCharacter BIGINT NOT NULL,
class_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (class_id) REFERENCES tb_Class(id)
);

/*
4 - Insira 5 registros na tabela tb_classes.
*/
INSERT INTO tb_Class ( nameClass, typeClass, descriptionClass ) 
VALUES ('Guerreiro', 'Tanque', 'Um especialista em combate corpo a corpo com alta resistência.'),
('Mago', 'DPS', 'Um conjurador de magias poderosas capazes de causar dano massivo.'),
('Arqueiro', 'DPS', 'Um mestre em combate à distância com precisão excepcional.'),
('Cleric', 'Suporte', 'Um curandeiro sagrado que pode curar ferimentos e fortalecer aliados.'),
 ('Ladrão', 'DPS', 'Um especialista em furtividade e ataques rápidos com dano crítico.');

/*
5 - Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes. 
*/
INSERT INTO tb_Characters ( nameCharacter, weaponCharacter, armorCharacter, levelCharacter, defenseCharacter, attackCharacter, experienceCharacter, class_id) 
VALUES  ('Herói do Norte', 'Espada Longa', 'Armadura de Placas', 15, 10800, 2852, 1500, 1),
('Feiticeira das Chamas', 'Cajado Mágico', 'Túnica Encantada', 12, 1800, 4050, 1250, 2),
('Arqueiro das Sombras', 'Arco Longo', 'Armadura Leve', 10, 1700, 6500, 1100, 3),
('Curandeiro Divino', 'Cajado de Cura', 'Vestes Sagradas', 11, 2200, 1700, 1150, 4),
('Mestre dos Disfarces', 'Adagas Duplas', 'Roupas Furtivas', 9, 1200, 10400, 950, 5),
('Cavaleiro da Justiça', 'Lança de Cavalaria', 'Armadura de Malha', 14, 5000, 8000, 1400, 1),
('Arcanista Elemental', 'Orbe Arcano', 'Vestes Elementais', 13, 1000, 11520, 1350, 2),
('Atirador Preciso', 'Besta de Precisão', 'Traje de Atirador', 10, 1060, 8740, 1050, 3);


/*
6 - Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
*/
SELECT *  FROM tb_Characters WHERE  attackCharacter > 2000;

/*
7 - Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
*/
SELECT *  FROM tb_Characters WHERE  defenseCharacter > 1000 AND defenseCharacter < 2000;

/*
8 - Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
*/
SELECT * FROM tb_Characters WHERE nameCharacter LIKE"c%";

/*
9 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
*/
SELECT tb_Characters.nameCharacter, tb_Characters.attackCharacter, tb_Characters.defenseCharacter, tb_Class.nameClass, tb_Class.typeClass, tb_Class.descriptionClass
FROM tb_Characters
INNER JOIN tb_Class ON tb_Class.id = tb_Characters.Class_id;

/*
10 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, 
onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
*/
SELECT * FROM tb_Characters
INNER JOIN tb_Class ON tb_Class.id = tb_Characters.Class_id 
WHERE nameClass =  'Arqueiro';
