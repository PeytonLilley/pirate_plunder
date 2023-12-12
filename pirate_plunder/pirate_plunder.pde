//Move with WASD and click to fire your cannon. 
//Hit the enemy pirate ship to protect your hoard of treasure.
//Count how much treasure you have stolen with the score at the top of the screen.

// ship sprites from https://kenney.nl/assets/pirate-pack


PImage enemy1;
PImage enemy2;
PImage enemy3;
PImage ship1;
PImage ship2;
PImage ship3;

ship ship;
coin coin;
enemy enemy;
cannon cannon;
enemyCannon enemyCannon;

float shipSpeed = 5;
boolean startGame = false;
boolean buttonGrow = false;
boolean moveLeft = false;
boolean moveRight = false;
boolean moveUp = false;
boolean moveDown = false;
boolean collision = false;
boolean shoot = false;
boolean cannonReset = false;
boolean hit = false;
boolean sink = false;
int score = 0;

void setup() {
 size(400, 400); 
 enemy1 = loadImage("enemy1.png");  // load images for ships
 enemy2 = loadImage("enemy2.png");
 enemy3 = loadImage("enemy3.png");
 ship1 = loadImage("ship1.png");
 ship2 = loadImage("ship2.png");
 ship3 = loadImage("ship3.png");
 ship = new ship(200, 320);
 enemy = new enemy();
 cannon = new cannon();
 enemyCannon = new enemyCannon();
}

void draw() {
 background(192, 234, 250);
 
 if (mouseX > 140 && mouseX < 260 && mouseY > 200 && mouseY < 260 && mousePressed) {  // check if start button is pressed
   startGame = true;
 }
 
 if (startGame == true)  // if start button has been pressed, change to game screen
 playGame();
 
 if (startGame == false) {  // if start button has not been pressed, display start menu
 startMenu();
}
}


void startMenu() {  
  if (mouseX > 140 && mouseX < 260 && mouseY > 200 && mouseY < 260) { // check if mouse is over the start button
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

coin = new coin(coinX1, coinY1, 15, 30, 20);
ArrayList<coin> coins;  //initialize array list for coins
coins = new ArrayList<coin>();

coins.add(new coin(coinX1, coinY1, 15, 30, 20));

while (coinX1 <= coinMaxX) {
 for (coin c : coins) {
  c.displayCoin();
  c.moveCoinX();
  coinX1 = coinX1 + 30;
  }
  }
 }


void playGame() { //code to run the actual game
  fill(100, 212, 255);
  rectMode(CORNER);
  rect(0, 200, 400, 200);
  cannon.displayCannon();
  ship.displayShip();
  enemy.displayEnemy();
  ship.moveShip();
  cannon.moveCannon();
  cannon.launchCannon();
  enemy.hit();
  cannon.cannonReset();
  showScore();
  gameReset();
  enemyCannon.displayCannon();
  enemyCannon.moveEnemyCannon();
  enemyCannon.launchEnemy();
  
// loop to draw coins at the bottom of the screen
int coinX1 = 10;
int coinY1 = 360;
int coinMaxX = 400;

coin = new coin(coinX1, coinY1, 15, 30, 20);
ArrayList<coin> coins;  //initialize array list for coins
coins = new ArrayList<coin>();

coins.add(new coin(coinX1, coinY1, 15, 30, 20));

while (coinX1 <= coinMaxX) {
 for (coin c : coins) {
  c.displayCoin();
  c.moveCoinX();
  coinX1 = coinX1 + 30;
  }
  }
}

 void mousePressed() {  // when the mouse is pressed, shoot a cannonball
   if (startGame == true) {
   shoot = true;
   }
 }
 
  void keyPressed() {  // move the player ship with WASD controls
 if (key == 'a') {
  moveLeft = true;
 }
 if (key == 'd') {
  moveRight = true;
 }
 if (key == 's') {
  moveDown = true;
 }
 if (key == 'w') {
  moveUp = true; 
 }
}

 void keyReleased() { 
 if (key == 'a') {
  moveLeft = false;
 }
 if (key == 'd') {
  moveRight = false;
 }
 if (key == 's') {
  moveDown = false;
 }
 if (key == 'w') {
  moveUp = false; 
 }
 }
 
 void showScore() {
   fill(0);
   textSize(30);
   text(score, 200, 25);  
   }
   
void gameReset() {
  if (score == 10) {
   println("you win!");
   startGame = false;
   startMenu();
   score = 0;
  }
}




  
 
