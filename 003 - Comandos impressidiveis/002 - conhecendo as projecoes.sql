USE PROJETO;

INSERT INTO cliente(nome, sexo, endereco, telefone, cpf) VALUES('Clara', 'F', 'Senador Soares - Tijuca - Rio de Janeiro - RJ', '883665843', 222222222);

/* O COMANDO SELECT 
selecao projecao e juncao. juncao equivale ao comando join.
Quando utilizamos o select estamos utilizando o comando de projecao. estamos projetando algo.
No caso com o comando SELECT eu posso construir o que eu quero mostrar e configurar a partir disso
como eu quero modificar as aplicacoes e amostragens das tabelas. SELECT nao seria pra selecionar, eu to
projetando uma informacao ou conjunto de informacoes
*/

SELECT NOW(); /* O equivalente mais direto no sql server seria o SELECT GETDATE(); */

SELECT GETDATE();

SELECT CURRENT_TIMESTAMP; /* o segundo parecido seria esse com o NOW() mas esse segue o padrao internacional */

SELECT SYSDATETIME();/* esse segue uma alta precisao maior que os anteriores */

SELECT 'Felipe Mafra';

SELECT 'Banco de Dados';

SELECT GETDATE() AS DATA_HORA, 'FELIPE MAFRA' AS PROFESSOR;

/* ALIAS DE COLUNAS */

SELECT nome, sexo, email FROM cliente;

SELECT nome, sexo, email, endereco FROM cliente;

SELECT * FROM cliente;

/* Mais pra frente vou verificar dicionario de dados */