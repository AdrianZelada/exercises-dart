/*
In 3 previous exercises, we built up a few components needed to build a Tic Tac Toe game in Dart:

Draw the Tic Tac Toe game board
Checking whether a game board has a winner
Handle a player move from user input
The next step is to put all these three components together to make a two-player Tic Tac Toe game!

Your challenge in this exercise is to use the functions from those previous exercises all together in the same program to make a two-player game that you can play with a friend. There are a lot of choices you will have to make when completing this exercise, so you can go as far or as little as you want with it.

Here are a few things to keep in mind:

You should keep track of who won - if there is a winner, show a congratulatory message on the screen.
If there are no more moves left, don’t ask for the next player’s move!
:notes: Keep in mind, the current solution is not just a copy pase of functions from the previous exercises, but rather a rework of them.
*/

import 'dart:io';

void main() {
  int size = 3;
  int steps = 0;
  List<List<int>> list = buildNumbers(size);
  List<List<String>> listBoard = buildBoard(size);
  Map<dynamic, dynamic> gamers = {};
  gamers["1"] = "X";
  gamers["2"] = "O";
  int player = 1;
  while (steps < (size*size)) {
    print("Hello Player: ${player}");
    print("Could you give me any coord into x?");
    String cmdX = stdin.readLineSync() as String;
    int x = int.parse(cmdX);
    print("Could you give me any coord into Y?");
    String cmdY = stdin.readLineSync() as String;
    int y = int.parse(cmdY);
    
    if(list[y][x] != 0) {
      print("Error!!!, please choice other option");
    } else {
      list = setList(list, x, y, player);
      listBoard = setBoard(listBoard, x, y, gamers["$player"]);
      printBoard(listBoard);
      int win = verifyWon(list); 
      if(win != 0 ) {
        print("Player $player is the Winer");
        break;
      }
      player = player == 1 ? 2 : 1; 
      steps += 1;
      if(steps == 9 ) {
        print("Is a tie!!!");
      }
    }
  }
}


// logic board simple
List<List<int>> buildNumbers(int size) {
  return List.generate(size, (index) => List.generate(size, (index) => 0));
}

List<List<int>> setList(List<List<int>> list, x , y , player) {
  list[y][x] = player;
  return list;
}

// Print Board
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

// verify!!!

int verifyWon(List< List<int>> board){
  int win = findRow(board); 
  if(win != 0) {
    return win;
  }
  win = findColumn(board); 
  if(win != 0) {
    return win;
  }
  win = findDiag(board); 
  if(win != 0) {
    return win;
  } 
  return 0;
}

int findRow(List< List<int>> board){
  int i = 0;
  int win = 0;
  while(i < board.length ) {
    List<int> l = board[i].toSet().toList();
    if(l.length >= 2) {
      i +=1;
    } else {
      win = l[0];
      break;
    }
  }
  return win;
}

int findColumn(List< List<int>> board){
  int ind = 0;
  int win = 0;
  List<int> flatBoard = [];
  for (var i = 0; i < board.length; i++) {
    for (var j = 0; j < board[i].length; j++) {
      flatBoard.add(board[i][j]);
    }
  }

  while(ind <= 2) {
    if(flatBoard[ind] == flatBoard[ind + 3]) {
      if(flatBoard[ind+3] == flatBoard[ind + 6]) {
        win = flatBoard[ind];
        break;
      }
    }
    ind +=1;
  }
  return win;
}

int findDiag(List< List<int>> board){
  List<int> supDiag = [];
  List<int> minDiag = [];
  for (var i = 0; i < board.length; i++) {
    supDiag.add(board[i][i]);
    minDiag.add(board[board.length - 1 -i ][i]);
  }
  supDiag = supDiag.toSet().toList();
  minDiag = minDiag.toSet().toList();
  if(supDiag.length == 1){
    return supDiag[0];
  }
  if(minDiag.length == 1){
    return minDiag[0];
  }
  return 0;
}

