package Pratica;
import java.util.Scanner;

public class Pratica06 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite um número para a contagem regressiva: ");
        int numero = scanner.nextInt();

        while (numero >= 0) {
            System.out.println(numero);
            numero--;
        }

        scanner.close();
    }
}
