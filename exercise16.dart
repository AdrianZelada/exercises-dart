/*
Create a program that will play the “cows and bulls” game with the user. The game works like this:

Randomly generate a 4-digit number. Ask the user to guess a 4-digit number. For every digit the user guessed correctly in the correct place, they have a “cow”. For every digit the user guessed correctly in the wrong place is a “bull.”
Every time the user makes a guess, tell them how many “cows” and “bulls” they have. Once the user guesses the correct number, the game is over. Keep track of the number of guesses the user makes throughout the game and tell the user at the end.
*/

import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  String randomNumber = (1000 + random.nextInt(9999 - 1000)).toString();
  print(randomNumber);
  stdout.write("Welcome to Cows and Bulls\nType 'exit' to stop the game\n");
  int attempts = 0;
  while (true) {
    attempts += 1;

    stdout.write("\nPlease choose a four digit number: ");
    String chosenNumber = stdin.readLineSync() as String;

    if (chosenNumber == randomNumber) {
      print("Bullseye! You took $attempts attempts");
      break;
    } else if (chosenNumber == "exit") {
      print("Bye bye!");
      break;
    } else if (chosenNumber.length != randomNumber.length) {
      print("Incorrect number. Make sure to give 4 digit number");
      continue;
    }

    var result = getResults(randomNumber, chosenNumber);
    print("\nAttempts: $attempts - $result");
  }
}

Map<dynamic, dynamic> getResults(String randomNumber, String userNumber) {
  var result = new Map();
  result["cows"] = 0;
  result["bulls"] = 0;
  for (var i = 0; i < randomNumber.length; i++) {
      if (userNumber[i] == randomNumber[i]) {
        result["cows"] += 1;
      } else if (randomNumber.contains(userNumber[i])) {
        result["bulls"] += 1;
      }
    }
  return result;
}