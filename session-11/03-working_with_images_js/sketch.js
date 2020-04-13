// load an image
// put it on screen
// play with it

// - glitch lines
// - glitch boxes
// - horizontal bands
// - big fuscia circle

let picture;

function setup() {
  createCanvas(800, 1000);

  // Photo by Benigno Hoyuela on Unsplash
  picture = loadImage("night-mountain.jpg");
  background(0);
  noStroke();
}

let rx = 0;

function draw() {
  let y = int(random(height));
  let slice = picture.get(0, y, width, 20);
  image(slice, 0, y + random(-10, 10));
}

function keyPressed() {
  noLoop();
}