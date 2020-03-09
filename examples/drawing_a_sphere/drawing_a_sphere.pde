void setup() {
  size(700, 700, P3D);
  
  fill(255);
  noStroke();
}

void draw() {
  translate(width/2, height/2);
  rotate(mouseX / 200.0);
  pointLight(255, 0, 0, 200, 0, 200);
  pointLight(0, 0, 200, -200, 0, 200);
  sphere(100);
}
