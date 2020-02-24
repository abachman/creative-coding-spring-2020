// by replacing our drawing code with a
// function, we can play with more complicated
// responses without adding code to the
// main draw() loop

void setup() {
  size(800, 800);
  stroke(255);
  noFill();
}

void draw() {
  //background(0);
  for (float x = 0; x <= width; x = x + 40) {
    for (float y = 0; y <= height; y = y + 40) {
      dot(x, y);
    }
  }
}

void dot(float x, float y) {
  float d = dist(mouseX, mouseY, x, y);
  noFill();
  stroke(d % 255);
  circle(x, y, d % 32);
  noStroke();
  fill(d % 255, 0, 0);
  rect(x, y, 4, 4);
}
