package Pratica;
import java.util.Scanner;

public class Pratica03
 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Digite um número de 1 a 3: ");
        int opcao = scanner.nextInt();

        switch (opcao) {
            case 1:
                System.out.println("Você escolheu maçã.");
                break;
            case 2:
                System.out.println("Você escolheu banana.");
                break;
            case 3:
                System.out.println("Você escolheu laranja.");
                break;
            default:
                System.out.println("Escolha inválida.");
        }

        scanner.close();
    }
}
