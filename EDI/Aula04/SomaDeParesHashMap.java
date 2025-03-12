import java.util.HashMap; // Importa a classe HashMap para armazenar contagens de números

public class SomaDeParesHashMap {

    // Método que conta o número de pares cuja soma é igual ao alvo (target)
    public static int contagemDeParesHashMap(int[] nums, int target) {
        HashMap<Integer, Integer> map = new HashMap<>(); // Mapa para armazenar a frequência dos números
        int count = 0; // Variável para contar os pares encontrados

        // Percorre cada número no array
        for (int num : nums) {
            int complement = target - num; // Calcula o complemento necessário para formar o par

            // Se o complemento já existe no mapa, soma sua ocorrência ao contador
            if (map.containsKey(complement)) {
                count += map.get(complement);
            }

            // Adiciona ou atualiza a contagem do número atual no mapa
            map.put(num, map.getOrDefault(num, 0) + 1);
        }
        return count; // Retorna o número total de pares encontrados
    }

    public static void main(String[] args) {
        int[] nums = NumberArrayProvider.getNumbers(); // Obtém o array de números a partir de um provedor externo
        int target = 6; // Define o valor alvo da soma dos pares

        long startTime = System.nanoTime(); // Marca o tempo de início da execução

        int result = contagemDeParesHashMap(nums, target); // Chama o método para contar os pares

        long endTime = System.nanoTime(); // Marca o tempo de término da execução

        // Exibe o número de pares encontrados
        System.out.println("Número de pares encontrados: " + result);

        // Calcula e exibe o tempo de execução em segundos
        System.out.println("Tempo de execução: " + (endTime - startTime) / 1_000_000_000.0 + " segundos");
    }
}
