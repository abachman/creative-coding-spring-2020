import processing.video.*;
import gab.opencv.*;
import java.awt.Rectangle;

OpenCV opencv;
Rectangle[] objects;

Capture cam;
PImage frame;

void setup() {
  size(960, 540);
  
  // Prepare the OpenCV library and tell it to do 
  // detection, behind the scenes it's using Haar 
  // Cascades. https://en.wikipedia.org/wiki/Haar-like_feature
  // 
  // Available detection cascades: 
  // 
  //   CASCADE_FRONTALFACE
  //   CASCADE_PEDESTRIANS
  //   CASCADE_EYE
  //   CASCADE_CLOCK
  //   CASCADE_NOSE
  //   CASCADE_MOUTH
  //   CASCADE_UPPERBODY
  //   CASCADE_LOWERBODY
  //   CASCADE_FULLBODY
  //   CASCADE_PEDESTRIAN
  //   CASCADE_RIGHT_EAR
  //   CASCADE_PROFILEFACE
  opencv = new OpenCV(this, 480, 270);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); 
  
  // make sure objects is not null
  objects = new Rectangle[0];
  
  // Start capturing the images from the camera
  cam = new Capture(this, 480, 240);
  cam.start();
}

int b = 0;

void draw() {
  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  
  // Show the whole image from the camera, stretch
  // to fit the screen
  if (frame != null) {
    image(frame, 0, 0, width, height);
  }
  
  // scale(2) since we're capturing at 480x270 but 
  // displaying at double that. scale(2) tells Processing
  // to double all the dimensions we give it from 
  // here on out.
  scale(2);
  
  for (int i = 0; i < objects.length; i++) {
    Rectangle r = objects[i];
    
    // Draw the detection rectangle surrounding the object
    rect(r.x, r.y, r.width, r.height);
     
    //// cut out the face from the original image and just 
    //// show that
    //PImage slice = frame.get(r.x, r.y, r.width, r.height);
    //image(slice, r.x, r.y);
  }
}

// put face detection inside captureEvent so that it 
// interferes less with the draw() loop.
// 
// REMEMBER: we can't draw inside this function, so
// anything we do here has to be saved to a variable 
// that can be used in draw()
void captureEvent(Capture c) {
  c.read();
  frame = c.get();
  
  // Do object detection on camera image
  opencv.loadImage(frame);
  
  objects = opencv.detect();
  // `objects` now contains a list of objects OpenCV 
  // detected. In this case, it's faces.  
}
