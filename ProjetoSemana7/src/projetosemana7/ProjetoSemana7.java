package projetosemana7;

import java.util.Scanner;

public class ProjetoSemana7 {

    public static void main(String[] args) {

        Empregado nome1 = new Empregado(3000, "Claudio", "Couto");

        Empregado nome2 = new Empregado(4000, "Fulano", "Detal");

        System.out.println("O salário anual do empregado: " + nome1.getprimeironome() + " " + nome1.getsobrenome() + " é de: R$ " + (nome1.getsalariomensal() * 12));

        System.out.println("O salário anual do empregado: " + nome2.getprimeironome() + " " + nome2.getsobrenome() + " é de: R$ " + (nome2.getsalariomensal() * 12));

        nome1.aumentarsalario();

        nome2.aumentarsalario();

        System.out.println("");

        System.out.println("O salário anual com aumento de 10% do empregado: " + nome1.getprimeironome() + " " + nome1.getsobrenome() + " é de: R$ " + nome1.getsalarioaumentado());

        System.out.println("O salário anual com aumento de 10% do empregado: " + nome2.getprimeironome() + " " + nome2.getsobrenome() + " é de: R$ " + nome2.getsalarioaumentado());

    }
}
