// Audio file from:
// https://freemusicarchive.org/music/Loyalty_Freak_Music/WITCHY_BATTY_SPOOKY_HALLOWEEN_IN_SEPTEMBER_/The_Swamp_1569

import processing.sound.*;

SoundFile sound;

void setup() {
  size(600, 600);
  sound = new SoundFile(this, "swamp.mp3");
  sound.loop();

  textSize(65);
  textAlign(LEFT, CENTER);
}

void draw() {
  background(0);
  stroke(255);

  // what about sound.rate?

  // map() helps us change a big input value into a small 
  // control value. In this case, we receive mouseX, which 
  // could be anywhere from 0 to width (which happens to 
  // be 600).
  //
  // The problem we're trying to solve is that 
  // sound.rate(float) wants a value that stays closer 
  // to 1 and which changes slower than mouseX.
  // 
  // the function: 
  //
  //   map(value, from_range_min, from_range_max, 
  //              to_range_min, to_range_max);
  //
  // lets us keep the rate value between 0.2 and 3.8.
  float rate = map(mouseX, 0, width, 0.2, 3.8);
  sound.rate(rate);
  
  text("rate: " + rate, 40, 40);
}
