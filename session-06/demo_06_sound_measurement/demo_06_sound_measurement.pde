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

float permanent = 0;

void draw() {
  background(0);
  noFill();
  
  float volume = loudness.analyze() * 800;
 
  if (volume > permanent) {
    permanent = volume;
  }
  
  stroke(255);
  circle(width/2, height/2, volume);
  
  if (permanent > 0) {
    stroke(0, 255, 0); 
    circle(width/2, height/2, permanent);
  }
}
