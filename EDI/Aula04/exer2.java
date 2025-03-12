import java.util.Scanner;

public class JogoAdivinhacao {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numeroAleatorio = (int) (Math.random() * 100) + 1;
        int tentativa;
        
        System.out.println("Tente adivinhar o número (entre 1 e 100):");
        
        while (true) {
            System.out.print("> ");
            tentativa = scanner.nextInt();
            
            if (tentativa > numeroAleatorio) {
                System.out.println("Muito alto! Tente novamente.");
            } else if (tentativa < numeroAleatorio) {
                System.out.println("Muito baixo! Tente novamente.");
            } else {
                System.out.println("Parabéns! Você acertou.");
                break;
            }
        }
        
        scanner.close();
    }
}
