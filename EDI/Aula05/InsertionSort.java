public class InsertionSort { // Define a classe chamada InsertionSort
    public static void insertionSort(int[] arr) { // Método para ordenar um array usando Insertion Sort
        int n = arr.length; // Obtém o tamanho do array

        // Loop externo que percorre o array a partir do segundo elemento (índice 1)
        for (int i = 1; i < n; i++) {
            int key = arr[i]; // Armazena o valor do elemento atual que será inserido na posição correta
            int j = i - 1; // Define o índice do elemento anterior

            // Move os elementos do array que são maiores que a chave uma posição à frente
            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j]; // Move o elemento para a direita
                j--; // Decrementa o índice para continuar comparando os elementos anteriores
            }

            // Insere o elemento (key) na posição correta
            arr[j + 1] = key;
        }
    }

    public static void main(String[] args) { // Método principal que executa o código
        int[] arr = {3, 5, 7, 1, 4, 2, 6}; // Cria um array de inteiros desordenado
        insertionSort(arr); // Chama o método insertionSort para ordenar o array

        // Imprime o array ordenado no console
        System.out.println(java.util.Arrays.toString(arr));
    }
}
