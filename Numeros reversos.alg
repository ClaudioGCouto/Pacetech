algoritmo "Reverter vetor"

var

numeros, numerosreversos: vetor[1..10] de inteiro
i, aux: inteiro

inicio

para i de 1 ate 10 faca
   Escreval ("Numero", i)
   leia (numeros[i])
fimpara

aux <- 11

para i de 1 ate 10 faca
   numerosreversos[aux-i] <- numeros [i]
fimpara

para i de 1 ate 10 faca
   Escreval (numerosreversos[i])
fimpara


fimalgoritmo
