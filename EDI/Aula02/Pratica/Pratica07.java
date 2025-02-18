package Pratica;
class Produto {
    String nome;
    double preco;

    Produto(String nome, double preco) {
        this.nome = nome;
        this.preco = preco;
    }
}

public class Pratica07 {
    public static void main(String[] args) {
        Produto p1 = new Produto("Celular", 1500.00);
        Produto p2 = p1; // p2 aponta para o mesmo endereço de memória de p1

        p2.preco = 1200.00; // Alterando o preço pelo objeto p2

        System.out.println("Preço do p1: " + p1.preco); // Ambos os objetos terão o mesmo valor alterado
        System.out.println("Preço do p2: " + p2.preco);
    }
}
