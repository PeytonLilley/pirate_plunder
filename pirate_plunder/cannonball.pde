// create a new class for the cannonball 
 
class cannon {
  
 PVector location = new PVector(ship.shipX, ship.shipY);
 PVector velocity = new PVector(0, -5);
 boolean moveCannon = true;
  
 void displayCannon() {
   ellipseMode(CENTER);
   noStroke();
   fill(0);
   ellipse(location.x, location.y, 15, 15);
 }
 
 void moveCannon() {
 if (moveCannon == true && moveLeft == true) {
  cannon.location.x -= shipSpeed;
 }
 if (moveCannon == true && moveRight == true) {
  cannon.location.x += shipSpeed;
 }
 if (moveCannon == true && moveDown == true) {
  cannon.location.y += shipSpeed;
 }
 if (moveCannon == true && moveUp == true && cannon.location.y > 220) {
  cannon.location.y -= shipSpeed;
 }
 }
 void launchCannon() {
  if (shoot) {
   moveCannon = false;
   cannon.location.y = (cannon.location.y + cannon.velocity.y);
   if (cannon.location.y <= 0 || (cannon.location.y < (enemy.location.y + 20)) && (cannon.location.y > (enemy.location.y - 20)) && (cannon.location.x < (enemy.location.x + 40)) && (cannon.location.x > (enemy.location.x - 40))) {
   shoot = false;
   cannonReset = true;
   }
}
}

void cannonReset() {
  if (cannonReset == true) {
    moveCannon = true;
    cannon.location.x = ship.shipX;
    cannon.location.y = ship.shipY;
    hit = false;
    cannonReset = false;
  }
}
}
