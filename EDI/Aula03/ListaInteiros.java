import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class ListaInteiros {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ArrayList<Integer> numeros = new ArrayList<>();

        // Adicionando números
        System.out.println("Quantos números deseja adicionar?");
        int qtd = scanner.nextInt();

        System.out.println("Digite os números:");
        for (int i = 0; i < qtd; i++) {
            numeros.add(scanner.nextInt());
        }

        // Busca na lista
        System.out.println("Digite um número para buscar:");
        int busca = scanner.nextInt();
        System.out.println(numeros.contains(busca) ? "Número encontrado!" : "Número não encontrado.");

        // Remoção da lista
        System.out.println("Digite um número para remover:");
        Integer remover = scanner.nextInt();
        if (numeros.remove(remover)) {
            System.out.println("Número removido com sucesso.");
        } else {
            System.out.println("Número não encontrado.");
        }
        System.out.println("Lista após remoção: " + numeros);

        // Ordenação da lista
        Collections.sort(numeros);
        System.out.println("Lista ordenada: " + numeros);

        scanner.close();
    }
}
