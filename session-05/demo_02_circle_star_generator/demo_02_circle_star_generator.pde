
void setup() {
  size(600, 600);
  background(0);
  noFill();
  stroke(255, 30);
}

void draw() {
  drawStar(mouseX, mouseY);
  drawStar(width-mouseX, mouseY);
  drawStar(mouseX, height-mouseY);
  drawStar(width-mouseX, height-mouseY);
}

void drawStar(float centerx, float centery) {
  pushMatrix();

  // draw from the center of the screen
  translate(centerx, centery);

  // trace a circular path
  beginShape();
  float p = 0;
  while (p < 30) {
    float t = (p / 30.0) * TWO_PI;
    float r = 30 + (30 * noise(abs(t - PI), frameCount * 0.1));
    if (p % 2 == 0) {
      r *= 2;
    }
    float x = r * cos(t);
    float y = r * sin(t);
    vertex(x, y);
    p++;
  }
  endShape(CLOSE);

  popMatrix();
}

void keyPressed() {
  noLoop();
}