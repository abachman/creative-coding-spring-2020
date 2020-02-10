
void setup() {
  size(800, 800);
  strokeWeight(1);
  stroke(255);
  fill(255);
  
  PFont font = loadFont("avenir.vlw");
  textFont(font);
  textSize(48);
  textAlign(LEFT);
}

void draw() {
  background(0);
 
  // && - and
  // || - or 
  
  //  check which range mouse is inside 
  if (mouseX >= 100 && mouseX < 200) {
    // background(100, 0, 0);
    ellipse(150, 150, 80, 80);
  } else if (mouseX >= 200 && mouseX < 300) {
    // background(0, 0, 100);
    ellipse(250, 250, 80, 80);
  } if (mouseX >= 300) {
    // background(0, 0, 100);
    ellipse(350, 350, 80, 80);
  }
  
  
  // at 200 turn blue
  
  text(mouseX, 10, 60);
  
  line(100, 0, 100, height);
  line(200, 0, 200, height);
  line(300, 0, 300, height);
  
}
