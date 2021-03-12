/*
Take two lists, for example:

  a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

  b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
and write a program that returns a list that contains only the elements that are common between them (without duplicates). Make sure your program works on two lists of different sizes.
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Give me a number: ");
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 12];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> a_withoutDuplicate = deleteDuplicates(a);
  List<int> b_withoutDuplicate = deleteDuplicates(b);

  List<int> result = joinLists(a_withoutDuplicate, b_withoutDuplicate);

  print("$result");
}

List<int> deleteDuplicates(List<int> list) {
  List<int> aux = [];
  for (var i = 0; i < list.length; i++) {
    bool sw = false;
    for (var j = i+1; j < list.length; j++) {
      if(list[i] == list[j]){
        sw = true;
      }
    }
    if(!sw){
      aux.add(list[i]);
    }
  }
  return aux;
}


List<int> joinLists(List<int> list1, List<int> list2) {
  List<int> aux = [];
  for (var i = 0; i < list1.length; i++) {
    for (var j = 0; j < list2.length; j++) {
      if(list1[i] == list2[j]){
        aux.add(list1[i]);
      }
    }
  }
  return aux;
}
