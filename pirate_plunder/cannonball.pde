// create a new class for the cannonball 
 
class cannon {
  
 PVector location = new PVector(ship.shipX, ship.shipY);
 PVector velocity = new PVector(0, -5);
 boolean moveCannon = true;
  
 void displayCannon() {  // show the cannonball
   ellipseMode(CENTER);
   noStroke();
   fill(0);
   ellipse(location.x, location.y, 15, 15);
 }
 
 void moveCannon() {  // make the cannonball stay hidden "inside" the ship until it is shot
 if (moveCannon == true && moveLeft == true) {
  cannon.location.x -= shipSpeed;
 }
 if (moveCannon == true && moveRight == true) {
  cannon.location.x += shipSpeed;
 }
 if (moveCannon == true && moveDown == true) {
  cannon.location.y += shipSpeed;
 }
 if (moveCannon == true && moveUp == true && cannon.location.y > 220) {  // constrain to bottom half of the screen until shot
  cannon.location.y -= shipSpeed;
 }
 }
 void launchCannon() {  // code to shoot cannonball
  if (shoot) {
   moveCannon = false;  // if cannonball has been shot, do not have it change position with WASD anymore
   cannon.location.y = (cannon.location.y + cannon.velocity.y);
   if (cannon.location.y <= 0 || (cannon.location.y < (enemy.location.y + 20)) && (cannon.location.y > (enemy.location.y - 20)) && (cannon.location.x < (enemy.location.x + 40)) && (cannon.location.x > (enemy.location.x - 40))) {
   shoot = false;  
   cannonReset = true;  // if an enemy or far side of the screen has been hit, reset cannonball to its original position
   }
}
}

void cannonReset() {  // code to reset cannonball position
  if (cannonReset == true) {
    moveCannon = true;
    cannon.location.x = ship.shipX;
    cannon.location.y = ship.shipY;
    hit = false;
    cannonReset = false;
  }
}
}
