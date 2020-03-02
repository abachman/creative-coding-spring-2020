import processing.video.*;
Capture video;

int FRAMES = 8 * 12;
PImage film[];
int next_frame = 0;

void setup() {
  size(800, 600);
  
  // with the line you got from our camera_listing sketch,
  // 
  //  [1] "name=USB2.0 VGA UVC WebCam,size=640x480,fps=30"
  // 
  // replace the values in the new Capture(...) line below:
  //                  this   camera config
  video = new Capture(this, "name=FaceTime HD Camera,size=640x360,fps=30");
  video.start();    
  
  film = new PImage[FRAMES];
  
  background(0);
}

void draw() {
  for (int i = 0; i < film.length; i++) {
    int y = i / 8;
    int x = i - (y * 8); 
    PImage img = film[i];
    if (img != null) {
      image(img, x * 100, y * 50, 100, 50);
    }
  }

  /* preview window */
  //int last_frame = next_frame - 1;
  //if (next_frame == 0)
  //  last_frame = film.length - 1;
  //if (film[last_frame] != null) 
  //  image(film[last_frame], width/2, height/2, 200, 100);
}

void keyPressed() {
}

// This function is called whenever a frame of video is ready 
void captureEvent(Capture c) {
  // read image data from camera into Capture object
  c.read();
  film[next_frame] = c.get();
  next_frame = (next_frame + 1) % FRAMES;
}
