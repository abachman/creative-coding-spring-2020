// cycling motion from session-04/ex_02_bouncing_lines
// 
// We have lots of arrays!
// 
// Goal: use a class to bundle up all the data and
// behavior (nouns and verbs) related to a single 
// "bouncer". 
//
// Then replace all the arrays with a single array 
// of Bouncer objects.

Bouncer things[] = new Bouncer[8];

void setup() {
  size(800, 800);
  stroke(0, 255, 200, 20);
  fill(0, 255, 200, 20);
  strokeWeight(2);
  background(0);

  for (int i = 0; i < things.length; i++) {
    things[i] = new Bouncer();
  }

}

void draw() {
  //background(0);
  
  for (int i = 0; i < things.length; i++) {
    Bouncer thing = things[i];
    thing.move();
    thing.display();
    
    int next_i = (i + 1) % things.length;
    Bouncer other_thing = things[next_i];
    thing.connect(other_thing);
  }
}

void mousePressed() {

}

void keyPressed() {
  background(0);
}
