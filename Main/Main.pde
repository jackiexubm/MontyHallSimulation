import controlP5.*;
ControlP5 cp5;

PImage closedDoor;
PImage openDoor;
PImage money;
PImage dollar;
PImage pointUp;

int choosingStage;
int prizeDoor;
int chosenDoor;
int hintDoor;

void setup() {
  size(1000, 700);
  fill(0);
  closedDoor = loadImage("closedDoor.png");
  openDoor = loadImage("openDoor.png");
  money = loadImage("money.png");
  dollar = loadImage("dollar.png");
  pointUp = loadImage("pointUp.png");
  closedDoor.resize(250, 600);
  openDoor.resize(252, 610);
  money.resize(150,230);
  dollar.resize(150,200);
  pointUp.resize(30,60);
  choosingStage = 0;

  cp5 = new ControlP5(this);
  setupDoor0();
  setupDoor1();
  setupDoor2();
  
}

void draw() {
  frame.setTitle(str(frameRate));
  background(256, 256, 256);
  runSimulator();
  drawThings();
 
  
  
}