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
  size(500, 500);
  background(0);
  stroke(0);
  // noStroke();
  fill(255);
  // noFill();
}

void draw() {
  // size: random!
  float diameter = random(10, 20);
  
  // position: controlled!
  float x = mouseX;
  float y = mouseY;
  
  circle(x, y, diameter);
  
  if (keyPressed) {
    background(0);
  }
}
