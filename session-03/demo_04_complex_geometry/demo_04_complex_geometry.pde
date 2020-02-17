// Goal: two rectangles rotating in 
// opposite directions

// Bouncing: motion that reverses.
int speed = 10;
int b = 0;
int direction = speed;

void setup() {
  size(800, 800);
  strokeWeight(3);
  stroke(255);
  fill(100);
  rectMode(CENTER);
  textSize(32);
  background(0);
}

void draw() {
  background(0);
  text(frameCount, 10, 40);
  
  b = (b + direction);
  if (b > width || b < 0) {
    // 2. reverse direction when moving offscreen
    direction = -direction;
  }
  pushMatrix();
  translate(mouseX, mouseY);
  rotate(frameCount * 0.06);
  line(0, -100, 0, 100);
  popMatrix();

  //// // Why doesn't this work?
  translate(400, 100);
  rotate(-frameCount * 0.02);
  line(0, -100, 0, 100);
}
