float cx, cy; // center x, center y
float r;      // radius of detection

void setup() {
  size(800, 800);
  noStroke();

  // global variables have to be set after size() is 
  // called so that width and height are available
  cx = width/2;
  cy = height/2;
  r = width * 0.3;
}

void draw() {
  background(0);

  noStroke();
  float d = dist(mouseX, mouseY, cx, cy);
  if (d < r) {
    float gb = map(d, 0, r, 0, 255);
    fill(255, gb, gb);
  } else {
    fill(255);
  }
  ellipse(cx, cy, r * 2, r * 2);
}
