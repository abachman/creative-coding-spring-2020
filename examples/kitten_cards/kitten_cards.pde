PImage img; 

void setup() {
  size(800, 200);
  noStroke();
  img = loadImage("cat.jpg");
}

void draw() {
  background(0);
  int step = width / 5;
  // 435 / 100 -> 4 * 100 -> 400 
  if (mousePressed) {
    image(img, mouseX / step * step, 0, step, height);
  }
}
