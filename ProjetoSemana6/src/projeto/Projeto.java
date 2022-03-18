package projeto;

import java.util.Scanner;

public class Projeto {

    public static void main(String[] args) {


        float cotacaodolar, valorreal, temperatura, conversaomoeda, conversaotemp, valordolar;
        int  menu, menu2;

        conversaotemp = 0;
        conversaomoeda = 0;

        Scanner leitor = new Scanner(System.in);
        
        do {
            System.out.println("1 - Celsius para Fahrenheit");
            System.out.println("2 - Fahrenheit para Celsius");
            System.out.println("3 - Sair");
            System.out.print("Informe a opção:");
            menu = leitor.nextInt();
            System.out.println();

            switch (menu) {
                case 1:
                    System.out.print("Você selecionou converter Celsius para Fahrenheit, insira a temperatura desejada: ");
                    temperatura = leitor.nextFloat();
                    conversaotemp = (temperatura * 1.8f) + 32;
                    break;

                case 2:
                    System.out.print("Você selecionou converter Fahrenheit para Celsius, insira a temperatura desejada: ");
                    temperatura = leitor.nextFloat();
                    conversaotemp = (temperatura - 32) / 1.8f;
                    break;
            }
            if (menu != 3) {
                
           
            System.out.println();
            System.out.print("Insira a cotação atual do dolar: ");
            cotacaodolar = leitor.nextFloat();
            System.out.println();

            System.out.println("1 - Real para dolar");
            System.out.println("2 - Dolar para real");
            menu2 = leitor.nextInt();

            switch (menu2) {
                case 1:
                    System.out.print("Insira o valor em reais a ser convertido: ");
                    valorreal = leitor.nextFloat();
                    conversaomoeda = (valorreal / cotacaodolar);
                    break;

                case 2:
                    System.out.print("Insira o valor em dolar a ser convertido: ");
                    valordolar = leitor.nextFloat();
                    conversaomoeda = (valordolar * cotacaodolar);
                    break;

                default:
                    System.out.print("Insira uma opção válida");
                    break;
            }

            System.out.println();

            System.out.println("Temperatura convertida é de: " + String.format("%.2f", conversaotemp));
            System.out.println("Seu valor inserido equivale a: " + String.format("%.2f", conversaomoeda));
            }
        } while (!(menu == 3));
    }
}
