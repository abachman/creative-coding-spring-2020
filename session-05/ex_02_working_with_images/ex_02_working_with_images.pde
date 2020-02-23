// load an image
// put it on screen
// play with it

// - glitch lines
// - glitch boxes
// - horizontal bands
// - big fuscia circle

PImage picture;
int l = 0;

void setup() {
  size(800, 1000);  
  
  picture = loadImage("benigno-hoyuela-2CJIkl-df2M-unsplash.jpg");
  background(0);
}

void draw() {
  image(picture, 0, 0);

  for (int i=0; i < 4; i++) {
    int y = int(random(height));
    PImage slice = picture.get(0, y, width, 4);
    image(slice, random(-10, 10), y);
  }

  int y = int(random(height));
  int x = int(random(height));
  int w = int(random(100, 400));
  PImage sq = picture.get(x, y, w, w);
  image(sq, x + 20, y + 20);

  l = (l + 4) % height;
  int t = int(random(2, 10));
  int o = int(random(-30, 30));
  stroke(0, 40);
  while (t > 0) {
    line(0, l + o, 
         width, l + o);
    t--;
  }
  
  noStroke();
  fill(255, 0, 200, 10);
  ellipse(width/2, height/2, 600, 600);
}
