// Goal: two rectangles rotating in opposite directions

void setup() {
  size(400, 400);
  strokeWeight(3);
  stroke(255);
  fill(100);
  rectMode(CENTER);
}

void draw() {
  background(0);
  
  translate(100, 100);
  rotate(frameCount * 0.02);
  rect(0, 0, 100, 100);
  
  // // Why doesn't this work?
  // translate(width - 100, height - 100);
  // rotate(-frameCount * 0.02);
  // rect(0, 0, 100, 100);
}
