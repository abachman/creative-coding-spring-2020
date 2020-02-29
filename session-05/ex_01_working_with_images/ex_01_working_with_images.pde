// load an image
// put it on screen
// play with it

// - glitch lines
// - glitch boxes
// - horizontal bands
// - big fuscia circle

PImage picture;
PGraphics mask;

Bouncer b;
  
void setup() {
  size(800, 1000);  
  
  // Photo by Benigno Hoyuela on Unsplash
  picture = loadImage("cat.jpg");
  background(0);
  noStroke();
  fill(255, 100, 200);
  ellipse(width/2, height/2, 300, 300);
  
  mask = createGraphics(300, 300);
  mask.beginDraw();
  mask.fill(255);
  mask.noStroke();
  mask.circle(150, 150, 300);
  mask.endDraw();

  b = new Bouncer();
}

int rx = 0;

void draw() {  
  
  image(picture, 0, 0);  
  filter(THRESHOLD, norm(mouseY, 0, height));

  //int ry = randint(picture.height);
  //PImage stripe = picture.get(0, ry, width, mouseY/10);
  //image(stripe, random(10), ry); 

  //PImage slice = picture.get(width - mouseX, 0, 1, height);
  //image(slice, mouseX, 0);
  //stroke(c);
  //line(frameCount, 0, frameCount, height);
    
  //b.move();
  
  //int w = 300;
  //int h = 300;
  //PImage square = picture.get(int(b.x) - w/2, int(b.y) - h/2, w, h);
  //square.mask(mask);
  //// square.filter(THRESHOLD, 0.2);

  //image(square, b.x - w/2, b.y - h/2);
  PImage bar = picture.get(rx, 0, 80, height);
  image(bar, rx, 0);
  
  rx = (rx + 4) % width;
    
  //color c = picture.get(mouseX, mouseY);
  //fill(c);
  //float r = dist(mouseX, mouseY, pmouseX, pmouseY);
  //circle(mouseX, mouseY, r * 3);
  
  //stroke(0);
  //strokeWeight(2);
  //line(0, frameCount * 1.8, width, frameCount);
  
  //for (int i = 0; i < 100; i++) {
  //  int x = randint(picture.width);
  //  int y = randint(picture.height);
  //  color c = picture.get(x, y);
  //  fill(c);
  //  if (random(1) > 0.5) {
  //    rect(x, y, width - x, 4);
  //  } else {
  //    rect(x, y, 4, height - y);
  //  }
  //}
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
