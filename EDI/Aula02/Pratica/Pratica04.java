package Pratica;
class Carro {
    String marca;
    String modelo;
    int ano;

    Carro(String marca, String modelo, int ano) {
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
    }

    void exibirInfo() {
        System.out.println("Carro: " + marca + " " + modelo + " - Ano " + ano);
    }
}

public class Pratica04 {
    public static void main(String[] args) {
        Carro meuCarro = new Carro("Chevrolet", "Corsa", 2010);
        meuCarro.exibirInfo();
    }
}
