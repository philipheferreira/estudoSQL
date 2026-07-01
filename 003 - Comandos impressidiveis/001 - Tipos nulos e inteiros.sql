USE projeto;

/* MOSTRANDO AS TABELAS */
SHOW TABLES;

/*1. A forma mais simples (Usando sys.tables)
Esta é a consulta mais direta e rápida para listar apenas os nomes das tabelas: */

SELECT name FROM sys.tables; /* equivalente ao show tables no sql serve */

/*

2. Incluindo o esquema (Schema) - Muito Recomendado
No SQL Server, as tabelas geralmente pertencem a um esquema (como o padrão dbo). Para ver o esquema junto com o nome da tabela:

*/

SELECT 
    s.name AS Esquema, 
    t.name AS Tabela
FROM sys.tables t
INNER JOIN sys.schemas s ON t.schema_id = s.schema_id
ORDER BY Esquema, Tabela;

/*
3. O padrão ANSI (Usando INFORMATION_SCHEMA)
Se você quer um comando que funcione em vários bancos de dados diferentes (SQL Server, MySQL, PostgreSQL, etc.), use a view padrão ANSI. Ele lista apenas tabelas base (ignorando views):

*/

SELECT TABLE_SCHEMA, TABLE_NAME 
FROM INFORMATION_SCHEMA.TABLES 
WHERE TABLE_TYPE = 'BASE TABLE';


/* EXIBINDO A ESTRUTURA DED UMA TABELA */

DESC cliente;

/* 1. O mais parecido: sp_help
Este é o comando mais próximo do DESC. Ele retorna não apenas as colunas e tipos de dados, mas também informações sobre chaves primárias, identidades (identity) e constraints, tudo de uma vez. */

EXEC sp_help 'CLIENTE'; /* comando equivalente ao DESC cliente */

/* 2. Usando INFORMATION_SCHEMA (Padrão ANSI)
Se você quer um comando SELECT que traga um resultado limpo apenas com as colunas (ideal para usar em scripts ou subconsultas), use este: */

SELECT 
    COLUMN_NAME AS Coluna, 
    DATA_TYPE AS TipoDeDado, 
    CHARACTER_MAXIMUM_LENGTH AS TamanhoMaximo,
    IS_NULLABLE AS PermiteNulo,
    COLUMN_DEFAULT AS ValorPadrao
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'nome_da_tabela';

/* 3. Usando as tabelas de sistema (sys.columns)
Esta é a forma "nativa" do SQL Server e a mais performática. Exige um join com a tabela de tipos para trazer o nome do tipo de dado (como varchar, int) em vez de um número código: */

SELECT 
    c.name AS Coluna,
    t.name AS TipoDeDado,
    c.max_length AS TamanhoEmBytes,
    c.precision AS Precisao,
    c.scale AS Escala,
    c.is_nullable AS PermiteNulo
FROM sys.columns c
INNER JOIN sys.types t ON c.user_type_id = t.user_type_id
WHERE c.object_id = OBJECT_ID('dbo.nome_da_tabela')
ORDER BY c.column_id;


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

