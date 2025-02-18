import java.util.Arrays;


import java.util.Arrays;

public class InsercaoArray {
    public static void main(String[] args) {
        // Array com tamanho fixo
        int[] array = new int[5];
        int tamanhoAtual = 0;

        // Inserir elementos
        array[tamanhoAtual++] = 10;
        array[tamanhoAtual++] = 20;
        array[tamanhoAtual++] = 30;

        System.out.println("Array após inserção: " + Arrays.toString(array));
    }
}
