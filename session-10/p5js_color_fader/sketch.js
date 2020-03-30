let start, next_finish, prev_finish
let n = 0
let parts = []

function setup() {
  createCanvas(300, 500)

  // have to use color() here because it is not
  // recognized before setup() is called
  start  = color(230, 30, 180)
  next_finish = color(190, 180, 75)
  prev_finish = start
}

function draw() {
  let finish = lerpColor(prev_finish, next_finish, n)

  // faded color background
  strokeWeight(1)
  for (let y=0; y < height; y++) {
    let p = y / float(height)

    let c = lerpColor(start, finish, p)
    stroke(c)
    line(0, y, width, y)
  }

  // stripes
  stroke(finish)
  strokeWeight(10)
  for(let i=0; i < 16; i++) {
    line(0, height - 20 * i,width, height - 20 * i + 100)
  }

  // particle stuff

  // add new particles constantly while mouse is pressed
  if (mouseIsPressed) {
    parts.push(new Particle(mouseX, mouseY))
  }

  // animate and show every particle
  for (let par of parts) {
    par.move()
    par.display()
  }

  // remove dead particles
  for (let l=parts.length - 1; l > 0; l--) {
    let par = parts[l]
    if (par.dead) {
      parts.splice(l, 1)
    }
  }

  // end particle stuff

  // step through color fade until max fade is reached

  n += 0.01
  if (n >= 1)     {
    // then pick new color
    prev_finish = next_finish
    next_finish = color(random(100, 255), random(30, 200), random(50, 255))
    n = 0
  }
}

/////////////
//// Particle

class Particle {
  constructor(x, y) {
    this.p = {
      x: x,
      y: y
    }

    let ang = random(TWO_PI)
    let spd = random(10, 20)
    this.vx = spd * cos(ang)
    this.vy = spd * sin(ang)

    this.l = floor(random(8, 30))
    this.a = 0

    this.c = color(random(100, 255), random(30, 200), random(50, 255))
    this.r = random(10, 60)
  }

  move() {
    this.a++;

    this.p.x += lerp(this.vx, 0, this.a / float(this.l))
    this.p.y += lerp(this.vy, 0, this.a / float(this.l))

    if (this.a >= this.l) {
      this.dead = true;
    }
  }

  display() {
    let { c, p, r } = this
    noStroke()
    fill(c)
    ellipse(p.x, p.y, r, r)
  }
}