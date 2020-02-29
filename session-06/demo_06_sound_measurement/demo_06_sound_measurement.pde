// Let's look in:
// 
// > Examples / Libraries / Sound / Analysis
// 
// And bring back something we can use
// with: 

import processing.sound.*;
AudioIn in;

void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  stroke(255);
  noFill();
  circle(width/2, height/2, 200);
  
  noStroke();
  fill(0, 30);
  rect(0, 0, width, height);
}
