class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -10;
      yCorners[0] = -16;
      xCorners[1] = 20;
      yCorners[1] = 0;
      xCorners[2] = -10;
      yCorners[2] = 16;
      xCorners[3] = -2;
      yCorners[3] = 0;
      
      myColor = 255;
      
      myCenterX = 200;
      myCenterY = 200;
      
      myDirectionX = 0;
      myDirectionY = 0;
      
      myPointDirection = 10;
    }
    
    public void hyperspace(){
      myDirectionX = 0;
      
      myCenterX = myCenterX + (int)(Math.random()*200)-200;
      myCenterY = myCenterY + (int)(Math.random()*200)-200;
      
    }
}
