void setup() {
  size(400, 400);
  
  strokeWeight(4);
  stroke(255);
  fill(100);
}

void draw() {
  background(0);
  
  beginShape();
  vertex(10, 10);
  vertex(width-10, 10);
  vertex(width-10, height-10);
  vertex(10, height-10);
  endShape(CLOSE);
}
