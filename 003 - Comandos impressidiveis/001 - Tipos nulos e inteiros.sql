USE projeto;

/* MOSTRANDO AS TABELAS */
SHOW TABLES;

/* EXIBINDO A ESTRUTURA DED UMA TABELA */

DESC cliente;

EXEC sp_help 'CLIENTE'; /* comando equivalente ao DESC cliente */

SELECT * FROM CLIENTE;

/* sintaxe basica de insercao - INSERT INTO TABELA... */

/* FORMA 01 - EXCLUINDO AS COLUNAS */

INSERT INTO cliente VALUES ('Joao', 'M', 'joao@gmail.com', 988638273 , '22923110' , 'Maia Lacerda - Estacio - Rio De Janeiro - RJ');

INSERT INTO cliente VALUES ('Celia', 'F', 'celia@gmail.com', 5415214561 , '25078869' , 'Riachuelo - Centro - Rio de Janeiro - RJ');

INSERT INTO cliente VALUES ('Jorge', 'M', NULL , 885755896 , '58748895' , 'Oscar Cury - Bom Retiro - Patos de Minas - MG');

/* FORMA 02 - COLOCANDO AS COLUNAS */

INSERT INTO cliente(nome, sexo, endereco, telefone, cpf) VALUES ('Lilian', 'F', 'Senador Soares - Tijuca - Rio de Janeiro - RJ', '947785696', 887774856);

/* FORMA 03 - INSERT COMPACTO - SOMENTE MYSQL */

INSERT INTO CLIENTE VALUES('Ana', 'F', 'ana@globo.com', 85548962, '548556985' , 'Pres Antonio Carlos - Centro - Sao Paulo - SP'), ('Carla', 'F', 'carla@terati.com.br', 7745828, '66587458' , 'Samuel Silva - Centro - Belo Horizonte - MG');