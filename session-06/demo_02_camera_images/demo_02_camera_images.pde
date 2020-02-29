import processing.video.*;
Capture video;

void setup() {
  size(800, 600);
  
  // with the line you got from our camera_listing sketch,
  // 
  //  [1] "name=USB2.0 VGA UVC WebCam,size=640x480,fps=30"
  // 
  // replace the values in the new Capture(...) line below:
  //                        sz0  sz1  name                     fps
  video = new Capture(this, 640, 480, "USB2.0 VGA UVC WebCam", 30);
  video.start();    
  
  imageMode(CENTER);
}

void draw() {
  
  // This is our first time dealing with two different systems that move 
  // at different speeds. 
  //
  // One is the draw() loop, the core of our Processing 
  // animation. It is doing its best to run at a steady 30 frames per second.
  //
  // The other is the video input device (camera), a piece of hardware 
  // connected to our computer, controlled somewhere by some piece of 
  // software, but separated from Processing in a way that means we 
  // cannot tell it what to do. Instead we must ask it if it is ready
  // and then be ready to act on new data whenever it becomes "available".
  //  
  // The video device may run at 30 frames per second, but there is no
  // reason why the camera's 30 frames must line up with Processing's. 
  // It is simply out of our control. C'est la vie!
  //
  if (video.available()) {
    video.read();
    
    // Once video is available and has been read(), it can be used as 
    // raw image data.
    background(0);
    video.filter(INVERT);
    image(video, width/2, height/2, 800, 600);
  }
}
