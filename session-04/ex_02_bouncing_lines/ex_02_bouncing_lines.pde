// cycling motion from session-02/demo_04_types_of_motion

// We'll need lots of FloatLists!

// Goal: mobile webs

// location
float x;
float y;

// speed
float vx;
float vy;

void setup() {
  size(400, 800);
  
  x = width/2;
  y = height/2;
  
  vx = random(-2, 2) * 3;
  vy = random(-2, 2) * 3;
}

void draw() {
  background(0);

  //// Bouncing
  x = x + vx;
  if (x > width || x < 0) {
    vx = -vx;
  }

  y = y + vy;
  if (y > height || y < 0) {
    vy = -vy;
  }

  ellipse(x, y, 20, 20);
}
