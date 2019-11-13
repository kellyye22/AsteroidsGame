//your variable declarations here
Spaceship ship = new Spaceship();
Star [] space = new Star[500];

public void setup() 
{
  size(700,700);
  for(int i = 0; i < space.length; i++){
    space[i] = new Star();
  }
  
}
public void draw() 
{
  background(0);
  
  for(int i = 0; i < space.length; i++){
    space[i].show();
  }
  
  ship.show();
  ship.move();
}

public void keyPressed(){
  
  //accelerates the spaceship
  if(key == 'w' || key == 'W'){
      ship.accelerate(1);
  }
  
  //turns spaceship left
  if(key == 'a'|| key == 'A'){
      ship.turn(-20);
  }

  //turns spaceship right
  if(key == 'd' || key == 'D'){
      ship.turn(20);
  }
  
  //spaceship deccelerates
  if(key == 's' || key == 'S'){
      ship.accelerate(-1);
  }
  
  //spaceship enters hyperspace
  //spaceship decelerates
  if(key == 'h' || key == 'H'){
      ship.hyperspace();
  }
}
