int speed = 2;

// Cycling: motion that repeats.
int a = 0; // cycle

// Bouncing: motion that reverses.
int b = 0;
int direction = speed;

// Random: motion that is unpredictable.
float c = 200;

void setup() {
  size(400, 800);
}

void draw() {
  background(0);

  //// Cycling
  // 1. change value with % to control range 
  a = (a + speed) % width;
  ellipse(a, 100, 20, 20);

  //// Bouncing
  // 1. change value
  b = (b + direction); 
  if (b > width || b < 0) {
    // 2. reverse direction when moving offscreen
    direction = -direction;
  } 
  ellipse(b, 200, 20, 20);

  //// Random walk
  // 1. change value by tiny, random increments, "wiggle"
  c = c + random(-speed, speed);
  ellipse(c, 300, 20, 20);

  // Completely Random
  // 1. set value randomly, "noisy"
  float d = random(width);
  ellipse(d, 400, 20, 20);
}
