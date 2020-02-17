void setup() {
  size(800, 800);
  stroke(255);
}

void draw() {
  background(0);

  float x = 0;
  while (x <= width) {
    float y = 0;
    while (y <= height) {
      float d = dist(mouseX, mouseY, x, y);
      strokeWeight(d / 10);
      point(x, y);
      y = y + 100;
    }
    x = x + 100;
  }

  fill(0, 255, 0);
  text(str(mouseX) + ", " + str(mouseY), 20, 20);
}

/*
Distance Dots
 Progression:
 - dot with size related to distance
 - line of dots across one axis:
 int y = 0;
 while(y < height) {
 y = y + 20;
 ...
 }
 - while() vs. for()
 - line of dots across both axes:
 for (int y=0; y < height + 40; y += 40)
 for (int x=0; x < width + 40; x += 40)
 */
