float cx, cy;
float r = 100;

boolean expand = false;
ArrayList<Float> s;

void setup() {
  size(800, 800);
  noStroke();

  cx = width/2;
  cy = height/2;
  s = new ArrayList<Float>();

  rectMode(CENTER);
}

void draw() {
  background(0);
  
  // draw expanding patterns
  if (expand) {
    stroke(255);
    strokeWeight(2);
    noFill();

    for (int i=0; i < s.size(); i++) {
      float f = s.get(i);

      if (f < width * 1.4) {
        f += 3;

        if (i % 3 == 0) {
          rect(cx, cy, f, f);
        } else if (i % 3 == 1) {
          pushMatrix();
          translate(cx, cy);
          rotate(i * 0.2);
          line(0, -f, 0, f);
          popMatrix();
        } else { 
          ellipse(cx, cy, f, f);
        }
        s.set(i, f);
      }
    }
  }
}

void mousePressed() {
  s.add(0.0);
  expand = true;
}
