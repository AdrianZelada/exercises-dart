/*
Time for some fake graphics! Let’s say we want to draw game boards that look like this:

 --- --- --- 
|   |   |   | 
 --- --- ---  
|   |   |   | 
 --- --- ---  
|   |   |   | 
 --- --- --- 
This one is 3x3 (like in tic tac toe).

Ask the user what size game board they want to draw, and draw it for them to the screen using Dart’s print statement.
*/

import 'dart:io';

void main() {
  print("Could you give me a number please?");  
  String cmd = stdin.readLineSync() as String;
  int num = int.parse(cmd);
  for (var i = 0; i < num; i++) {
    print("${printRow(i == 0 , num)}");
  }
}

String printRow(bool isTop, int size) {
  String hShape = " ----"; 
  String vShape = "|    ";
  List<String> row = [];
  if(isTop){
    row.add(hShape*size);
  }
  row.add((vShape*size) + "|");
  row.add(hShape*size);

  return row.join("\n");
}