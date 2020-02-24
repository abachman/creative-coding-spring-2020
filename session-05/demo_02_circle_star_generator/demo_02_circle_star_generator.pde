// By moving all our drawing code into
// a function we can reuse it:
//
//   1. at different locations
//   2. repetetively
//

void setup() {
  size(900, 900);
  background(0);
  strokeWeight(2);
  noFill();
}

void draw() {
  background(0);
  stroke(255);

  translate(mouseX, mouseY);
  rotate(frameCount * 0.02);
  
  // trace a star path
  float star_points = 10;
  int point = 0;
  
  beginShape();
  while (point < star_points * 2) {
    float t = (point / (star_points * 2)) * TWO_PI;
    float r = 30 + (30 * noise(abs(t - PI), frameCount * 0.1));
    
    // to make a star, draw points in a circle and
    // on every other point, double the radius
    if (point % 2 == 0) {
      r *= 2;
    }
    
    // convert polar coordinates to rectangular
    float x = r * cos(t); 
    float y = r * sin(t);
    
    vertex(x, y);
    point++;
  }
  
  endShape(CLOSE);
}

void drawStar(float centerx, float centery) {
}

void keyPressed() {
  noLoop();
}
