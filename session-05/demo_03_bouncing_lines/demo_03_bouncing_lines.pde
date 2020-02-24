// cycling motion from session-04/ex_02_bouncing_lines
// 
// We have lots of arrays!
// 
// Goal: use a class to bundle up all the data and
// behavior (nouns and verbs) related to a single 
// "bouncer". 
//
// Then replace all the arrays with a single array 
// of Bouncer objects.

// locations
float x[] = new float[2];
float y[] = new float[2];

// speeds
float vx[] = new float[2];
float vy[] = new float[2];

void setup() {
  size(400, 800);
  stroke(0, 255, 200, 20);
  fill(0, 255, 200, 20);
  strokeWeight(2);
  background(0);

  for (int i = 0; i < x.length; i++) {
    x[i] = random(width);
    y[i] = random(height);
    vx[i] = random(-2, 2) * 3;
    vy[i] = random(-2, 2) * 3;
  }

}

void draw() {
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

    circle(x[i], y[i], 4);
    int next_i = (i + 1) % x.length;
    line(x[i], y[i], x[next_i], y[next_i]);
  }
}

void mousePressed() {
  x = append(x, random(width));
  y = append(y, random(height));
  vx = append(vx, random(-2, 2));
  vy = append(vy, random(-2, 2));
}

void keyPressed() {
  background(0);
}
