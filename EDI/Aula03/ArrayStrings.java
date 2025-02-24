import java.util.Arrays;
import java.util.Scanner;

public class ArrayStrings {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Criando o array
        System.out.println("Digite a quantidade de nomes:");
        int n = scanner.nextInt();
        scanner.nextLine(); // Consumir quebra de linha
        String[] nomes = new String[n];

        System.out.println("Digite " + n + " nomes:");
        for (int i = 0; i < n; i++) {
            nomes[i] = scanner.nextLine();
        }

        // Busca no array
        System.out.println("Digite um nome para buscar:");
        String busca = scanner.nextLine();
        boolean encontrado = false;
        for (String nome : nomes) {
            if (nome.equalsIgnoreCase(busca)) {
                encontrado = true;
                break;
            }
        }
        System.out.println(encontrado ? "Nome encontrado!" : "Nome não encontrado.");

        // Remoção no array (substitui por "REMOVIDO")
        System.out.println("Digite um nome para remover:");
        String remover = scanner.nextLine();
        for (int i = 0; i < nomes.length; i++) {
            if (nomes[i].equalsIgnoreCase(remover)) {
                nomes[i] = "REMOVIDO";
                break;
            }
        }
        System.out.println("Array após remoção: " + Arrays.toString(nomes));

        // Ordenação do array
        Arrays.sort(nomes);
        System.out.println("Array ordenado: " + Arrays.toString(nomes));

        scanner.close();
    }
}
