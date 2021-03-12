/*
Let’s say you are given a list saved in a variable:

a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]. 
Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.
*/

import 'dart:io';

void main(List<String> args) {
  List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> even = [];
  for (var j = 0; j < a.length; j++) {
    if(a[j].isEven){
      even.add(a[j]);
    } 
  }

  print("Your even list: $even");
}