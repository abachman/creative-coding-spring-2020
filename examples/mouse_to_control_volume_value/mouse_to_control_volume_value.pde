void setup() {
  size(600, 600);
  textSize(20);
}

void draw() {
  background(255);
  
  float d = dist(mouseX, mouseY, width/2, height/2);
  
  noFill();
  circle(width/2, height/2, d * 2);
  
  float amp = constrain(map(d, 10, 300, 0, 1), 0, 1);
  
  fill(0);
  text(d, 20, 20);
  text(amp, 20, 50);
}
