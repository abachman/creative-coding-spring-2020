// Store a copy of a shape when mouse is clicked.

boolean record = false;
ArrayList<PVector> copy; 

void setup() {
  size(900, 900);
  background(0);
  strokeWeight(2);
  noFill();
}

void draw() {
  //background(0);
  

  pushMatrix();
  stroke(255, map(mouseY, 0, height, 0, 80));
  translate(width/2, height/2);
  rotate(frameCount * 0.01);

  // trace a star path
  float star_points = 5;
  int point = 0;

  beginShape();
  while (point < star_points * 2) {
    float t = (point / (star_points * 2)) * TWO_PI;
    float r = map(mouseY, 0, height, -20, 400) + (100 * noise(abs(t - PI), frameCount * 0.1));

    // to make a star, draw points in a circle and
    // on every other point, double the radius
    if (point % 2 == 0) {
      r *= 2;
    }

    // convert polar coordinates to rectangular
    float x = r * cos(t); 
    float y = r * sin(t);

    if (record) {
      copy.add(new PVector(x, y));
    }

    vertex(x, y);
    point++;
  }
  record = false;

  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);

  if (copy != null && copy.size() > 0) {
    stroke(0, 255, 0);
    beginShape();
    for (PVector p : copy) {
      vertex(p.x, p.y);
    }
    endShape(CLOSE);
  }

  popMatrix();
}

void mousePressed() {
  record = true;
  copy = new ArrayList<PVector>();
}

void keyPressed() {
  noLoop();
}
