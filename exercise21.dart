/*
You, the user, will have in your head a number between 0 and 100. The program will guess a number, and you, the user, will say whether it is too high, too low, or your number.

At the end of this exchange, your program should print out how many guesses it took to get your number.
*/

import 'dart:io';
import 'dart:math';
final random = Random();
void main() {
  int rangeA = 0;
  int rangeB = 100;
  int attempt = 0;
  print("Think of a number");
  sleep(Duration(seconds:5));
  while (true) {
   int guess = range(rangeA, rangeB);
   print("Are you number is $guess?");
   print("Are Your number is High (h), Low (l), Equals (e) ?");
   String cmd = stdin.readLineSync() as String;
   if(cmd == "h") {
     rangeA = guess;
   }
   if(cmd == "l") {
     rangeB = guess;
   }
   if(cmd == "e") {
     print("Your are $attempt");
     break;
   }
   attempt += 1;
  }
  // print("Could you give me a number please?"); 
  // String cmd = stdin.readLineSync() as String;
  // int num = int.parse(cmd); 
}

int range(int min, int max) => min + random.nextInt(max - min);
