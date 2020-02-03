int speed = 4;

// Cycling: motion that repeats.
int a = 0; // cycle

// Bouncing: motion that reverses.
int b = 0;
int direction = speed;

// Random: motion that is unpredictable.
float c = 200;
float d = 200;

void setup() {
  size(400, 800);
  noStroke();
  background(0);
}

void draw() {

  // Cycling
  // 1. change value with % to control range 
  a = (a + speed) % width;
  ellipse(a, 100, 20, 20);

  //////// Bouncing
  ////// 1. change value
  b = (b + direction); 
  if (b > width || b < 0) {
    // 2. reverse direction when moving offscreen
    direction = -direction;
  }
  fill(b % 256);
  ellipse(b, 200, 20, 20);

  ////// Random walk
  //// 1. change value by tiny, random increments, "wiggle"
  fill(255, 30);
  c = c + random(-speed, speed);
  d = d + random(-speed, speed);
  ellipse(c, d, 20, 20);

  //// Completely Random
  //// 1. set value randomly, "noisy"
  float d = random(width);
  ellipse(d, 400, 20, 20);
}
