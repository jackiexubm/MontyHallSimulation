void door1() {
  cp5.getController("door1").setImage(openDoor);
}

void setupDoor1() {
  cp5.addButton("door1")
    .setPosition(20, 25)
    .setSize(230, 530)
    .setImage(closedDoor)
    ;
}

void door2() {
 cp5.getController("door2").setImage(openDoor);
}

void setupDoor2() {
 cp5.addButton("door2")
   .setPosition(300, 25)
   .setSize(230, 530)
   .setImage(closedDoor)
   ;
}

void door3() {
 cp5.getController("door3").setImage(openDoor);
}

void setupDoor3() {
 cp5.addButton("door3")
   .setPosition(580, 25)
   .setSize(230, 530)
   .setImage(closedDoor)
   ;
}