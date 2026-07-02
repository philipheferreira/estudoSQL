USE PROJETO;

/* UTILIZANDO O UPDATE PARA ATUALIZAR VALORES */

SELECT NOME, EMAIL FROM CLIENTE;

UPDATE CLIENTE SET EMAIL = 'lilian@hotamil.com'; /* Se eu rodar isso eu vou atualizar toda a tabela como lilian, o que nao vai ser bom. Entao a melhor coisa
sera utilizara o WHERE para poder delimitar situacoes especificas que atendem essa necessidade*/

/* WHERE - VAI SER O SEU MELHOR AMIGO DA VIDA PARA VIDA INTEIRA */

SELECT * FROM CLIENTE WHERE NOME = 'lilian'; /* verifica o estado do campo que atende a especificacao nome que eu coloquei no WHERE */

SELECT * FROM CLIENTE WHERE NOME = 'joao'; /* Fazendo para joao que engloba o ponto que eu irei realizar a mudanca */

UPDATE CLIENTE SET EMAIL = 'joaoa@ug.com.br' WHERE nome = 'joao'; /* Como o campo email ja tem um email ele sera atualizado 
com o comando UPDATE para o que foi definido */

SELECT NOME, EMAIL FROM CLIENTE;

/* EM CASO SE EU FIZER ALGO ERRADO EXISTE A POSSIBILIDADE DE REALIZAR UM COMMIT E ROLLBACK */