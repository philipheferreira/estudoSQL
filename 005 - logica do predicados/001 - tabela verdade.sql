USE PROJETO; /* Usar o database onde tudo esta salvo */

/* OPERADORES LOGICOS */

/* OR - OU */

SELECT nome, sexo, endereco FROM cliente WHERE sexo = 'M' OR endereco LIKE '%RJ';

SELECT nome, sexo, endereco FROM cliente WHERE sexo = 'F' OR endereco LIKE '%ESTACIO';

/* NAD - E */

SELECT nome, sexo, endereco FROM cliente WHERE sexo = 'M' AND endereco LIKE '%RJ';

SELECT nome, sexo, endereco FROM cliente WHERE sexo = 'F' AND endereco LIKE '%ESTACIO';

