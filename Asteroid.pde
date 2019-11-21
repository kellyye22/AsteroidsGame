class Asteroid extends Floater
{
  protected int rotSpeed;
  protected double sizeScale;
  
  public Asteroid(){
    rotSpeed = (int)(Math.random()*5)-2; 
    sizeScale = Math.random()*2+3;
    
    corners = 10;
    xCorners = new double[corners];
    yCorners = new double[corners];
    xCorners[0] = 2 * sizeScale;
    yCorners[0] = 8 * sizeScale;
    xCorners[1] = 5 * sizeScale;
    yCorners[1] = 10 * sizeScale;
    xCorners[2] = 7 * sizeScale;
    yCorners[2] = 3 * sizeScale;
    xCorners[3] = 6 * sizeScale;
    yCorners[3] = -4 * sizeScale;
    xCorners[4] = 0 * sizeScale;
    yCorners[4] = -6 * sizeScale;
    xCorners[5] = -4 * sizeScale;
    yCorners[5] = -4 * sizeScale;
    xCorners[6] = -10 * sizeScale;
    yCorners[6] = 0 * sizeScale;
    xCorners[7] = -11 * sizeScale;
    yCorners[7] = 4 * sizeScale;
    xCorners[8] = -10 * sizeScale;
    yCorners[8] = 8 * sizeScale;
    xCorners[9] = -6 * sizeScale;
    yCorners[9] = 12 * sizeScale;
    
    myColor = 88;

    myCenterX = (int)(Math.random()*701);
    myCenterY = (int)(Math.random()*701);

    myDirectionX = Math.random()-0.5;
    myDirectionY = Math.random()-0.5;
    
    myPointDirection = 10;
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  public void show(){
    super.show();
  }
}
