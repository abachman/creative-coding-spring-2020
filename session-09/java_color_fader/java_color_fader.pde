color start = color(230, 30, 180);
color next_finish = color(190, 180, 75);
color prev_finish = start;
float n = 0;
ArrayList<Particle> parts;

void setup() {
  size(400, 600);
  
  parts = new ArrayList<Particle>();
}

void draw() {
  color finish = lerpColor(prev_finish, next_finish, n);

  strokeWeight(10);    
  for (int y=0; y < height; y++) {
    float p = y / float(height);
    
    color c = lerpColor(start, finish, p);
    stroke(c);
    line(0, y, width, y);
  }
  
  for(int i=0; i < 16; i++) {
    stroke(finish);
    strokeWeight(10);
    line(0, height - 20 * i,width, height - 20 * i + 100);
  }
  
  if (mousePressed) {
    parts.add(new Particle(mouseX, mouseY));
  }
  
  for (Particle par : parts) {
    par.move();
    par.display();
  }
  
  for (int l=parts.size() - 1; l > 0; l--) {
    Particle par = parts.get(l);
    if (par.dead) {
      parts.remove(l);
    }
  }
  
  n += 0.01;
  if (n >= 1)     {
    prev_finish = next_finish;
    next_finish = color(random(100, 255), random(30, 200), random(50, 255));
    n = 0;
  }
}
