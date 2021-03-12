/*
Ask the user for a number and determine whether the number is prime or not.

Do it using a function
*/

import 'dart:io';

void main(List<String> args) {
  print("Could you give me a number please?");  
  String cmd = stdin.readLineSync() as String;
  int num = int.parse(cmd);
  bool isP = isPrime(num);
  print("Is $num a number prime?");
  if(isP){
    print("Response: Yes, is a prime");  
  } else {
    print("Response: No, isn't a prime");  
  }  
}

bool isPrime(int number) {  
  bool sw = true;
  int i = 2;
  while((i <= number/2) && sw){
    if(number % i == 0 ){
      sw = false;
      break;
    }
    i++;
  }
  return sw;
}
