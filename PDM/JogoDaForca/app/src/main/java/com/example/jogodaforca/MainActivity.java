package com.example.jogodaforca;

import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity {

    // Declaração das variáveis para a interface
    private TextView textViewWord, textViewAttempts, textViewStatus;
    private EditText editTextGuess;
    private Button buttonGuess;

    // Palavra a ser adivinhada
    private String wordToGuess = "ANDROID"; // Palavra oculta que o jogador tem que adivinhar

    // Lista para armazenar as letras já tentadas
    private ArrayList<Character> guessedLetters = new ArrayList<>();

    // Número de tentativas restantes
    private int attemptsRemaining = 6;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Inicializa as views associadas com os componentes da interface
        textViewWord = findViewById(R.id.textViewWord);
        textViewAttempts = findViewById(R.id.textViewAttempts);
        textViewStatus = findViewById(R.id.textViewStatus);
        editTextGuess = findViewById(R.id.editTextGuess);
        buttonGuess = findViewById(R.id.buttonGuess);

        // Atualiza a interface com a palavra oculta e as tentativas restantes
        updateWordDisplay();
        updateAttemptsDisplay();

        // Definindo o evento de clique do botão "Tentar"
        buttonGuess.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Obtém a letra digitada pelo usuário e converte para maiúscula
                String guess = editTextGuess.getText().toString().toUpperCase();

                // Verifica se o usuário digitou exatamente uma letra
                if (guess.length() == 1) {
                    char letter = guess.charAt(0);

                    // Verifica se a letra já foi tentada
                    if (guessedLetters.contains(letter)) {
                        // Caso a letra já tenha sido tentada, exibe uma mensagem
                        textViewStatus.setText(getString(R.string.already_guessed));
                    } else {
                        // Adiciona a letra à lista de letras já tentadas
                        guessedLetters.add(letter);

                        // Verifica se a letra digitada está na palavra
                        if (wordToGuess.contains(String.valueOf(letter))) {
                            // Se a letra for correta, atualiza a palavra e verifica se venceu
                            updateWordDisplay();
                            if (isWordGuessed()) {
                                textViewStatus.setText(getString(R.string.win_message)); // Exibe mensagem de vitória
                                textViewStatus.setTextColor(getResources().getColor(R.color.colorTextVictory)); // Altera a cor do texto para verde
                            }
                        } else {
                            // Se a letra for incorreta, decrementa as tentativas restantes
                            attemptsRemaining--;
                            updateAttemptsDisplay();

                            // Se as tentativas chegaram a zero, o jogo termina com derrota
                            if (attemptsRemaining == 0) {
                                textViewStatus.setText(getString(R.string.lose_message, wordToGuess)); // Exibe a mensagem de derrota com a palavra correta
                                textViewStatus.setTextColor(getResources().getColor(R.color.colorTextDefeat)); // Altera a cor do texto para vermelho
                            }
                        }
                    }
                } else {
                    // Caso o usuário não tenha digitado uma única letra, exibe mensagem de erro
                    textViewStatus.setText(getString(R.string.input_invalid));
                }

                // Limpa o campo de entrada de texto para o próximo palpite
                editTextGuess.setText("");
            }
        });
    }

    // Função para atualizar a exibição da palavra oculta
    private void updateWordDisplay() {
        StringBuilder wordDisplay = new StringBuilder();

        // Itera por cada letra da palavra oculta
        for (char c : wordToGuess.toCharArray()) {
            // Se a letra foi adivinhada, exibe a letra, caso contrário, exibe um "_"
            if (guessedLetters.contains(c)) {
                wordDisplay.append(c).append(" ");
            } else {
                wordDisplay.append("_ ");
            }
        }

        // Atualiza o TextView para mostrar a palavra ou os "_" que ainda faltam adivinhar
        textViewWord.setText(wordDisplay.toString());
    }

    // Função para atualizar o número de tentativas restantes
    private void updateAttemptsDisplay() {
        // Atualiza o TextView para mostrar as tentativas restantes
        textViewAttempts.setText(getString(R.string.attempts_label, attemptsRemaining));
    }

    // Função para verificar se o jogador adivinhou toda a palavra
    private boolean isWordGuessed() {
        // Itera por cada letra da palavra oculta
        for (char c : wordToGuess.toCharArray()) {
            // Se alguma letra não foi adivinhada, retorna false
            if (!guessedLetters.contains(c)) {
                return false;
            }
        }
        // Se todas as letras foram adivinhadas, retorna true
        return true;
    }
}