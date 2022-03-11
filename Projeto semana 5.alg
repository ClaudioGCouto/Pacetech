algoritmo "Projeto semana 5"

var
temperaturaconv, hora,temperatura: vetor[1..4] de real
menu1: literal
indice, indice2: inteiro
///////////////////////////////////////////////////////////

procedimento menuconversao
inicio
escolha menu1
caso "1"
   Escreval ("Você selecionou converter Celsius para Fahrenheit, insira a temperatura desejada:")
   leia (temperatura[indice])
   temperaturaconv[indice] <-(temperatura[indice] * (9/5)) + 32

caso "2"
   Escreval ("Você selecionou converter Fahrenheit para Celsius, insira a temperatura desejada:")
   leia (temperatura[indice])
   temperaturaconv[indice] <-(temperatura[indice] - 32) * (5/9)
fimescolha
fimprocedimento
///////////////////////////////////////////////////////////

Procedimento  horatemperatura
inicio
para indice de 1 ate 4 faca
   Escreval ("Insira a hora em que a temperatura foi medida:")
   leia (hora[indice])
   menuconversao
fimpara
fimprocedimento
///////////////////////////////////////////////////////////

procedimento ordenartemperatura
var
i, j: inteiro
aux, aux2: real

inicio
para i de 1 ate 4 faca
   para j de 1 ate 4 faca
      se temperaturaconv[j] < temperaturaconv[i] entao
         aux <- temperaturaconv[i]
         temperaturaconv[i] <- temperaturaconv[j]
         temperaturaconv[j] <- aux
         aux <- temperatura[i]
         temperatura[i] <- temperatura[j]
         temperatura[j] <- aux
         aux <- hora[i]
         hora[i] <- hora[j]
         hora[j] <- aux

      fimse
   fimpara
fimpara
fimprocedimento
///////////////////////////////////////////////////////////

procedimento printemperatura
var
i: inteiro
inicio
para i de 1 ate 4 faca
   Escolha menu1

   caso "1"
      Escreval ("Temperatura ", temperatura[i], "° Celsius, registrada as ", hora[i], "h corresponde a ", temperaturaconv[i], "° Fahrenheit.")

   caso "2"
      Escreval ("Temperatura ", temperatura[i], "° Fahrenheit, registrada as ", hora[i], "h corresponde a ", temperaturaconv[i], "° Celsius.")
   fimescolha
fimpara
fimprocedimento
///////////////////////////////////////////////////////////

inicio
repita
   Escreval ("1 - Celsius para Fahrenheit")
   Escreval ("2 - Fahrenheit para Celsius")
   Escreval ("3 - Sair")
   leia (menu1)
   se menu1 = "1" entao
      horatemperatura

      ordenartemperatura

      printemperatura
   senao
      se menu1 = "2" entao
         horatemperatura

         ordenartemperatura

         printemperatura
      senao
         se menu1 = "3" entao
            interrompa
         senao
            Escreval ("Insira um valor válido")
         fimse
      fimse
   fimse
   Escreval ("")
ate menu1 = "3"

fimalgoritmo
