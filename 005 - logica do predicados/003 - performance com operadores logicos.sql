USE PROJETO; /* Usar o database onde tudo esta salvo */

SELECT COUNT(*) FROM CLIENTE; /* mostra a quantidade de registros na tabela cliente */

SELECT COUNT(*) FROM CLIENTE;

/* OPERADOR GROUP BY */

SELECT sexo, COUNT(*) FROM cliente GROUP BY sexo; /* Ela tras o registro com base da categoria definida para pesquisa, dividindo o total entre 
cada um dos tipos classificados. O COUNT ainda vai fucionar do mesmo jeito usando o GROUPT BY como base para definir a pesquisa*/

/* PERFORMANCE EM OPERADORES LOGICOS */

/* 1 MILHAO DE REGISTROS

PARA CONTAR
SELECT COUNT (*) FROM CLIENTE;

SELECT SEXO, COUNT(*) FROM CLIENTE GROUP BY SEXO;

SELECT CIDADE, COUT(*) FROM CLIENTE GROUP BY CIDADE;

CONDICAO
SEXO = F
CIDADE = RIO DE JANEIRO

SITUACAO - TRATANDO COM OU / OR
70% MULHERES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE SEXO = 'F' OR CIDADE = 'RIO DE JANEIRO';

SITUACAO = TRATANDO COM E / AND
70% MULEHRES = SEXO = F
30% MORA NO RIO DE JANEIRO

SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE CIDADE = 'RIO DE JANEIRO' AND SEXO = 'F'.

*/