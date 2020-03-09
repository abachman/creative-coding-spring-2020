// Let's look in:
// 
// > Examples / Libraries / Sound / Analysis
// 
// And bring back something we can use
// with: 

import processing.sound.*;

AudioIn input;
Amplitude loudness;

void setup() {
  size(800, 800);
  background(0);
  
  input = new AudioIn(this, 0);

  // Begin capturing the audio input
  input.start();
  
  loudness = new Amplitude(this);

  // Patch the input to the volume analyzer
  loudness.input(input);
}

void draw() {
  stroke(255);
  noFill();
  
  float volume = loudness.analyze() * 800;
  
  

  circle(mouseX, mouseY, volume);
}
