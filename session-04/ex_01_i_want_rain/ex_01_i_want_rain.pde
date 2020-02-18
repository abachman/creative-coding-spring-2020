//
// i want rain
// 
// Hint: start with two arrays or FloatList objects, 
// one for x and one for y.
//

float x[] = new float[300];
float y[] = new float[300];

void setup() {
  size(500, 800);
  stroke(255);

  int i = 0;
  while (i < x.length) {
    x[i] = random(width);
    y[i] = random(height);
    i++; // i = i + 1
  }
}

void draw() {
  background(30);

  int i = 0;
  while (i < x.length) {
    line(x[i], y[i], x[i] + 3, y[i] + mouseY);
    x[i] = (x[i] + 3) % width;
    y[i] = (y[i] + mouseY) % height;
    i++; // i = i + 1
  }
}
