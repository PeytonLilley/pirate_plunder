

boolean startGame = false;

void setup() {
 size(400, 400); 
}

void draw() {
 background(192, 234, 250);
 
 if (startGame == false)  // if start button has not been pressed, display start menu
 startMenu();
}

void startMenu() {
  background(192, 234, 250);  // set background colour to light blue
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
