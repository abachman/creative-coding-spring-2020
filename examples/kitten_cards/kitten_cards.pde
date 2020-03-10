import processing.sound.*;

PImage img; 
SoundFile sounds[] = new SoundFile[5];
int step;

void setup() {
  size(800, 200);
  noStroke();
  // placekitten.com
  img = loadImage("cat.jpg");
  step = width / 5;
  for (int i=0; i < sounds.length; i++) {
    // http://soundbible.com/1954-Cat-Meow-2.html
    sounds[i] = new SoundFile(this, "meow.wav");
  }
}

void draw() {
  background(0);
  // 435 / 100 -> 4 * 100 -> 400 
  if (mousePressed) {
    int i = mouseX / step;
    image(img, i * step, 0, step, height);
  }
}

void mousePressed() {
  int i = mouseX / step;
  sounds[i].play();
}
