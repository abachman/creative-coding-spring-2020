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
  //image(picture, 0, 0);  

}

void draw() {
  int ry = randint(picture.height);
  PImage stripe = picture.get(0, ry, width, mouseY/10);
  //image(stripe, random(10), ry); 

  //PImage slice = picture.get(width - mouseX, 0, 1, height);
  //image(slice, mouseX, 0);
  //stroke(c);
  //line(frameCount, 0, frameCount, height);
  
  //int w = randint(30, 60);
  //int w = 300;
  //int h = 40;
  //PImage square = picture.get(mouseX - w/2, mouseY - h/2, w, h);
  //square.resize(w * 3, 0);
  //image(square, mouseX - w/2 * 3, mouseY - h/2 * 3);
  
  color c = picture.get(mouseX, mouseY);
  fill(c);
  
  float r = dist(mouseX, mouseY, pmouseX, pmouseY);
  circle(mouseX, mouseY, r * 3);
  
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
