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
  background(0);

  noFill();  
  float x = 0;
  while (x <= width) {
    float y = 0;
    while (y <= height) {
      float d = dist(mouseX, mouseY, x, y);
      circle(x, y, d / 10);
      y = y + 40;
    }
    x = x + 40;
  }

  //fill(0, 255, 0);
  //text(str(mouseX) + ", " + str(mouseY), 20, 20);
}

void dot(float x, float y) {
  float d = dist(mouseX, mouseY, x, y);
  stroke((d * 0.8) % 255, 20, 100, 40);
  circle(x, y, d / 10);
}
