// create a new class for the cannonball 
 
class cannon {
  
 PVector location = new PVector(ship.shipX, ship.shipY);
 PVector velocity = new PVector(0, -1);
  
 void displayCannon() {
   ellipseMode(CENTER);
   noStroke();
   fill(0);
   ellipse(location.x, location.y, 15, 15);
 }
 
 void moveCannon() {
 if (moveLeft == true) {
  cannon.location.x -= shipSpeed;
 }
 if (moveRight == true) {
  cannon.location.x += shipSpeed;
 }
 if (moveDown == true) {
  cannon.location.y += shipSpeed;
 }
 if (moveUp == true) {
  cannon.location.y -= shipSpeed;
 }
}
}
