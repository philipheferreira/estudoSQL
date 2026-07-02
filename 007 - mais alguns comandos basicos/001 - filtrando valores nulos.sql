USE PROJETO;

/* FILTRANDO VALORES NULOS */

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE SEXO = 'F';

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE EMAIL = NULL; /* Posso definir campos que se estiverem nulos me retornem informacoes que possam ser necessarias */

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE EMAIL IS NULL; /* O null sempre sera utilizado com o is, como se retratace o estado vazio uma forma mais direta */

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE EMAIL IS NOT NULL; /* Do mesmo jeito o not null, retrata de uma forma para puxar uma linguagem natural */

/* IS OU IS NOT NULL */

