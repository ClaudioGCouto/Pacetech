package projetosemana7;

import java.util.Scanner;

public class Empregado {

    private float salariomensal;
    private float salarioanual;
    private float salarioaumentado;
    private String primeironome;
    private String sobrenome;

    Scanner leitor = new Scanner(System.in);

    public Empregado(float salariomensal, String primeironome, String sobrenome) {
        this.setsalariomensal(salariomensal);
        this.setprimeironome(primeironome);
        this.setsobrenome(sobrenome);

    }

    public void setprimeironome(String primeironome) {
        this.primeironome = primeironome;
    }

    public String getprimeironome() {
        return primeironome;
    }

    public void setsobrenome(String sobrenome) {
        this.sobrenome = sobrenome;
    }

    public String getsobrenome() {
        return sobrenome;
    }

    public void setsalariomensal(float salariomensal) {
        if (salariomensal < 0) {
            this.salariomensal = 0f;
            System.out.println("Valor inválido, salário definido para R$ 0!!");
        } else {
            this.salariomensal = salariomensal;
        }
    }

    public float getsalariomensal() {
        return salariomensal;
    }

    public void setsalarioanual(float salarioanual) {
        salarioanual = salariomensal * 12;
        this.salarioanual = salarioanual;
    }

    public float getsalarioanual() {
        return salarioanual;
    }

    public void aumentarsalario() {
        salarioaumentado = ((salariomensal * 0.1f) + salariomensal) * 12;
    }

    public void setsalarioaumentado(float salarioaumentado) {
        this.salarioaumentado = salarioaumentado;
    }

    public float getsalarioaumentado() {
        return salarioaumentado;
    }
}
