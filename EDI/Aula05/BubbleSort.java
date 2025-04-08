public class BubbleSort { // Define a classe chamada BubbleSort
    public static void bubbleSort(int[] arr) { // Método que implementa o Bubble Sort
        int n = arr.length; // Obtém o tamanho do array
        boolean swapped; // Variável para verificar se houve troca na iteração

        // Loop externo que controla as passagens pelo array
        for (int i = 0; i < n - 1; i++) {
            swapped = false; // Inicializa como falso a cada iteração

            // Loop interno para comparar e trocar elementos adjacentes
            for (int j = 0; j < n - i - 1; j++) {
                // Se o elemento atual for maior que o próximo, troca de posição
                if (arr[j] > arr[j + 1]) {
                    int temp = arr[j]; // Armazena temporariamente o valor de arr[j]
                    arr[j] = arr[j + 1]; // Move arr[j + 1] para a posição de arr[j]
                    arr[j + 1] = temp; // Coloca o valor temporário em arr[j + 1]
                    swapped = true; // Marca que houve troca nesta iteração
                }
            }

            // Se nenhuma troca foi feita, o array já está ordenado e podemos sair do loop
            if (!swapped) break;
        }
    }

    public static void main(String[] args) { // Método principal para executar o código
        int[] arr = {3, 5, 7, 1, 4, 2, 6}; // Cria um array de inteiros não ordenado
        bubbleSort(arr); // Chama o método bubbleSort para ordenar o array

        // Imprime o array ordenado no console
        System.out.println(java.util.Arrays.toString(arr));
    }
}
