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
  
  imageMode(CENTER);
}

void draw() {
  if (video.available()) {
    video.read();
    
    pushMatrix();
    scale(-1, 1);
    image(video, -width/2, height/2, mouseX, mouseY);
    popMatrix();
     
    ellipse(width/2, height/2, 30, 30);
  }
}
