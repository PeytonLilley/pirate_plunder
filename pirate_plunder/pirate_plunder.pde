ship ship;
coin coin;
boolean startGame = false;
boolean buttonGrow = false;

void setup() {
 size(400, 400); 
 ship = new ship(200, 320);
}

void draw() {
 background(192, 234, 250);
 
 if (mouseX > 140 && mouseX < 260 && mouseY > 200 && mouseY < 260 && mousePressed) {
   startGame = true;
 }
 
 if (startGame == true)
 playGame();
 
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
  
  // loop to draw coins on start menu
int coinX1 = 10;
int coinY1 = 10;
int coinMaxX = 400;
int coinMaxY = 400;

coin = new coin(coinX1, coinY1, 15, 30, 20);
ArrayList<coin> coins;  //initialize array list for coins
coins = new ArrayList<coin>();

coins.add(new coin(coinX1, coinY1, 15, 30, 20));

while ((coinX1 <= coinMaxX) && (coinY1 <= coinMaxY)) {
 for (coin c : coins) {
  c.displayCoin();
  c.moveCoinX();
//  c.moveCoinY();
  coinX1 = coinX1 + 30;
//  coinY1 = coinY1 + 40;
  
  }
 }
}

void playGame() {
  fill(100, 212, 255);
  rectMode(CORNER);
  rect(0, 200, 400, 200);
  ship.displayShip();
}

  
 
