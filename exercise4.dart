/*
Create a program that asks the user for a number and then prints out a list of all the divisors of that number.

If you don’t know what a divisor is, it is a number that divides evenly into another number. For example, 13 is a divisor of 26 because 26 / 13 has no remainder.
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Give me a number: ");
  int num = int.parse(stdin.readLineSync() as String);
  int i = 1;
  double half = num / 2;
  while (half.toInt() >= i) {
    if(num % i == 0){
      print("$i");
    }
    i++;
  }
  print("$num");
}