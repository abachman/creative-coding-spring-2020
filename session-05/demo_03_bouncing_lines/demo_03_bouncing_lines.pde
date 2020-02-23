// cycling motion from session-02/demo_04_types_of_motion

// We'll need lots of arrays!

// Goal: mobile webs

// Starting with one, go to many.
// Connect them.

int len = 2;

class Web {
  Point floaters[];

  Web() {
    floaters = new Point[2];
    for (int i = 0; i < floaters.length; i++) {
      floaters[i] = new Point();
    }
  }

  add() {
    floaters = append(floaters, new Point());
  }

  update() {
    for (int i = 0; i < floaters.length; i++) {
      floaters[i].update();
    }
  }
  
  display() {
    for (int i = 0; i < floaters.length; i++) {
      floaters[i].display();
      floaters[i].connect(floaters[(i + 1) % floaters.length]);
    }
  }
}

class Point {
  float x, y, vx, vy;
  Point other;

  Point() {
    x = random(width);
    y = random(height);
    vx = random(-2, 2);
    vy = random(-2, 2);
  }

  void update() {
    x += vx;
    y += vy;

    if (x < 0 || x > width) {
      vx = -vx;
    }

    if (y < 0 || y > height) {
      vy = -vy;
    }
  }
   
  void display() {
    circle(x, y, 2);
    line(x, y, other.x, other.y);
  }

  void connect(Point o) {
    other = o;
  }
}

Point floaters[] = new Point[len];

Web web;

void setup() {
  size(400, 800);
  stroke(255);

  web = new Web();
}

void draw() {
  background(0);

  web.update();
  web.display();
}

void mousePressed() {
  web.add();
}
