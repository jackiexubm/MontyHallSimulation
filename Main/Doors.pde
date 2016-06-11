void setupDoor0() {
  cp5.addButton("door0")
    .setPosition(20, 25)
    .setSize(230, 530)
    .setImage(closedDoor)
    ;
}

void setupDoor1() {
  cp5.addButton("door1")
    .setPosition(300, 25)
    .setSize(230, 530)
    .setImage(closedDoor)
    ;
}

void setupDoor2() {
  cp5.addButton("door2")
    .setPosition(580, 25)
    .setSize(230, 530)
    .setImage(closedDoor)
    ;
}

void door0() {
  //cp5.getController("door0").setImage(openDoor);
  if(choosingStage == 1){
  chosenDoor = 0;
  choosingStage ++;
  }
}

void door1() {
  //cp5.getController("door1").setImage(openDoor);
  if(choosingStage == 1){
  chosenDoor = 1;
  choosingStage ++;
  }
}

void door2() {
  //cp5.getController("door2").setImage(openDoor);
  if(choosingStage == 1){
  chosenDoor = 2;
  choosingStage ++;
  }
}