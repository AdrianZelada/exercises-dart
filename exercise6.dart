/*
Ask the user for a string and print out whether this string is a palindrome or not.

A palindrome is a string that reads the same forwards and backwards.
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Give me anything word: ");
  String word = stdin.readLineSync() as String;
  print("$word");
  List<String> letters = word.split('');
  print("$letters");
  List<String> rletters = new List.from(letters.reversed);
  print("$rletters");
  String palindrome = rletters.join();
  print("$palindrome");
  if (palindrome == word) {
    print("$word is Palindrome");
  } else {
    print("$word is not Palindrome");
  } 
}