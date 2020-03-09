void setup() {
  size(400, 400);
}

void draw() {
}

void keyPressed() {
  background(0);
  text(key, 20, 20);
  
  if (key == '1') {
    ellipse(100, 100, 100, 100);
  }
}
