import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

public class ListaStrings {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        ArrayList<String> nomes = new ArrayList<>();

        // Adicionando nomes
        System.out.println("Quantos nomes deseja adicionar?");
        int qtd = scanner.nextInt();
        scanner.nextLine(); // Consumir quebra de linha

        System.out.println("Digite os nomes:");
        for (int i = 0; i < qtd; i++) {
            nomes.add(scanner.nextLine());
        }

        // Busca na lista
        System.out.println("Digite um nome para buscar:");
        String busca = scanner.nextLine();
        System.out.println(nomes.contains(busca) ? "Nome encontrado!" : "Nome não encontrado.");

        // Remoção da lista
        System.out.println("Digite um nome para remover:");
        String remover = scanner.nextLine();
        if (nomes.remove(remover)) {
            System.out.println("Nome removido com sucesso.");
        } else {
            System.out.println("Nome não encontrado.");
        }
        System.out.println("Lista após remoção: " + nomes);

        // Ordenação da lista
        Collections.sort(nomes);
        System.out.println("Lista ordenada: " + nomes);

        scanner.close();
    }
}
