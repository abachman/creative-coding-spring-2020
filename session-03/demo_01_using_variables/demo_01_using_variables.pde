void setup() {
  size(400, 400);
  
  PFont font = loadFont("avenir.vlw");
  textFont(font);
  
  background(0);
  strokeWeight(4);
  stroke(255);
  noFill();
  smooth();
  textAlign(RIGHT);
}

int x = 0;

void draw() {
  background(0);
  
  int y = 0;
  
  text(x, width - 10, 60);
  text(y, width - 10, 120);
  
  x = (x + 1) % 256;
  y = y + 1;
}
