// Exercise 3: Abstract Clock
//
// Now that we have access to time and the ability 
// to manipulate form, we can represent the passage
// of time as change. 
// 
// Spend some time considering what you want to see 
// before you start committing it to code. Can you 
// describe the sketch in your own words? How close 
// can you come in the final product to your original 
// idea?
// 
// From a minimalist sketch, [almost] everything
// can be manipulated. What can't be changed? What 
// can be?
// 
// Stuck in a rut? Try deleting everything and 
// starting over from scratch.
// 

void setup() {
  size(300, 300);
  noStroke();
  fill(180);
  background(40, 20, 100);
}

void draw() {
  // actual time keeping
  float now = millis() / 1000;

  // amplifying "now" makes change more visible
  rect(0, 100, now * 10, 20);
}
