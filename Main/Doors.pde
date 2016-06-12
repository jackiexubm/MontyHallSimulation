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

void setupAutoRun() {
  cp5.addToggle("autoRunToggle")
    .setPosition(1020, 215)
    ;

  cp5.addSlider("autoRunDelay")
    .setRange(0, 1000)
    .setValue(0)
    .setPosition(960, 242)
    ;
    
  cp5.addToggle("doNotAnimateToggle")
  .setPosition(1045,270)
  .setSize(13,13)
  .setValue(true)
  ;
}

void door0() {
  if (choosingStage == 1) {
    chosenDoor = 0;
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
    choosingStage ++;  
    return;
  } else if (choosingStage == 2) {
    if (hintDoor == 0) {
      return;
    } else 
    cp5.getController("door0").setImage(openDoor);
    if (chosenDoor == 0) {
      gamesStayed ++;
      if (prizeDoor == 0) {
        gamesStayedAndWon ++;
      }
    } else {
      gamesSwitched ++;
      if (prizeDoor == otherDoor()) {
        gamesSwitchedAndWon ++;
      }
    }
    choosingStage++;
    return;
  } else if (choosingStage == 3) {
    restartGame();
  }
}

void door1() {
  if (choosingStage == 1) {
    chosenDoor = 1;
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
    choosingStage ++;
    return;
  } else if (choosingStage == 2) {
    if (hintDoor == 1) {
      return;
    }
    cp5.getController("door1").setImage(openDoor);
    if (chosenDoor == 1) {
      gamesStayed ++;
      if (prizeDoor == 1) {
        gamesStayedAndWon ++;
      }
    } else {
      gamesSwitched ++;
      if (prizeDoor == otherDoor()) {
        gamesSwitchedAndWon ++;
      }
    }
    choosingStage++;
    return;
  } else if (choosingStage == 3) {
    restartGame();
  }
}

void door2() {
  if (choosingStage == 1) {
    chosenDoor = 2;
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
    choosingStage ++;
    return;
  } else if (choosingStage == 2) {
    if (hintDoor == 2) {
      return;
    }
    cp5.getController("door2").setImage(openDoor);
    if (chosenDoor == 2) {
      gamesStayed ++;
      if (prizeDoor == 2) {
        gamesStayedAndWon ++;
      }
    } else {
      gamesSwitched ++;
      if (prizeDoor == otherDoor()) {
        gamesSwitchedAndWon ++;
      }
    }
    choosingStage++;
    return;
  } else if (choosingStage == 3) {
    restartGame();
  }
}