algoritmo "Projeto conversões"

var
menu, menu2: literal
cotacaodolar,valorreal, temperatura, conversaomoeda, conversaotemp, valordolar: real

inicio
repita
   Escreval ("1 - Celsius para Fahrenheit")
   Escreval ("2 - Fahrenheit para Celsius")
   Escreval ("3 - Sair")
   leia (menu)
   Limpatela

   escolha menu
   caso "1"
      Escreval ("Você selecionou converter Celsius para Fahrenheit, insira a temperatura desejada:")
      leia (temperatura)
      conversaotemp <-(temperatura * (9/5)) + 32

   caso "2"
      Escreval ("Você selecionou converter Fahrenheit para Celsius, insira a temperatura desejada:")
      leia (temperatura)
      conversaotemp <-(temperatura - 32) * (5/9)

   caso "3"
      interrompa

   fimescolha

   Escreval(" ")
   Escreval("Insira a cotação do dolar atual:")
   leia(cotacaodolar)

   Escreval ("1 - Real para Dolar ")
   Escreval ("2 - Dolar para Real")
   leia (menu2)

   escolha menu2
   caso "1"
      Escreval("Insira o valor em reais a ser convertido:")
      leia (valorreal)
      conversaomoeda <- valorreal / cotacaodolar

   caso "2"
      Escreval("Insira o valor em dolar a ser convertido:")
      leia (valordolar)
      conversaomoeda <- valordolar * cotacaodolar

   fimescolha

   Escreval ("Temperatura convertida é de: ", conversaotemp, " °C / °F" )
   Escreval ("Seu valor inserido equivale a ", conversaomoeda :2 :2,"$")
   Escreval (" ")


ate menu = "3"

fimalgoritmo
