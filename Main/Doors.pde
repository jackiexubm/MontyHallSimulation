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

  if (choosingStage == 1) {
    chosenDoor = 0;
    choosingStage ++;
    if (chosenDoor == prizeDoor) {
      hintDoor = (int) (Math.random() * 2) + 1;
    } else {
      if (prizeDoor == 1) {
        hintDoor = 2;
      } else {
        hintDoor = 1;
      }
    }
    String toBeOpened = "door" + hintDoor;
    cp5.getController(toBeOpened).setImage(openDoor);
  }
}

void door1() {
  //cp5.getController("door1").setImage(openDoor);
  if (choosingStage == 1) {
    chosenDoor = 1;
    choosingStage ++;
    if (chosenDoor == prizeDoor) {
      hintDoor = (int) (Math.random() * 2) * 2;
    } else {
      if (prizeDoor == 0) {
        hintDoor = 2;
      } else {
        hintDoor = 0;
      }
    }
    String toBeOpened = "door" + hintDoor;
    cp5.getController(toBeOpened).setImage(openDoor);
  }
}

void door2() {
  //cp5.getController("door2").setImage(openDoor);
  if (choosingStage == 1) {
    chosenDoor = 2;
    choosingStage ++;
    if (chosenDoor == prizeDoor) {
      hintDoor = (int) (Math.random() * 2);
    } else {
      if (prizeDoor == 0) {
        hintDoor = 1;
      } else {
        hintDoor = 0;
      }
    }
    String toBeOpened = "door" + hintDoor;
    cp5.getController(toBeOpened).setImage(openDoor);
  }
}