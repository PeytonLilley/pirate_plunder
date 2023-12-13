// create new class for player's ship

class ship {
  
float shipX = 200;
float shipY = 320;
float shipWidth = 80;
float shipHeight = 40;
PVector shipPosition;
int hitPlayer = 0;

ship(float myShipX, float myShipY) {
 shipX = myShipX;
 shipY = myShipY;
 shipPosition = new PVector(shipX, shipY);
}

void displayShip() {  // display player ship
 imageMode(CENTER);
 
 switch(hitPlayer) {  // code to add visible damage to player ship when hit
   case 0:
    image(ship1, shipX, shipY);
    break;
   case 1:
    image(ship2, shipX, shipY);
    break;
   case 2:
    image(ship3, shipX, shipY);
    break;
 }
}



void moveShip() {  // move ship using WASD controls
 if (moveLeft == true) {
  ship.shipX -=shipSpeed;
 }
 if (moveRight == true) {
  ship.shipX += shipSpeed;
 }
 if (moveDown == true && ship.shipY < 380) {
  ship.shipY += shipSpeed;
 }
 if (moveUp == true && ship.shipY > 220) {  // contrain to bottom half of the screen
  ship.shipY -= shipSpeed;
 }
}
}
