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
  noStroke();
  fill(255, 100, 200);
  ellipse(width/2, height/2, 300, 300);
}

void draw() {
  //image(picture, 0, 0);  
 
  // int rx = randint(picture.width);
  int ry = randint(picture.height);
  PImage stripe = picture.get(0, ry, width, 20);
  image(stripe, 0, ry + random(10));  

  //stroke(c);
  //line(frameCount, 0, frameCount, height);
  
  int x = randint(picture.width);
  int y = randint(picture.height);
  int w = randint(30, 60);
  PImage square = picture.get(mouseX, mouseY, w, w);
  square.resize(w * 3, 0);
  image(square, mouseX, mouseY);
  
  stroke(0);
  strokeWeight(2);
  line(0, frameCount * 1.8, width, frameCount);
  
}

int randint(int range) {
  return int(random(range));
}

int randint(int range_start, int range_end) {
  return int(random(range_start, range_end));
}
