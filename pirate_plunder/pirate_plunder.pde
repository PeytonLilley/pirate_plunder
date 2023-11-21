

boolean startGame = false;
boolean buttonGrow= false;

void setup() {
 size(400, 400); 
}

void draw() {
 background(192, 234, 250);
 

 
 if (startGame == false)  // if start button has not been pressed, display start menu
 startMenu();
}

void startMenu() {
  if (mouseX > 140 && mouseX < 260 && mouseY > 200 && mouseY < 260) {
  buttonGrow = true;
  } else {
    buttonGrow = false;
  }
  
  if (buttonGrow == true) {  // if the mouse is over the start button, increase size
  background(192, 234, 250);  
  rectMode(CENTER);
  fill(250, 235, 197);
  noStroke();
  rect(200, 160, 240, 40);
  rect(200, 220, 130, 45);
  fill(157, 115, 30);
  textSize(20);
  text("PIRATE PLUNDER", 123, 165);
  text("START GAME", 147, 225);
  } 
  
  if (buttonGrow == false) {// if mouse is not over the start button, button stays small
  background(192, 234, 250);  
  rectMode(CENTER);
  fill(250, 235, 197);
  noStroke();
  rect(200, 160, 240, 40);
  rect(200, 220, 120, 40);
  fill(157, 115, 30);
  textSize(20);
  text("PIRATE PLUNDER", 123, 165);
  text("START GAME", 147, 225);
  }
 }
