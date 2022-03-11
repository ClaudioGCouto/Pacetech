algoritmo "Vetores"

var

VetorNomes: vetor[1..5] de literal
Pesquisa: literal
Encontrado: logico
i: inteiro

inicio

para i de 1 ate 5 faca
   Escreval ("Informe seu nome")
   leia (VetorNomes[i])
fimpara

limpatela

Escreval ("Informe um nome a pesquisar:")
leia (Pesquisa)

para i de 1 ate 5 faca
   se VetorNomes[i] = Pesquisa entao
      Encontrado <- verdadeiro
   fimse
fimpara
se Encontrado = verdadeiro entao
   Escreval ("Encontrado")
senao
   Escreval ("Não encontrado")
fimse


fimalgoritmo
