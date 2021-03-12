// https://hackmd.io/@kuzmapetrovich/S1x90jWGP
// Ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user.
import 'dart:io';

void main() {
  stdout.write("Hi. give me o number: ");
  int num = int.parse(stdin.readLineSync() as String);

  if(num.isEven){
    print("Your number $num is Even");
  } else {
    print("Your number $num is Odd");
  }
}