// Moving from a single actor to many
// (see goal image)

// Tools: 
// - the `for () {}` loop structure
// - 2 FloatList objects

// storing position

int length = 3000;

// watch out for those Array constructors!
float x[] = new float[length];
float y[] = new float[length];
float c[] = new float[length];

void setup() {
  size(1200, 1200);
  background(0);
  stroke(255, 255, 255, 30);
  strokeWeight(4);

  int i = 0;
  while (i < x.length) {
    x[i] = random(width);
    y[i] = random(height);
    c[i] = random(180);
    i = i + 1;
  }
}

void draw() {
  int i = 0;
  while (i < x.length) {
    stroke(0, c[i], 0, 30);
    point(x[i], y[i]);
    x[i] = x[i] + random(-2, 2);
    y[i] = y[i] + random(-2, 2);
    i = i + 1;
  }
}

void keyPressed() {
  saveFrame("screen.png");
}
