public class SomaDeParesForcaBruta {

    public static int contagemDeParesForcaBruta(int[] nums, int target) {

        int count = 0; // Inicializa o contador de pares
        int n = nums.length; // Obtém o tamanho do array

        for (int i = 0; i < n; i++) { // Percorre o array
            for (int j = i + 1; j < n; j++) { // Percorre o array a partir do próximo elemento
                if (nums[i] + nums[j] == target) { // Verifica se a soma dos elementos é igual ao alvo
                    count++; // Incrementa o contador
                }
            }
        }
        return count; // Retorna o número de pares encontrados
    }

    public static void main(String[] args) {
        int[] nums = NumberArrayProvider.getNumbers(); // Obtém o array de números da classe NumberArrayProvider
        int target = 6; // Define o alvo da soma

        long startTime = System.nanoTime(); // Início da medição de tempo

        int result = contagemDeParesForcaBruta(nums, target); // Chama o método de contagem de pares

        long endTime = System.nanoTime(); // Fim da medição de tempo

        System.out.println("Número de pares encontrados: " + result); // Exibe o número de pares encontrados
        System.out.println("Tempo de execução: " + (endTime - startTime) / 1_000_000_000.0 + " segundos"); // Exibe o tempo de execução
    }
}
