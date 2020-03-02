/*
Choose one of:
  input from camera
  input from microphone
  input from prerecorded audio

Include:
  output to screen

Possibly include:
  output to audio


We're going to turn our screens and speakers and cameras and microphones
into a single, immersive, collective work. 

Over the next two hours we're going to prepare an idea and take it from 
sketch to finished piece. Start with exsiting code! Start with old ideas!
Steal ideas from your neighbor! Steal ideas from me! 

At the end of two hours we will come up with an arrangement of devices
and screens and speakers that seems pleasing to us and just sort of 
take it all in.
*/

void setup() {
  // 16:9 (basic widescreen) aspect ratio sizes:
  //   1920 x 1080
  //   1600 x 900
  //   1200 x 675
  //   1080 x 607
  //   900 x 506
  //   640 x 360
  size(1080, 607);
  background(255);
}


void draw() {
  fill(0);
  ellipse(mouseX, mouseY, 10, 10);
}