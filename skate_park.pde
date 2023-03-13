Cloud cloud1;
Cloud cloud2;
Cloud cloud3;
Cloud cloud4;
Arms arms1;
Arms arms2;
Skater skater1;
Skater skater2;
Board board1;
Board board2;
wheels wheels1;
wheels wheels2;
PShape halfPipe1;
PShape halfPipe2;
float count = 0;
float sw1_rad = 123;
float sw1_x = 190;
float sw1_y = 350;
float sw1_ti = 1;
float sw2_rad = 117;
float sw2_x = 515;
float sw2_y = 350;
float sw2_ti = -1;
String sw2_moder = "Drag";
String sw1_moder = "Gravity";
int sw1_mod = 9;
int sw2_mod = 1;

// Set up all the objects
void setup() {
  size(700, 700);
  cloud1 = new Cloud(100, 100, 1.3, 1.01);
  cloud2 = new Cloud(300, 120, 0.7, 1.005);
  cloud3 = new Cloud(450, 50, 1.8, 1.01);
  cloud4 = new Cloud(600, 80, 1.5, 1.005);
  halfPipe1 = loadShape("please_work.svg");
  halfPipe2 = loadShape("please_work.svg");

  board1 = new Board(sw1_rad, sw1_x, sw1_y, sw1_ti, sw1_moder, sw1_mod);
  board2 = new Board(sw2_rad, sw2_x, sw2_y, sw2_ti, sw2_moder, sw2_mod);
  wheels1 = new wheels(sw1_rad, sw1_x, sw1_y, sw1_ti, sw1_moder, sw1_mod, 5, true);
  wheels2 = new wheels(sw2_rad, sw2_x, sw2_y, sw2_ti, sw2_moder, sw2_mod, 6, false);
  skater1 = new Skater(sw1_rad, sw1_x, sw1_y, sw1_ti, sw1_moder, sw1_mod);
  skater2 = new Skater(sw2_rad, sw2_x, sw2_y, sw2_ti, sw2_moder, sw2_mod);
  arms1 = new Arms(sw1_rad, sw1_x, sw1_y, sw1_ti, sw1_moder, sw1_mod);
  arms2 = new Arms(sw2_rad, sw2_x, sw2_y, sw2_ti, sw2_moder, sw2_mod);
}


void draw() {
  background(173, 189, 255);
  noStroke();
  fill(70, 194, 95);
  rectMode(RADIUS);
  rect(width/2, 600, width/2, 150);
  fill(255);
  translate(521, 460);
  scale(1.1, 0.5);
  shape(halfPipe1, 0, 0);
  resetMatrix();
  translate(190, 460);
  scale(1.3, 0.6);
  shape(halfPipe2, 0, 0);
  resetMatrix();
  // move all the animated objects
  board1.move();
  board2.move();
  wheels1.move();
  wheels2.move();
  skater1.moves();
  skater2.moves();
  arms1.move();
  arms2.move();
  cloud1.move();
  cloud2.move();
  cloud3.move();
  cloud4.move();
// keep track of clouds pulses so they switch between growing and shrinking
  count++;
  if (count < 100 && count%4 == 0) {
    cloud1.pulsate();
    cloud2.depulsate();
    cloud3.pulsate();
    cloud4.depulsate();
  }
  if (count < 200 && count > 100 && count%4 == 0) {
    cloud1.depulsate();
    cloud2.pulsate();
    cloud3.depulsate();
    cloud4.pulsate();
  }
  if (count > 200) {
    count = 0;
  }
}

// Rest all swing objects when clicked 
void mouseClicked() {
  board1 = new Board(sw1_rad, sw1_x, sw1_y, sw1_ti, sw1_moder, sw1_mod);
  board2 = new Board(sw2_rad, sw2_x, sw2_y, sw2_ti, sw2_moder, sw2_mod);
  wheels1 = new wheels(sw1_rad, sw1_x, sw1_y, sw1_ti, sw1_moder, sw1_mod, 5, true);
  wheels2 = new wheels(sw2_rad, sw2_x, sw2_y, sw2_ti, sw2_moder, sw2_mod, 6, false);
  skater1 = new Skater (sw1_rad, sw1_x, sw1_y, sw1_ti, sw1_moder, sw1_mod);
  skater2 = new Skater (sw2_rad, sw2_x, sw2_y, sw2_ti, sw2_moder, sw2_mod);
  arms1 = new Arms(sw1_rad, sw1_x, sw1_y, sw1_ti, sw1_moder, sw1_mod);
  arms2 = new Arms(sw2_rad, sw2_x, sw2_y, sw2_ti, sw2_moder, sw2_mod);
}

// Adjust the swing objects on key press
void keyPressed() {
  board1.keyPressed();
  board2.keyPressed();
  wheels1.keyPressed();
  wheels2.keyPressed();
  skater1.keyPressed();
  skater2.keyPressed();
  arms1.keyPressed();
  arms2.keyPressed();
}
