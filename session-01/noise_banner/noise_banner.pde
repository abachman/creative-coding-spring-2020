void setup() {
  size(1024, 768);
  colorMode(HSB);
  noFill();
}

void draw() {
  background(0x11);
  for (int n=0; n < width*2; n++) {
    stroke(color((n * 0.1) % 360, 100, 100, 75));
    ellipse(
      n/2,    // x
      height, // y
      30,     // width
      noise(n * 0.03, frameCount * 0.02) * height // height
    );
  }
}
