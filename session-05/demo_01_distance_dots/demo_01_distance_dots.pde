void setup() {
  size(800, 800);
  stroke(255);
}

void draw() {
  background(0);

  fill(255);
  float x = 0;
  while (x <= width) {
    float y = 0;
    while (y <= height) {
      dot(x, y);
      y = y + 100;
    }
    x = x + 100;
  }

  fill(0, 255, 0);
  text(str(mouseX) + ", " + str(mouseY), 20, 20);
}

void dot(float x, float y) {
  float d = dist(mouseX, mouseY, x, y);
  circle(x, y, d / 10);
}


