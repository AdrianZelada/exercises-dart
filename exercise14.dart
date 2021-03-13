/*
Write a program (using functions!) that asks the user for a long string containing multiple words. Print back to the user the same string, except with the words in backwards order.
*/

import 'dart:io';
import 'dart:math';

void main() {
  print("Could you give me a sentence please?");  
  String cmdText = stdin.readLineSync() as String;
  String reverText = reverseText(cmdText);
  print("$reverText");
}

String reverseText(String text) {
  return text.split(" ").reversed.join(" ");
}