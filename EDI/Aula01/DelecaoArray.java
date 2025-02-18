import java.util.Arrays;

public class DelecaoArray {
    public static void main(String[] args) {
        int[] array = {10, 20, 30, 40, 50};
        int tamanhoAtual = 5;

        // Índice do elemento a ser removido
        int indiceRemover = 2;

        // Deslocar elementos para a esquerda
        for (int i = indiceRemover; i < tamanhoAtual - 1; i++) {
            array[i] = array[i + 1];
        }

        // Reduz o tamanho atual
        tamanhoAtual--;

        System.out.println("Array após deleção: " + Arrays.toString(array));
    }
}
