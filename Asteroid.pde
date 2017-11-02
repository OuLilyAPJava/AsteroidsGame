class Asteroids extends Floater
{
  private int rSpeed;
  //add corners
  public Asteroids()
  {
    rSpeed = (int)(Math.random()-0.5);
    corners = 7;
    int[] xS = {-11, 7, 13, 6, -3, -1, -11};
    int[] yS = {-8, -9, 0, 10, 11, 0, -8};
    xCorners = xS;
    yCorners = yS;
    myColor = 255;
    myCenterX = (int)(Math.random()*900)+50;
    myCenterY = (int)(Math.random()*700)+50;
    myDirectionX = 0;
    myDirectionY = 0;
    myPointDirection = 0;
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
    turn(rSpeed);
    super.move();
  }
}