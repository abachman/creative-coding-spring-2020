/*
How could we...?
- Add or remove points
- scale up / down
- wiggle!
- make it a star?
*/

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
    vertex(80 * sin(t), 80 * cos(t));
    t = t + 0.3;
  }
  endShape(CLOSE);
}
