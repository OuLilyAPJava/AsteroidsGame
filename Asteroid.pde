class Asteroids extends Floater
{
  private int rSpeed;
  //add corners
  public Asteroids()
  {
    rSpeed = (int)(Math.random()*4)-2;
    corners = 12;
    int[] xS = {-30, -27, -18, 0, 18, 21, 24, 24, 15, 0, -15, -27};
    int[] yS = {0, -15, -24, -30, -21, -15, -9, 9, 27, 30, 27, 12};
    xCorners = xS;
    yCorners = yS;
    myColor = 219;
    myCenterX = (int)(Math.random()*900)+50;
    myCenterY = (int)(Math.random()*700)+50;
    myDirectionX = (int)(Math.random()*2)-1;
    myDirectionY = (int)(Math.random()*2)-1;
    myPointDirection = 0;
  }
  public void setrSpeed(int x) {
    rSpeed = x;
  }  
  public int getrSpeed() {
    return (int) rSpeed;
  }  
  public void setX(int x) {
    myCenterX = x;
  }  
  public int getX() {
    return (int) myCenterX;
  }  
  public void setY(int y) {
    myCenterY = y;
  }  
  public int getY() {
    return (int)myCenterY;
  }   
  public void setDirectionX(double x) {
    myDirectionX = x;
  }
  public double getDirectionX() {
    return myDirectionX;
  }   
  public void setDirectionY(double y) {
    myDirectionY = Y;
  }   
  public double getDirectionY() {
    return (int)myDirectionY;
  }   
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }  
  public double getPointDirection() {
    return myPointDirection;
  } 
  public void move ()   //move the floater in the current direction of travel
  {
    turn((int)rSpeed);
    super.move();
  }
}