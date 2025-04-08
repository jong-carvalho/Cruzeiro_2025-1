public class ShellSort { // Define a classe chamada ShellSort
    public static void shellSort(int[] arr) { // Método para ordenar um array usando Shell Sort
        int n = arr.length; // Obtém o tamanho do array

        // Loop para definir os "gaps" (distância entre elementos comparados)
        for (int gap = n / 2; gap > 0; gap /= 2) {
            // Começa com gap grande e vai reduzindo até 1 (Insertion Sort no final)

            // Loop interno para percorrer os elementos a partir do índice "gap"
            for (int i = gap; i < n; i++) {
                int temp = arr[i]; // Armazena temporariamente o valor do elemento atual
                int j = i;

                // Move os elementos maiores que "temp" para a direita
                while (j >= gap && arr[j - gap] > temp) {
                    arr[j] = arr[j - gap]; // Move o elemento "gap" posições para frente
                    j -= gap; // Atualiza o índice para verificar a próxima posição
                }

                // Insere "temp" na posição correta
                arr[j] = temp;
            }
        }
    }

    public static void main(String[] args) { // Método principal para executar o código
        int[] arr = {3, 5, 7, 1, 4, 2, 6}; // Cria um array de inteiros desordenado
        shellSort(arr); // Chama o método shellSort para ordenar o array

        // Imprime o array ordenado no console
        System.out.println(java.util.Arrays.toString(arr));
    }
}
