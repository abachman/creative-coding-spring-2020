void setup() {
  size(800, 800);
  stroke(255);
}

void draw() {
  background(0);

  fill(255);
  
  for (float x = 0;x <= width; x += 100) {
    for (float y = 0; y <= height; y = y + 100) {
      float d = dist(mouseX, mouseY, x, y);
      circle(x, y, d / 10);
    }
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
