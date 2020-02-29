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
    }

    y = y + vy;
    if (y > height || y < 0) {
      vy = -vy;
    }
  }
  
  void display() {
    circle(x, y, 4);
  }
  
  void connect(Bouncer other) {
    noFill();
    float d = dist(other.x, other.y, x, y);
    stroke(c);
    circle(x, y, d * 0.2);
    
    //stroke(100);
    //line(x, y, other.x, other.y);
  }
}
