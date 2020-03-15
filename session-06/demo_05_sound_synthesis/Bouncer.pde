class Bouncer {
  // location
  float x;
  float y;

  // speeds
  float vx;
  float vy;
  
  color c;
  
  Bouncer() {
    // a new instance comes out of this function
    // when we call it with "new" in front.
    x = random(width);
    y = random(height);
    vx = random(-2, 2) * 3;
    vy = random(-2, 2) * 3;
    c = color(random(255), random(255), random(255));
  }
  
  void move() {
    x = x + vx;
    if (x > width || x < 0) {
      vx = -vx;
      ping();
    }

    y = y + vy;
    if (y > height || y < 0) {
      vy = -vy;
      ping();
    }
  }
  
  void display() {
    circle(x, y, 4);
  }
  
}
