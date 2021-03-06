/* 

 Find and list all cameras attached to this computer.
 
 */

import processing.video.*;

Capture video;
String[] cameras;

void setup() {
  size(900, 900);
  cameras = Capture.list();  
  println("Available cameras:");
  printArray(cameras);
  textSize(24);
  textLeading(20);
  
  //
  // you should see, in the space below this sketch, 
  // lines that look like:
  //   
  //   Available cameras:
  //   [0] "name=HD Pro Webcam C920 #2,size=960x540,fps=30"
  //   [1] "name=USB2.0 VGA UVC WebCam,size=640x480,fps=30"
  //   [2] "name=USB2.0 VGA UVC WebCam,size=176x144,fps=30"
  //   [3] "name=USB2.0 VGA UVC WebCam,size=320x240,fps=30"
  //   [4] "name=USB Camera,size=640x480,fps=30"
  //   [6] "name=USB Camera,size=320x240,fps=30"
  //   [7] "name=FaceTime HD Camera,size=1280x720,fps=30"
  //   [8] "name=FaceTime HD Camera,size=640x360,fps=30"
  // 
  // etc.
  // 
  // You will need everything in the "s including the double
  // quotes themselves for later sketches. Copy and paste the 
  // whole line as a comment into this sketch or into a 
  // separate text file.
  //
  
}

void draw() {
  background(0);
  fill(255);
  for (int line=0; line < cameras.length; line++) {
    text(cameras[line], 20, line * 30 + 30);
  }
}
