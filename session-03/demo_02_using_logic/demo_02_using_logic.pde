void setup() {
  size(400, 400);
  strokeWeight(1);
  stroke(255);
  fill(100);
}

void draw() {
  background(0);
  
  if (mouseX > 100) {
    background(100, 0, 0);
  }
  
  line(100, 0, 100, height);
}
