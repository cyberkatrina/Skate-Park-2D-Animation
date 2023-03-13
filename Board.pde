class Board extends Swings {
  // create PShape object for the skateboard
  PShape board;
  Board(float radius, float x, float y, float theta, String modifier, int mod) {
    super( radius, x, y, theta, modifier, mod);
    // load svg file as the board PShape
    board = loadShape("board1.svg");
    // scale board to be the correct size on the screen
    board.scale(4, 35);
  }
  void move() {
    // Change frame of refrence to position of swing
    super.move();
    super.swing();
    // draw the board as a shape at the given x, y coordinates and with the given size
    shape(board, 0, this.radius, 40, 10);
    resetMatrix(); // always make sure to rest matrix at the end becasue matrix needs to be reset :P
  }
}
