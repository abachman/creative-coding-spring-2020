import processing.video.*;
Capture video;

void setup() {
  size(800, 600);

  // with the line you got from our camera_listing sketch,
  //
  //  [1] "name=USB2.0 VGA UVC WebCam,size=640x480,fps=30"
  //
  // replace the values in the new Capture(...) line below:
  //                  this  camera config
  video = new Capture(this, 640, 480);
  video.start();

  background(0);
  imageMode(CENTER);
}

void draw() {
  image(video, width/2, height/2, 800, 600);
}


// This function is called whenever a frame of video is ready
void captureEvent(Capture c) {
  // read image data from camera into Capture object
  c.read();

  // perform processing on image data
  c.filter(INVERT);


}
