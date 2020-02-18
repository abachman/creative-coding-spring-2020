// cycling motion from session-02/demo_04_types_of_motion

// We'll need lots of arrays!

// Goal: mobile webs

// Starting with one, go to many.
// Connect them.
int len = 2;
// location


float x[] = new float[len];
float y[] = new float[len];

// speed
float vx[] = new float[len];
float vy[] = new float[len];

void setup() {
  size(400, 800);
  stroke(255);

  for (int i = 0; i < x.length; i++) {
    x[i] = random(width);
    y[i] = random(height);
    vx[i] = random(-2, 2) * 3;
    vy[i] = random(-2, 2) * 3;
  }
}

void draw() {
  background(0);

  //// Bouncing
  for (int i = 0; i < x.length; i++) {
    x[i] = x[i] + vx[i];
    if (x[i] > width || x[i] < 0) {
      vx[i] = -vx[i];
    }

    y[i] = y[i] + vy[i];
    if (y[i] > height || y[i] < 0) {
      vy[i] = -vy[i];
    }

    stroke(0, 255, 0);
    line(x[i], y[i], x[(i + 1) % x.length], y[(i + 1) % x.length]);
  }
}

void mousePressed() {
  x = append(x, random(width));
  y = append(y, random(height));
  vx = append(vx, random(-2, 2));
  vy = append(vy, random(-2, 2));
}
