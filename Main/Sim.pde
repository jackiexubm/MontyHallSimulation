void runSimulator() {
  if (choosingStage == 0) {
    prizeDoor = (int) (Math.random() * 3);
    choosingStage ++;
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
    textSize(20);
    fill(0);
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
    if (otherDoor() == 0) {
      text("OR SWITCH...", 90, 30);
    } else if (otherDoor() == 1) {
      text("OR SWITCH...", 370, 30);
    } else if (otherDoor() == 2) {
      text("OR SWITCH...", 650, 30);
    }
  }

  if (choosingStage == 3) {
    text("Click on any door to try again", 300, 670);
  }

  textSize(20);
  text("Auto run toggle:", 855, 230);
  textSize(12);
  text("Auto run delay:", 855, 250);
  textSize(10);
  text("(slide left and right to change value)", 855, 260);
}


void gameStats() {
  fill(256, 256, 256);
  rect(845, 45, 237, 130, 10);
  fill(0);
  textSize(15);

  text("Games stayed: " + gamesStayed, 932, 65);
  text("Games stayed and won: " + gamesStayedAndWon, 865, 85);
  text("Percent won on stay: ", 887, 105);
  if (gamesStayed > 0) {
    text((int)((double) gamesStayedAndWon / (double) gamesStayed * 100), 1042, 105);
  }
  text("Games switched: " + gamesSwitched, 915, 125);
  text("Games switched and won: " + gamesSwitchedAndWon, 849, 145);
  text("Percent won on switch: ", 870, 165);
  if (gamesSwitched > 0) {
    text((int)((double) gamesSwitchedAndWon / (double) gamesSwitched * 100), 1042, 165);
  }
}

void restartGame() {
  cp5.getController("door0").setImage(closedDoor);
  cp5.getController("door1").setImage(closedDoor);
  cp5.getController("door2").setImage(closedDoor);
  choosingStage = 0;
}


void autoRun(int delayTime) {
  delay(delayTime);
  if (choosingStage == 1) {
    System.out.println(1);
    int rand = (int) (Math.random() * 3);
    if (rand == 0) {
      door0();
    } else if (rand == 1) {
      door1();
    } else {
      door2();
    }
    return;
  }
  if (choosingStage == 2) {
    System.out.println(2);
    int rand;
    rand = (int) (Math.random() * 3);
    while (rand == hintDoor) {
      rand = (int) (Math.random() * 3);
    }
    if (rand == 0) {
      door0();
    } else if (rand == 1) {
      door1();
    } else {
      door2();
    }
    return;
  }
  if (choosingStage == 3) {
    door1();
    return;
  }
}