void setup() {
  size(800, 800);

  strokeWeight(8);
  stroke(255);
  fill(100);
}

void draw() {
  background(0);

  int pad = mouseX;

  beginShape();  
  vertex(pad, pad);
  vertex(width-pad, height-pad);
  vertex(pad, height-pad);
  vertex(width-pad, pad);
  vertex(width-pad / 2, pad + 50);
  endShape(CLOSE);
}
