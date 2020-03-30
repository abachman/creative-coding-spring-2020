class Particle {
  PVector p;
  float vx, vy;
  color c; 
  float r;
  int l, a;
  boolean dead = false;
  
  Particle(float x, float y) {
    p = new PVector(x, y);
    
    float ang = random(TWO_PI);
    float spd = random(10, 20);
    vx = spd * cos(ang);
    vy = spd * sin(ang);
    
    l = floor(random(8, 30));
    a = 0;
    
    c = color(random(100, 255), random(30, 200), random(50, 255));
    r = random(10, 60);
  }
  
  void move() {
    a++;
    
    p.add(
      lerp(vx, 0, a / float(l)),  
      lerp(vy, 0, a / float(l))
    );
     
    if (a >= l) {
      dead = true;
    }
  }
  
  void display() {
    noStroke();
    fill(c);
    circle(p.x, p.y, r);
  }
}
