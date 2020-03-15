void setup() {
  size(400, 400);
}

void draw() {
}

void keyPressed() {
  background(0);
  text(key, 20, 20);

  if (key == '1') {
    ellipse(100, 100, 100, 100);
  }
  if (key == '2') {
    ellipse(150, 100, 100, 100);
  }
  if (key == '3') {
    ellipse(200, 100, 100, 100);
  }
  if (key == '4') {
    ellipse(250, 100, 100, 100);
  }
  if (key == '5') {
    ellipse(300, 100, 100, 100);
  }

}
