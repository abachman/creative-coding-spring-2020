void setup() {
  size(600, 600);
  colorMode(HSB);
}

void draw() {
  stroke(frameCount%256, 255, 255);
  line(frameCount % width, 0, frameCount % width, height);
}
