public class SelectionSort { // Define a classe chamada SelectionSort
    public static void selectionSort(int[] arr) { // Método para ordenar um array usando Selection Sort
        int n = arr.length; // Obtém o tamanho do array

        // Loop externo percorre o array até o penúltimo elemento
        for (int i = 0; i < n - 1; i++) {
            int minIndex = i; // Assume que o menor elemento está na posição i

            // Loop interno percorre o restante do array para encontrar o menor elemento
            for (int j = i + 1; j < n; j++) {
                if (arr[j] < arr[minIndex]) { // Se encontrar um elemento menor, atualiza minIndex
                    minIndex = j;
                }
            }

            // Troca o menor elemento encontrado com o elemento na posição i
            int temp = arr[minIndex]; // Armazena o menor valor temporariamente
            arr[minIndex] = arr[i]; // Move o valor de arr[i] para a posição do menor valor
            arr[i] = temp; // Coloca o menor valor na posição correta
        }
    }

    public static void main(String[] args) { // Método principal para executar o código
        int[] arr = {3, 5, 7, 1, 4, 2, 6}; // Cria um array de inteiros desordenado
        selectionSort(arr); // Chama o método selectionSort para ordenar o array

        // Imprime o array ordenado no console
        System.out.println(java.util.Arrays.toString(arr));
    }
}
