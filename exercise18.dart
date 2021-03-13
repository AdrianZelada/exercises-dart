/*
As you may have guessed, we are trying to build up to a full tic-tac-toe board.
For now, we will simply focus on checking whether someone has WON the game, not worrying about how the moves were made.

If a game of Tic Tac Toe is represented as a list of lists, like so:

game = [[1, 2, 0],
        [2, 1, 0],
        [2, 1, 1]]
where a 0 means an empty square, a 1 means that player 1 put their token in that space, and a 2 means that player 2 put their token in that space.

Your task: given a 3 by 3 list of lists that represents a Tic Tac Toe game board, tell whether anyone has won, and tell which player won, if any.

A Tic Tac Toe win is 3 in a row - either in a row, a column, or a diagonal. Don’t worry about the case where TWO people have won - assume that in every board there will only be one winner.
*/

import 'dart:io';

void main() {
  List< List<int>> board = [
    [1,2,1],
    [1,2,0],
    [0,2,2]
  ];
  int win = verifyWon(board); 
  if(win == 0 ) {
    print("Is a tie!!!");
  } else {
    print("Player $win is the Winer");
  }  
}

int verifyWon(List< List<int>> board){
  int win = findRow(board); 
  print("$win");
  if(win != 0) {
    return win;
  }
  win = findColumn(board); 
  print("$win");
  if(win != 0) {
    return win;
  }
  win = findDiag(board); 
  print("$win");
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

