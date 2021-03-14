/*
In this exercise, the task is to write a function that picks a random word from a list of words from the SOWPODS dictionary.

Download this file and save it in the same directory as your Dart code. Each line in the file contains a single word.
*/
import 'dart:io';
import 'dart:math';

void main() {
  String word = randomWord("words.txt");
  print(word);
}

String randomWord(String txt) {
  /*
  Reads the given file as a list
  Then picks a random word from it
  */
  final random = Random();
  var file = File(txt);
  List<String> wordList = file.readAsLinesSync();
  String word = wordList[random.nextInt(wordList.length)];
  return word;
}
