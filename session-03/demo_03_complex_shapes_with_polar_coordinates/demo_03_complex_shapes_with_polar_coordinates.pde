void setup() {
  size(800, 800);

  strokeWeight(8);
  stroke(255);
  fill(100);
}

void draw() {
  background(0);

  int pad = mouseX;

  translate(width/2, height/2);
  beginShape();  
  float points = 40;
  for (int i=0; i < points; i++) {
    // x = r * sin(theta) 
    // y = r * cos(theta)
    float nudge = sin((frameCount + i) * 0.1) * 20;
    float x = (nudge + 90) * sin(TWO_PI * i / points);
    float y = (nudge + 90) * cos(TWO_PI * i / points);
    vertex(x, y);
  }
  
  endShape();
}
