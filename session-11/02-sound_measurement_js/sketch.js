// Let's look in:
//
// > Examples / Libraries / Sound / Analysis
//
// And bring back something we can use
// with:

let input;
let fft;

function setup() {
  createCanvas(400, 400);
  background(0);

  input = new p5.AudioIn();

  // Begin capturing the audio input
  input.start();

  fft = new p5.FFT();
  fft.setInput(input);
}

let permanent = 0;

function draw() {
  background(0);
  noFill();

  let volume = input.getLevel();
  volume = volume * height * 8;

  // let volume = loudness.analyze() * 800;

  if (volume > permanent) {
    permanent = volume;
  }

  stroke(255);
  circle(width / 2, height / 2, volume);

  if (permanent > 0) {
    stroke(0, 255, 0);
    circle(width / 2, height / 2, permanent);
  }

  let spectrum = fft.analyze();
  let waveform = fft.waveform();
  noFill();
  beginShape();
  stroke(230);
  for (let i = 0; i < waveform.length; i++) {
    let x = map(i, 0, waveform.length, 0, width);
    let y = map(waveform[i], -1, 1, 0, height);
    vertex(x, y);
  }
  endShape();
}