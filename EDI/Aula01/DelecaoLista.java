
import java.util.ArrayList;
import java.util.List;

public class DelecaoLista {
    public static void main(String[] args) {
        List<Integer> lista = new ArrayList<>();
        lista.add(10);
        lista.add(20);
        lista.add(30);

        // Remover elemento pelo índice
        lista.remove(1);

        System.out.println("Lista após deleção: " + lista);
    }
}

