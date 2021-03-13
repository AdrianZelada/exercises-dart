/*
Write a program that takes a list of numbers for example

a = [5, 10, 15, 20, 25]
and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.
*/

import 'dart:io';

void main(List<String> args) {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> b = newList(a);
  print("$b");
}

List<int> newList(List<int> list) {  
  List<int> l = [];
  // l.add(list[0]);
  // l.add(list[list.length-1]);
  l.add(list.first);
  l.add(list.last);
  return l;
}
