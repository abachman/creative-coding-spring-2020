// Moving from a single actor to many
// (see goal image)

// Tools: 
// - the `for () {}` loop structure
// - 2 FloatList objects

// storing position
float x;
float y;

void setup() {
  size(800, 800);
  background(0);
  stroke(0, 255, 0, 30);
  strokeWeight(4);

  x = random(width);
  y = random(height);
}

void draw() {
  point(x, y);
  x = x + random(-2, 2);
  y = y + random(-2, 2);
}

void keyPressed() {
  saveFrame("screen.png");
}
