// load an image
// put it on screen
// play with it

// - glitch lines
// - glitch boxes
// - horizontal bands
// - big fuscia circle

PImage picture;
  
void setup() {
  size(800, 1000);  
  
  // Photo by Benigno Hoyuela on Unsplash
  picture = loadImage("cat.jpg");
 
  background(0);
}

void draw() {
  image(picture, 0, 0);  
}
