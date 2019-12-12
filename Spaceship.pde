class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new double[corners];
      yCorners = new double[corners];
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
      
      myCenterX = (int)(Math.random()*701);
      myCenterY = (int)(Math.random()*701);
      
    }
    
    public double getX(){
      return myCenterX;
    }
    
    public double getY(){
      return myCenterY;
    }
    
    public double getDirectionX(){
      return myDirectionX;
    }
    
    public double getDirectionY(){
      return myDirectionY;
    }
    
}
