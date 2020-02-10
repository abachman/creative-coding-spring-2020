
void setup() {
  size(800, 800);
  strokeWeight(1);
  stroke(255);
  fill(255);

  textSize(48);
  textAlign(LEFT);
}

int top   = 400, 
  left  = 600, 
  bot   = top + 100, 
  right = left + 100;

void draw() {
  background(0);

  if (mouseX > left && mouseX < right && 
    mouseY > top  && mouseY < bot) {
    fill(255);
  } else {
    noFill();
    stroke(255);
    strokeWeight(1);
  }
  rect(left, top, right - left, bot - top);

  // && - and
  // || - or 

  fill(255);
  noStroke();

  //  check which range mouse is inside 
  if (mouseX < 100) {
    ellipse(250, 250, 80, 80);
  } else if (mouseX >= 100 && mouseX < 200) {
    // background(100, 0, 0);
    ellipse(150, 150, 80, 80);
  } else if (mouseX >= 200 && mouseX < 300) {
    // background(0, 0, 100);
    ellipse(250, 250, 80, 80);
  } else if (mouseX >= 300 && mouseX < 400) {
    // background(0, 0, 100);
    ellipse(350, 350, 80, 80);
  } else if (mouseX >= 400 && mouseX < 500) {
    ellipse(450, 250, 80, 80);
  } else if (mouseX >= 500 && mouseX < 600) {
    ellipse(550, 150, 80, 80);
  } else if (mouseX >= 600 && mouseX < 700) {
    ellipse(650, 50, 80, 80);
  }

  // at 200 turn blue
  text(mouseX, 10, 60);

  stroke(255);
  line(100, 0, 100, height);
  line(200, 0, 200, height);
  line(300, 0, 300, height);
}
