USE projeto;

/* MOSTRANDO AS TABELAS */
SHOW TABLES;

/* EXIBINDO A ESTRUTURA DED UMA TABELA */

DESC cliente;

/* FORMA 01 - EXCLUINDO AS COLUNAS */

INSERT INTO cliente VALUES ('Joao', 'M', 'joao@gmail.com', 988638273 , '22923110' , 'Maia Lacerda - Estacio - Rio De Janeiro - RJ');

INSERT INTO cliente VALUES ('Celia', 'F', 'celia@gmail.com', 5415214561 , '25078869' , 'Riachuelo - Centro - Rio de Janeiro - RJ');

INSERT INTO cliente VALUES ('Jorge', 'M', NULL , 885755896 , '58748895' , 'Oscar Cury - Bom Retiro - Patos de Minas - MG');

/* FORMA 02 - COLOCANDO AS COLUNAS */

INSERT INTO cliente(nome, sexo, endereco, telefone, cpf) VALUES ('');