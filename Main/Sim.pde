void runSimulator() {
  if (choosingStage == 0) {
    prizeDoor = (int) (Math.random() * 3);
    choosingStage ++;
    System.out.println(prizeDoor);
  }

  if (choosingStage == 2) {
  }
}

void drawThings() {
  if (prizeDoor == 0) {
    image(money, 110, 250);
    image(dollar, 390, 250);
    image(dollar, 670, 250);
  } else if (prizeDoor == 1) {
    image(dollar, 110, 250);
    image(money, 390, 250);
    image(dollar, 670, 250);
  } else if (prizeDoor == 2) {
    image(dollar, 110, 250);
    image(dollar, 390, 250);
    image(money, 670, 250);
  }

  // draw pointUp to the chosen door 
  if (choosingStage == 2) {
    if (chosenDoor == 0) {
      image(pointUp, 130, 600);
      text("Your Choice", 90, 680);
      text("STAY...", 110, 30);
    } else if (chosenDoor == 1) {
      image(pointUp, 410, 600);
      text("Your Choice", 370, 680);
      text("STAY...", 390, 30);
    } else if (chosenDoor == 2) {
      image(pointUp, 690, 600);
      text("Your Choice", 650, 680);
      text("STAY...", 670, 30);
    }
    System.out.println(otherDoor());
    if (otherDoor() == 0) {
      text("OR SWITCH...", 90, 30);
    } else if (otherDoor() == 1) {
      text("OR SWITCH...", 390, 30);
    } else if (otherDoor() == 2) {
      text("OR SWITCH...", 650, 30);
    }
  }
}