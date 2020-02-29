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

ArrayList<Bouncer> things;

void setup() {
  size(800, 800);
  stroke(0, 255, 200, 20);
  fill(0, 255, 200, 20);
  strokeWeight(2);
  background(0);

  things = new ArrayList<Bouncer>();
  for (int i = 0; i < 4; i++) {
    things.add(new Bouncer());
  }

}

void draw() {
  //background(0);
  
  for (Bouncer thing : things) {
    thing.move();
    thing.display();
    
    Bouncer other = pickThing(thing);   
    thing.connect(other);
  }
}

Bouncer pickThing(Bouncer thing) {
  int idx = things.indexOf(thing);
  return things.get((idx + 1) % things.size());
}

void mousePressed() {
  things.add(new Bouncer());
}

void keyPressed() {
  background(0);
  things.clear();
}
