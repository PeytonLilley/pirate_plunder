class ship {
  
float shipX = 200;
float shipY = 320;
float shipWidth = 80;
float shipHeight = 40;

ship(float myShipX, float myShipY) {
 shipX = myShipX;
 shipY = myShipY;
}

void displayShip() {
 fill(250, 235, 197);
 rectMode(CENTER);
 rect(shipX, shipY, shipWidth, shipHeight);
}
}
