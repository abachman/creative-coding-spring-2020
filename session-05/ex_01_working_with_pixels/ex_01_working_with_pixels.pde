// draw a shape
// play with it in pixels

void setup() {
  size(800, 800);

  background(0);
  fill(255);
  noStroke();
  ellipse(random(width), random(height), 100, 100);
}

void draw() {
  loadPixels();
  int x, y;
  for (int i=0; i < pixels.length; i++) {
    y = i / width;
    x = i - y * width; 
  }
  updatePixels();
}
