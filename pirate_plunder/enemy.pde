// new class for enemy ships
 

class enemy {
  
 PVector location;
 PVector velocity;  
 
  enemy() {
  location = new PVector(random(80, 320), random(40, 160));
  velocity = PVector.random2D();
  
}

void displayEnemy() {
 location.add(velocity);
 noStroke();
 fill(250, 235, 197);
 rectMode(CENTER);
 rect(location.x, location.y, 80, 40);
 
 if ((location.x > width-40) || (location.x < 40)) {  // constrain enemy to width of screen
   velocity.x = velocity.x * -1;
 }
 if ((location.y > 180) || (location.y < 20)) {
   velocity.y = velocity.y * -1;
 }
}

void hit() {
   if ((cannon.location.x >= location.x - 40) && (cannon.location.x <= location.x + 40)) {
    if ((cannon.location.y >= location.y + 20) && (cannon.location.y <= location.y - 20)); {
    hit = true;   
 }
   }
  if (hit == true) {
    println("hit");
   }
 }

}
