int speed = 2;
int b = 200;
int direction = speed;

void setup() {
size(1000,1000);
}

void draw() {
stroke(170,80,50);
strokeWeight(1);
noFill();
rect(mouseX,mouseY,mouseX/2,mouseX/2);

 if (keyPressed) {
    stroke(50,80,120);
   rect(mouseX,mouseY,mouseY/2,mouseY/2);
    }
  
noStroke();
fill(255);
circle(580,350,550);

fill(170,80,50);
rect(200,50,500,800);

fill(50,80,120);
rect(50,100,350,200);

strokeWeight(12);
stroke(0);
noFill();
circle(700,700,400);

strokeWeight(4);
stroke(50,80,120);
bezier(400,250,900,50,900,750,400,750);

bezier(400,200,800,50,900,750,400,750);

bezier(400,150,700,50,900,750,400,750);

strokeWeight(8);
stroke(255,255,255);
rect(450,200,60,600);

strokeWeight(4);
fill(170,80,50);
circle(550,300,150);

noStroke();
fill(50,80,120);
rect(480,480,480,50);

fill(255);
rect(300,400,50,500);

stroke(50,80,120);
rect(670,200,180,30);

fill(170,80,50);
rect(80,600,250,30);

noFill();
rect(330,820,40,100);

fill(255);
//circle(300,200,50);

noStroke();
circle(650,800,30);

  b = (b + direction);
  if (b > 300 || b < 200) {
    direction = -direction;
  }

  circle(b, 200, 50);
  

  
  
  
 //circle(mouseX,mouseY,mouseX/2);
  
 }
