void runSimulator() {
  if (choosingStage == 0) {
    prizeDoor = (int) (Math.random() * 3);
    choosingStage ++;
    System.out.println(prizeDoor);
  }
  
  if(choosingStage == 2){
    
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
  if(choosingStage == 2){
    if(chosenDoor == 0){
      image(pointUp,130,600);
      text("Your Choice",110,680);
    }else if(chosenDoor == 1){
      image(pointUp,410,600);
      text("Your Choice",390,680);
    }else if(chosenDoor == 2){
      image(pointUp,690,600);
      text("Your Choice",670,680);
    }
  }
}