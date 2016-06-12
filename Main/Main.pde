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
int otherDoor() {
  return 3 - chosenDoor - hintDoor;
}
int gamesStayed;
int gamesStayedAndWon;
int gamesSwitched;
int gamesSwitchedAndWon;

void setup() {
  size(1100, 700);
  fill(0);
  closedDoor = loadImage("closedDoor.png");
  openDoor = loadImage("openDoor.png");
  money = loadImage("money.png");
  dollar = loadImage("dollar.png");
  pointUp = loadImage("pointUp.png");
  closedDoor.resize(250, 600);
  openDoor.resize(252, 610);
  money.resize(150, 230);
  dollar.resize(150, 200);
  pointUp.resize(30, 60);
  choosingStage = 0;
  gamesStayed = 0;
  gamesStayedAndWon = 0;
  gamesSwitched = 0;
  gamesSwitchedAndWon = 0;

  cp5 = new ControlP5(this);
  setupDoor0();
  setupDoor1();
  setupDoor2();
  setupAutoRun();
}

void draw() {
  surface.setTitle(str((int)frameRate));
  background(256, 256, 256);
  runSimulator();
  gameStats();
  if (cp5.get(Toggle.class, "autoRunToggle").getBooleanValue()) {
    autoRun((int) cp5.getController("autoRunDelay").getValue(), cp5.get(Toggle.class, "doNotAnimateToggle").getBooleanValue());
  }
}