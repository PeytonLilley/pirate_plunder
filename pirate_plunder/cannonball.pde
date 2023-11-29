// create a new class for the cannonball 
 
class cannon {
  
 PVector location = new PVector(ship.shipX, ship.shipY);
 PVector velocity = new PVector(0, -5);
  
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
 void launchCannon() {
  if (shoot) {
   cannon.location.y = (cannon.location.y + cannon.velocity.y);
   if (cannon.location.y <= 0) {
   shoot = false;
   cannonReset = true;
   }
}
}

void cannonReset() {
  if (cannonReset == true) {
    cannon.location.x = ship.shipX;
    cannon.location.y = ship.shipY;
    hit = false;
    cannonReset = false;
  }
}
}
