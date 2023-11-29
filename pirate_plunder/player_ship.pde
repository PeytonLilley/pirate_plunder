class ship {
  
float shipX = 200;
float shipY = 320;
float shipWidth = 80;
float shipHeight = 40;
PVector shipPosition;

ship(float myShipX, float myShipY) {
 shipX = myShipX;
 shipY = myShipY;
 shipPosition = new PVector(shipX, shipY);
}

void displayShip() {
 fill(250, 235, 197);
 rectMode(CENTER);
 rect(shipX, shipY, shipWidth, shipHeight);
}



void moveShip() {
 if (moveLeft == true) {
  ship.shipX -=shipSpeed;
 }
 if (moveRight == true) {
  ship.shipX += shipSpeed;
 }
 if (moveDown == true) {
  ship.shipY += shipSpeed;
 }
 if (moveUp == true) {
  ship.shipY -= shipSpeed;
 }
}
}
