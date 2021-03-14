/*
In the game of Hangman, a clue word is given by the program that the player has to guess, letter by letter. The player guesses one letter at a time until the entire word has been guessed. (In the actual game, the player can only guess 6 letters incorrectly before losing).

Let’s say the word the player has to guess is EVAPORATE.
For this exercise:

Write the logic that asks a player to guess a letter and displays letters in the clue word that were guessed correctly. For now, let the player guess an infinite number of times until they get the entire word.

As a bonus, keep track of the letters the player guessed and display a different message if the player tries to guess that letter again.

Remember to stop the game when all the letters have been guessed correctly! Don’t worry about choosing a word randomly or keeping track of the number of guesses the player has remaining - we will deal with those in a future exercise.
*/
import 'dart:io';
import 'dart:math';

void main() {
  String word = "EVAPORATE";
  String wordWish = "-" * word.length ;  
  int attempt = 0;
  print("Guess the Word");
  while (true) {
    print("Could you give me a letter please?");  
    String cmd = stdin.readLineSync() as String;
    wordWish = replaceLetter(word.toUpperCase(), wordWish, cmd.toUpperCase());
    print("$wordWish");    
    if(wordWish == word) {
      print("You Win");
      break;
    }
    attempt += 1;
    if(wordWish == word) {
      print("You Win");
      break;
    }
  }
}

String replaceLetter(String originalWord, String templateWord, String letter) {
  List<String> word = originalWord.split("");
  List<String> tWord = templateWord.split("");
  for (var i = 0; i < word.length; i++) {
    if(word[i] == letter) {
      tWord[i] = letter;
    }
  }
  return tWord.join("");
}



