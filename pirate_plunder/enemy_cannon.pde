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
 //  if ((location.x > width-40) || (location.x < 40)) {  //have the enemy cannon change direction with the enemy ship
 //  velocity.x = velocity.x * -1; 
 //}
 if ((location.y > 400) || (location.y < 20)) {
   location.y = enemy.location.y;
   location.x = enemy.location.x;
 }
 }
 
 void launchEnemy() {
   location.y = (location.y + velocity.y);
 }
}
