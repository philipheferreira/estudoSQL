/* Cardinalidade obrigatoriedade */

/* Trabalhando com a ideia de modelagem, quem vai definir os numerozinhos e letrinhas vai ser a regra de negocio. Ou seja, 
em um documento de requisitos ele vai definira modelagem do sistema do designer logico*/

/* no designer dos numeros: 

	(0,n)
	(0,1)
	(1,n)
	(1,1)

Nesses numeros o primeiro numero vai ser referente a obrigatoriedade, e o segundo vai referir a cardinalidade.
Se o primeiro valor for zero entao nao vai ter obrigatoriedade, mas se for 1 entao vai ter obrigatoriedade.
Ou seja, digamos que eu entre com um cliente no sistema, nao vai ser obrigatorio colocar o numero, logo 
a relacao com essa situacao nao tem obrigatoriedade, entao o valor vai ser igual a zero. Agora, se entre o 
cliente e o endereco existir obrigatoriedade de informacao, entao o valor da obrigatoriedade que ser o primeiro 
valor sera igual a 1. Agora a cardinalidade vai trabalhar com o valor maximo que pode acontecer. No caso se vai
acontecer uma vez ou mais vezes,

Obrigatoriedade: O primeiro valor, define se a relacao entre ambos objetos tem que acontecer para que o objeto
em questao exista ou nao. 
Cardinalidade: define a quantidade de repeticao que ocorre esse objeto. ex: numero maximo de telefone por clientes,
numero maximo de enderecos por cliente.*/

/* CADINALIDADE */

/* QUEM DEFINE A CARDINALDIADE E A REGRA DE NEGOCIOS */

/* PRIMEIRO ALGARISMO - OBRIGATORIEDADE
	(0 , n)
0 - NAO OBRIGATORIO
1 - OBRIGATORIO

SEGUNDO ALGARIISMO - CARDINALIDADE
1 - MAXIMO DE UM
N - MAIS DE UM


*/