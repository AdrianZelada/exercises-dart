/*
Implement a function that takes as input three variables, and returns the largest of the three. Do this without using the Dart max() function!

The goal of this exercise is to think about some internals that Dart normally takes care of for us. All you need is some variables and if statements!
*/

import 'dart:io';

void main(List<String> args) {
  int a = 5;
  int b = 10;
  int c = 50;
  int max = 0;
  
  if((a>=b) && (a>=c)) {
    max = a;
  }
  if((b>=a) && (b>=c)) {
    max = b;
  }
  if((c>=b) && (c>=a)) {
    max = c;
  }
  print("$max");
}