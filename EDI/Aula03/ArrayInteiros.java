import java.util.Arrays;
import java.util.Scanner;

public class ArrayInteiros {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Criando o array
        System.out.println("Digite a quantidade de números:");
        int n = scanner.nextInt();
        Integer[] numeros = new Integer[n]; // Usamos Integer para permitir `null`

        System.out.println("Digite " + n + " números inteiros:");
        for (int i = 0; i < n; i++) {
            numeros[i] = scanner.nextInt();
        }

        // Busca no array
        System.out.println("Digite um número para buscar:");
        int busca = scanner.nextInt();
        boolean encontrado = false;
        for (Integer num : numeros) {
            if (num != null && num == busca) {
                encontrado = true;
                break;
            }
        }
        System.out.println(encontrado ? "Número encontrado!" : "Número não encontrado.");

        // Remoção no array (substitui por null)
        System.out.println("Digite um número para remover:");
        int remover = scanner.nextInt();
        for (int i = 0; i < numeros.length; i++) {
            if (numeros[i] != null && numeros[i] == remover) {
                numeros[i] = null;
                break;
            }
        }
        System.out.println("Array após remoção: " + Arrays.toString(numeros));

        // Ordenação do array (ignora `null`)
        Arrays.sort(numeros, (a, b) -> {
            if (a == null) return 1;  // Move null para o final
            if (b == null) return -1;
            return a - b;
        });

        System.out.println("Array ordenado: " + Arrays.toString(numeros));

        scanner.close();
    }
}
