import java.util.Arrays;
import java.util.Random;

public class NumberArrayProvider {
//    private static final int[] numbers = new int[1000];
//    private static final int[] numbers = new int[10000];
//    private static final int[] numbers = new int[50000];
//    private static final int[] numbers = new int[100000];
    private static final int[] numbers = new int[1000000];

    static {
        Random random = new Random();
        for (int i = 0; i < numbers.length; i++) {
             numbers[i] = random.nextInt(100); // Gera números aleatórios entre 0 e 99
        }
    }

    public static int[] getNumbers() {
        return Arrays.copyOf(numbers, numbers.length); // Retorna uma cópia do array
    }
}
