/*
Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.

Keep track of how many guesses the user has taken, and when the game ends, print this out.
*/

import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  const limit = 100;
  int randNumber = random.nextInt(limit);
  int attempt = 0;

  print("$randNumber");
  while (true) {
    print("Could you give me a number please?");  
    String cmd = stdin.readLineSync() as String;
    if(cmd == 'exit') {
      print("The number was $randNumber");
      print("You tried $attempt times");
      break;
    }
    int num = int.parse(cmd);
    attempt++;
    if(num == randNumber) {
      print("Your number is exactly right $num");
      print("You tried $attempt times");
      break;
    }
    if(num < randNumber) {
      if(num <= randNumber/2) {
        print("It $num is very low");
      } else {
        print("It $num is low");
      }
    } else {
      if(num >= randNumber * 2) {
        print("It $num is very high");
      } else {
        print("It $num is high");
      }
    }
  }
}