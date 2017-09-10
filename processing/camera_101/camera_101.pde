import processing.video.*;

Capture cam;

void setup() {
  size(1920, 1080);
  
  cam = new Capture(this, 640, 480, 30);
  cam.start();
}

void draw() {
  if(cam.available()) {
   
    cam.read();
    
  }
  
  image(cam, 0, 0);
}