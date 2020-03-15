// load an image
// put it on screen
// play with it

// - glitch lines
// - glitch boxes
// - horizontal bands
// - big fuscia circle

PImage picture;
import processing.video.*;
Capture video;
  
void setup() {
  size(800, 1000);  
  
  video = new Capture(this, 640, 360);
  video.start();    
  
  
  // Photo by Benigno Hoyuela on Unsplash
  picture = loadImage("tamas-tuzes-katai-gbfoKls0V-0-unsplash.jpg");
  background(0);
  noStroke();
}

int rx = 0;

void draw() {  
  
  int y = int(random(height));
  PImage slice = picture.get(0, y, width, 20);
  image(slice, 0, y + random(-10, 10));  
  
  
}

int randint(int range) {
  return int(random(range));
}

int randint(int range_start, int range_end) {
  return int(random(range_start, range_end));
}

void keyPressed() {
  noLoop();
}
