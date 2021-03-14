/*
In a previous exercise we explored the idea of using a list of lists as a “data structure” to store information about a tic tac toe game. In a tic tac toe game, the “game server” needs to know where the Xs and Os are in the board, to know whether player 1 or player 2 (or whoever is X and O) won.

There has also been an exercise (17) about drawing the actual tic tac toe gameboard using text characters.

The next logical step is to deal with handling user input. When a player (say player 1, who is X) wants to place an X on the screen, they can’t just click on a terminal. So you are going to approximate this clicking simply by asking the user for a coordinate of where they want to place their piece.
*/

import 'dart:io';

void main() {
  List<List<String>> list = buildBoard(3);
  print("$list");
  printBoard(list);
  list = setBoard(list, 2, 0, "X");
  printBoard(list);
}

List<List<String>> buildBoard(int size) {
  List<List<String>> list = [];
  String vShape = "|   ";
  for (var i = 0; i < size; i++) {  
    list.add([]);
    for (var j = 0; j < size; j++) {
      list[i].add(vShape);
    }
  }
  return list;
}

List<List<String>> setBoard(List<List<String>> list, int x, int y, String player) {
  String chip = "| ${player} ";
  list[y][x] = chip;
  return list;
}

printBoard(List<List<String>> board){
  String hShape = " ---";
  List<String> stringList = [];
  int size = board.length;
  stringList.add(hShape*size);
  for (var i = 0; i < size; i++) {
    stringList.add(board[i].join("") + "|");
    stringList.add(hShape*size);
  }
  print("${stringList.join("\n")}");
}