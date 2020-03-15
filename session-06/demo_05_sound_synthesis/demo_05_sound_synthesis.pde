// step 1: look at it
// step 2: put some classes in it!

import processing.sound.*;

TriOsc triOsc;
Env env;

float attackTime = 0.001;
float sustainTime = 0.004;
float sustainLevel = 0.3;
float releaseTime = 0.4;

Bouncer ball;

void setup() {
  size(100, 234);
  background(255);
  
  // Create triangle wave
  triOsc = new TriOsc(this);

  // Create the envelope 
  env  = new Env(this);
  
  ball = new Bouncer();
}      

void draw() {
  // i want to see nothing 
  
  ball.move();
  ball.display();
}

void ping() {
  triOsc.play();
  env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
}
