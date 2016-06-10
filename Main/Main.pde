import controlP5.*;
ControlP5 cp5;

PImage closedDoor;
PImage openDoor;

void setup() {
  size(1000,700);
    
  closedDoor = loadImage("closedDoor.png");
  openDoor = loadImage("openDoor.png");
  closedDoor.resize(250,600);
  openDoor.resize(252,610);
  
  
  cp5 = new ControlP5(this);
  setupDoor1();
  setupDoor2();
  setupDoor3();

}

void draw() {
  background(256,256,256);
  //image(closedDoor, 10,16);
  //image(openDoor, 10,0);
}