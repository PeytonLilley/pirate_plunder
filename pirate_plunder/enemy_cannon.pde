// create a new class for the enemy cannon
 
class enemyCannon {
  
 PVector location = new PVector(enemy.location.x, enemy.location.y);  // make the location the same as the enemy ship
 PVector velocity = new PVector(0, 2);  //make the velocity the same as the enemy ship

 void displayCannon() {  // show the cannonball (identical to player cannonball)
   ellipseMode(CENTER);
   noStroke();
   fill(0);
   ellipse(location.x, location.y, 15, 15);
 }
 
 void moveEnemyCannon() {  // make the cannonball stay hidden "inside" the ship until it is shot
   location = location.add(velocity);
 if (location.y > 400) {
   location.x = enemy.location.x;
   location.y = enemy.location.y;
 }
 if ((location.x > ship.shipPosition.x - 80) && (location.x < ship.shipPosition.x + 80) && (location.y > ship.shipPosition.y - 70) && (location.y < ship.shipPosition.y + 40)) {  // if the player is hit, ship takes damage
   ship.hitPlayer = ship.hitPlayer + 1;
   location.x = enemy.location.x;
   location.y = enemy.location.y;
 }
 }
}
