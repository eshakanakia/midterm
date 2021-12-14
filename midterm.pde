String[][] makeChessBoard() {
  String[] alphabet= {"A", "B", "C", "D", "E", "F", "G", "H"};
  char [] numbers= "87654321".toCharArray();
  String[][] arr = new String[8][8];
  for (int row = 0; row < alphabet.length; row++) {
    for (int column = 0; column < numbers.length; column++) {
      arr[row][column] = numbers[row] + alphabet[column];
    }
  }
  return arr;
}

String[][] yourChessBoard = makeChessBoard();
//System.out.println();

/*
returns
 {
 {"a8", "b8", "c8", "d8", "e8", "f8", "g8", "h8"},
 {"a7", "b7", "c7", "d7", "e7", "f7", "g7", "h7"},
 {"a6", "b6", "c6", "d6", "e6", "f6", "g6", "h6"},
 {"a5", "b5", "c5", "d5", "e5", "f5", "g5", "h5"},
 {"a4", "b4", "c4", "d4", "e4", "f4", "g4", "h4"},
 {"a3", "b3", "c3", "d3", "e3", "f3", "g3", "h3"},
 {"a2", "b2", "c2", "d2", "e2", "f2", "g2", "h2"},
 {"a1", "b1", "c1", "d1", "e1", "f1", "g1", "h1"}
 };
 */


void setup() {
  size(400, 400);
  println(yourChessBoard); //<>//
}

void draw() {
  background(220);
  int cellSize = 50;
  for (int i = 0; i < 8; i++) { //row
    for (int j = 0; j < 8; j++) { //column
      rect(i * cellSize, j * cellSize, width/8, height/8);
      //use % to fill every other box
      if (i%2 == 0 && j%2 == 0 || i%2 != 0 && j%2 != 0) {
        fill(0);
      } else if (i%2 != 0 && j%2 == 0 || i%2 == 0 && j % 2 != 0) {
        fill(220);
      }
      //if (i%2 == 0) {
      //  if (j%2 == 0) {
      //    fill(0);
      //  }
      //} else {
      //  fill(220);
      //}
      //if (j%2 != 0) {
      //  fill(220);
      //}
    }
  }
}
//String[][] yourChessBoard = makeChessBoard();
