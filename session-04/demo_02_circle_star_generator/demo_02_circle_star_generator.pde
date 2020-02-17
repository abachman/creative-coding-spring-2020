
void setup() {
  size(600, 600);
}

void draw() {
  background(128);

  // draw from the center of the screen
  translate(width/2, height/2);

  // trace a circular path
  beginShape();
  float t = 0;
  while (t < TWO_PI) {
    float r = 80 + (80 * noise(t, frameCount * 0.1));
    float x = r * cos(t);
    float y = r * sin(t);
    vertex(x, y);
    t = t + (TWO_PI / 100);
  }
  endShape(CLOSE);
}

void keyPressed() {
  noLoop();
  
}

/*
How could we...?
- Add or remove points
- scale up / down
- wiggle!
- make it a star?
*/
