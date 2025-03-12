import java.util.ArrayList;
import java.util.Scanner;

class Pessoa {
    private String nome;
    private int idade;
    private String cpf;
    private String endereco;
    private String telefone;
    private ArrayList<String> contasBancarias;

    public Pessoa(String nome, int idade, String cpf, String endereco, String telefone) {
        this.nome = nome;
        this.idade = idade;
        this.cpf = cpf;
        this.endereco = endereco;
        this.telefone = telefone;
        this.contasBancarias = new ArrayList<>();
    }

    public void adicionarContaBancaria(String banco) {
        if (!contasBancarias.contains(banco)) {
            contasBancarias.add(banco);
            System.out.println("Conta adicionada com sucesso!");
        } else {
            System.out.println("Esta conta bancária já está cadastrada.");
        }
    }

    public void removerContaBancaria(String banco) {
        if (contasBancarias.remove(banco)) {
            System.out.println("Conta removida com sucesso!");
        } else {
            System.out.println("Conta não encontrada.");
        }
    }

    public void exibirInformacoes() {
        System.out.println("\n--- Dados da Pessoa ---");
        System.out.println("Nome: " + nome);
        System.out.println("Idade: " + idade);
        System.out.println("CPF: " + cpf);
        System.out.println("Endereço: " + endereco);
        System.out.println("Telefone: " + telefone);
        System.out.println("Contas Bancárias: " + (contasBancarias.isEmpty() ? "Nenhuma conta cadastrada" : contasBancarias));
    }
}