class Arms extends Skater {
  PShape right;
  PShape left;
  float theta = 0;
  float theta_mod = 0.01;
  Arms(float radius, float x, float y, float theta, String modifier, int mod) {
    super( radius, x, y, theta, modifier, mod);
    right = loadShape("right_arm2.svg");
    left = loadShape("left_arm2.svg");
  }
  // Move the arms
  void move() {
    // move the arms frame of refrence to match swing class
    super.move();
    super.swing();
    scale(0.35);
    translate(0, 1/0.4 *this.radius + super.pos - 100);
    // Create a min max arms swing motion
    if (theta > .5 || theta < 0) {
      theta_mod *= -1;
    }
    if (super.thetad < 0) {
      scale(-1, 1);
    }
    pushMatrix();
    rotate(theta);
    shape(right, 40, 0);
    popMatrix();
    rotate(-theta);
    shape(left, 40, 0);
    // move with skater
    super.jump();
    resetMatrix();
    theta += theta_mod;
  }
}
