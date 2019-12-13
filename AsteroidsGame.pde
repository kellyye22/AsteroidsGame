//variable declarations
Spaceship ship = new Spaceship();
Star [] space = new Star[500];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

public void setup() 
{
  size(700,700);
  
  //adds random stars to array
  for(int i = 0; i < space.length; i++){
    space[i] = new Star();
  }
  
  //adds random number of asteroids to array
  for(int x = 0; x < (int)(Math.random()*6)+10; x++){
    asteroids.add(new Asteroid());
  }
  
}
public void draw() 
{
  background(0);
  
  //draws asteroids in arraylist
  for(int x = 0; x < asteroids.size(); x++){
    asteroids.get(x).show();
    asteroids.get(x).move();
  
    //double spaceshipX = ship.myCenterX;
    //double spaceshipY = ship.myCenterY;
    
    //double asteroidX = asteroids.get(x).myCenterX;
    //double asteroidY = asteroids.get(x).myCenterY;
  
    //if(dist((float)asteroidX,(float)asteroidY,(float)spaceshipX, (float)spaceshipY) <= 20){
    //  asteroids.remove(x);
    //  }

  }
  
  //shows stars
  for(int i = 0; i < space.length; i++){
    space[i].show();
  }
  
  for(int i = 0; i < bullets.size(); i++){
    //shows bullets
    bullets.get(i).show();
    bullets.get(i).move();
    
    //temporary variable declarations
    double asteroidX, asteroidY, bulletX, bulletY;
 
    //loops over every asteroid to check if it has been it by bullet
    for(int x = 0; x < asteroids.size(); x++){
 
      asteroidX = asteroids.get(x).myCenterX;
      asteroidY = asteroids.get(x).myCenterY;
 
      bulletX = bullets.get(i).myCenterX;
      bulletY = bullets.get(i).myCenterY;
 
      if(dist((float)asteroidX,(float)asteroidY,(float)bulletX, (float)bulletY) <= 20){
        asteroids.remove(x);
        asteroids.add(new Asteroid());
        break;
      }
     }
   }
 
  //adds ship the screen
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
  if(key == 'h' || key == 'H'){
      ship.hyperspace();
  }
  
  //bullet launched
  if(key == ' '){
    bullets.add(new Bullet(ship));
  }
}
