// new class for enemy ships
 PVector location;
 PVector velocity;

class enemy {
  
  enemy() {
  location = new PVector(random(80, 320), random(40, 160));
  velocity = PVector.random2D();
  println(velocity);
  
}

void displayEnemy() {
 location.add(velocity);
 
 noStroke();
 fill(250, 235, 197);
 rectMode(CENTER);
 rect(location.x, location.y, 80, 40);
}
}
