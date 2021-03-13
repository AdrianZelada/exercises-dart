/*
Write a program that asks the user how many Fibonnaci numbers to generate and then generates them. Take this opportunity to think about how you can use functions.

Make sure to ask the user to enter the number of numbers in the sequence to generate.
*/

import 'dart:io';

void main(List<String> args) {
  print("Could you give me a number please?"); 
  String cmd = stdin.readLineSync() as String;
  int num = int.parse(cmd);
  List<int> fibo = fibonacci(num);
  List<int> fiboOther = fibonacci(num);
  print("$fibo");
  print("$fiboOther");
}


List<int> fibonacci(int n) {
  int a = -1;  
  int b = 1;
  int c = 0;
  List<int> r = [];
  for(int i = 0; i< n ; i++) {
    c = a + b;
    a = b;
    b = c;
    r.add(c);
  }
  return r;
}


List<int> otherFibonacci(int n) {
  int a = -1;  
  int b = 1;
  int c = 0;
  List<int> r = List.generate(n, (index) {
    c = a + b;
    a = b;
    b = c;
    return c;
  });
  return r ; 
}
