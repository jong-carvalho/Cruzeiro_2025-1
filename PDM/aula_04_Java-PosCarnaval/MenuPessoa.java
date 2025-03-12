import java.util.Scanner;

public class MenuPessoa {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Pessoa pessoa = null;

        while (true) {
            System.out.println("\nMenu:");
            System.out.println("1 - Inserir Pessoa");
            System.out.println("2 - Adicionar Conta Bancária");
            System.out.println("3 - Remover Conta Bancária");
            System.out.println("4 - Exibir Dados");
            System.out.println("5 - Sair");
            System.out.print("Escolha uma opção: ");

            int opcao = scanner.nextInt();
            scanner.nextLine();

            switch (opcao) {
                case 1:
                    System.out.print("Nome: ");
                    String nome = scanner.nextLine();
                    System.out.print("Idade: ");
                    int idade = scanner.nextInt();
                    scanner.nextLine();
                    System.out.print("CPF: ");
                    String cpf = scanner.nextLine();
                    System.out.print("Endereço: ");
                    String endereco = scanner.nextLine();
                    System.out.print("Telefone: ");
                    String telefone = scanner.nextLine();
                    pessoa = new Pessoa(nome, idade, cpf, endereco, telefone);
                    System.out.println("Pessoa cadastrada com sucesso!");
                    break;
                case 2:
                    if (pessoa == null) {
                        System.out.println("Nenhuma pessoa cadastrada. Cadastre primeiro!");
                    } else {
                        System.out.print("Nome do Banco: ");
                        String banco = scanner.nextLine();
                        pessoa.adicionarContaBancaria(banco);
                    }
                    break;
                case 3:
                    if (pessoa == null) {
                        System.out.println("Nenhuma pessoa cadastrada. Cadastre primeiro!");
                    } else {
                        System.out.print("Nome do Banco a remover: ");
                        String banco = scanner.nextLine();
                        pessoa.removerContaBancaria(banco);
                    }
                    break;
                case 4:
                    if (pessoa == null) {
                        System.out.println("Nenhuma pessoa cadastrada. Cadastre primeiro!");
                    } else {
                        pessoa.exibirInformacoes();
                    }
                    break;
                case 5:
                    System.out.println("Saindo...");
                    scanner.close();
                    return;
                default:
                    System.out.println("Opção inválida! Tente novamente.");
            }
        }
    }
}
