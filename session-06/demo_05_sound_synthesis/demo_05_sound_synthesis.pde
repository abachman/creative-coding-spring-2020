// step 1: look at it
// step 2: put some classes in it!

import processing.sound.*;

TriOsc triOsc;
Env env;

float attackTime = 0.001;
float sustainTime = 0.004;
float sustainLevel = 0.3;
float releaseTime = 0.4;

void setup() {
  size(800, 540);
  background(255);
  
  // Create triangle wave
  triOsc = new TriOsc(this);

  // Create the envelope 
  env  = new Env(this);
}      

void draw() {
  // i want to see nothing 
}

void mousePressed() {
  triOsc.play();
  env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
}
