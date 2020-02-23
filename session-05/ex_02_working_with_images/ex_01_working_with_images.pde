// load an image
// put it on screen

// create a PGraphics object and 
// treat it like an image
PImage picture;

void setup() {
  size(800, 600);  
  picture = loadImage("mountains.png");
}

void draw() {
  image(picture, 30, 30);
}
