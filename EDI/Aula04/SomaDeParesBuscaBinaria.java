import java.util.Arrays;

public class SomaDeParesBuscaBinaria {
    
    public static int countPairsSorted(int[] nums, int target) {
        Arrays.sort(nums); // Ordena o array
        int count = 0; // Inicializa o contador de pares
        for (int i = 0; i < nums.length; i++) { // Percorre o array
            if (buscaBinaria(nums, i + 1, nums.length - 1, target - nums[i])) { // Verifica se o complemento do alvo está presente no array
                count++; // Incrementa o contador
            }
        }
        return count; // Retorna o número de pares encontrados
    }

    private static boolean buscaBinaria(int[] nums, int left, int right, int key) { // Implementa a busca binária
        while (left <= right) { // Enquanto o limite esquerdo for menor ou igual ao limite direito
            int mid = left + (right - left) / 2; // Calcula o índice do elemento do meio
            if (nums[mid] == key) return true; // Verifica se o elemento do meio é igual ao alvo
            else
            if (nums[mid] < key) left = mid + 1; // Atualiza o limite esquerdo
            else right = mid - 1; // Atualiza o limite direito
        }
        return false; // Retorna falso se o elemento não for encontrado
    }

    public static void main(String[] args) {
        int[] nums = NumberArrayProvider.getNumbers(); // Obtém o array de números
        int target = 6; // Define o alvo da soma

        long startTime = System.nanoTime();  // Início da medição de tempo

        int result = countPairsSorted(nums, target); // Chama o método de contagem de pares

        long endTime = System.nanoTime();  // Fim da medição de tempo

        System.out.println("Número de pares encontrados: " + result); // Exibe o número de pares encontrados
        System.out.println("Tempo de execução: " + (endTime - startTime) / 1_000_000_000.0 + " segundos"); // Exibe o tempo de execução
    }
}
