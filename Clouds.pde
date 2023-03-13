class Cloud {
  PShape cloud;
  PShape lightning;
  float x;
  float y;
  float xVelocity;
  float scale;
  int r;
  Cloud(float xPos, float yPos, float xVelo, float _scale) {
    this.x = xPos;
    this.y = yPos;
    this.xVelocity = xVelo;
    this.scale = _scale;
    cloud = loadShape("cloud1.svg");
    lightning = loadShape("lightning1.svg");
    shape(lightning,x,y+120);
    shape(cloud,x,y);
  }
  // Move clouds and reset if they go out of frame
  void move() {
    this.x += xVelocity;
    r = int(random(50));
    if (r == 1) {
      shape(lightning,x,y+120);
    }
    shape(cloud,x,y);
    if (this.x > 850) {
      this.x = -200;
    }
  }
  // Incerase size of cloud
  void pulsate() {
    cloud.scale(scale);
  }
  // Decerase size of cloud
  void depulsate() {
    cloud.scale(1/scale);
  }
}
