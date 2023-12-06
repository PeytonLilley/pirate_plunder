// new class for enemy ships
 

class enemy {
  
 PVector location;
 PVector velocity;  
 int hits = 0;
 
  enemy() {  // generate an enemy in a random position moving in a random direction and random speed
  location = new PVector(random(80, 320), random(40, 160));
  velocity = PVector.random2D();
  
}

void displayEnemy() {  //display enemy ship
 location.add(velocity);  // make the enemy move according to the velocity
 imageMode(CENTER);
 
 switch(hits) {  // code to add visible damage to enemy ships when hit
   case 0:
    image(enemy1, location.x, location.y);
    break;
   case 1:
    image(enemy2, location.x, location.y);
    break;
   case 2:
    image(enemy3, location.x, location.y);
    break;
 }
 
 if ((location.x > width-40) || (location.x < 40)) {  // constrain enemy to width of screen
   velocity.x = velocity.x * -1;
 }
 if ((location.y > 180) || (location.y < 20)) {
   velocity.y = velocity.y * -1;
 }
}

void hit() {  // code to check collision with enemy ship
   if ((cannon.location.x >= enemy.location.x - 40) && (cannon.location.x <= enemy.location.x + 40) && (cannon.location.y <= enemy.location.y + 20) && (cannon.location.y >= enemy.location.y - 20)) {
    hit = true;   
   }
  if (hit == true) {
    hits = hits + 1; // change switch case to make the ship more damaged with each hit
    println("hit");
   }
 }

}
