class Bullet extends Floater{
  
  Bullet(Spaceship theShip){
   myColor = color(64,94,99);
   
   myCenterX = theShip.getX();
   myCenterY = theShip.getY();
   
   myPointDirection = theShip.myPointDirection;
   //double dRadians = myPointDirection * (Math.PI/180);
   
   myDirectionX = theShip.getDirectionX();
   myDirectionY = theShip.getDirectionY();
   
   accelerate(2);
   
   //myDirectionX = 2 * Math.cos(dRadians) + theShip.myDirectionX;
   //myDirectionY = 2 * Math.cos(dRadians) + theShip.myDirectionY;
  }
  
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;      
  }
  
  public void show(){
    fill(myColor);
    stroke(myColor);
    
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  
}
