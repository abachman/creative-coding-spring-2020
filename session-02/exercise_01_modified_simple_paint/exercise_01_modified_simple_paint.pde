// Exercise 1: Simple Paint
// 
// What is the smallest change you can make that 
// makes the biggest difference?
// 
// Try changing something other than position. 
// Color and size are two easy choices. What about 
// background? 
// 
// Which kind of change do you prefer? Does it 
// matter what the change is applied to? (color, 
// location, size, etc)
// 
// Can you find a way to create an event that 
// only happens sometimes?
// 
// Things to try:
// - change shapes, change colors
// - change sizes
// - respond to keyPressed or mousePressed events
// - change the relationship between mouse and object
//   - color, shape, size, position are all modifiable
// - add more objects!
//

void setup() {
  size(1000, 500);
  background(0);
  stroke(0);
  noStroke();
  fill(255);
  
  colorMode(HSB);

  // noFill();
}

float c = 0;
void draw() {
  // size: random!
  float diameter = random(8, 10);
  
  // position: controlled!
  float x = mouseX;
  float y = mouseY;
  c = frameCount % 256;
  fill(c, 255, 255);
  float r = dist(pmouseX, pmouseY, mouseX, mouseY) * 5;
  
  circle(x + random(-r, r), y + random(-r, r), diameter);
  
  if (keyPressed) {
    saveFrame("screenshot.jpg");
    background(0);
  }
}
