import processing.video.*;
Capture video;

int cw = 640;
int ch = 360;

void setup() {
  size(1280, 720);
  
  noCursor();
  
  // with the line you got from our camera_listing sketch,
  // 
  //  [1] "name=USB2.0 VGA UVC WebCam,size=640x480,fps=30"
  // 
  // replace the values in the new Capture(...) line below:
  //                        sz0  sz1  name                     fps
  video = new Capture(this, cw, ch);
  video.start();    
}

void draw() {
  if (video.available()) {
    video.read();
    for (int i=0; i < 10; i++) {
      int y = int(random(video.height));
      PImage slice = video.get(0, y, video.width, 10);
      float ratio = height / float(ch);
      image(slice, 0, y * ratio, width, 10 * ratio);
    }
  }
}
