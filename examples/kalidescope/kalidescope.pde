void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  ellipse(mouseX, mouseY, 30, 30);
  ellipse(width - mouseX, mouseY, 30, 30);
  ellipse(width - mouseX, height - mouseY, 30, 30);
  ellipse(mouseX, height - mouseY, 30, 30);
}
