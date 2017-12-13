class Asteroids extends Floater
{
  private int rSpeed;
  private int rSize = (int)(Math.random()*4);
  //add corners
  public Asteroids()
  {
    rSpeed = (int)(Math.random()*4)-2;
    corners = 12;
    int[] xS = {-15 * rSize, -13 * rSize, -9 * rSize, 0 * rSize, 9 * rSize, 10 * rSize, 12 * rSize, 12 * rSize, 7 * rSize, 0 * rSize, -7 * rSize, -14 * rSize};
    int[] yS = {0 * rSize, -7 * rSize, -12 * rSize, -15 * rSize, -10 * rSize, -8 * rSize, -5 * rSize, 4 * rSize, 13 * rSize, 15 * rSize, 14 * rSize, 6 * rSize};
    xCorners = xS;
    yCorners = yS;
    myColor = 219;
    myCenterX = (int)(Math.random()*800)+50;
    myCenterY = (int)(Math.random()*600)+50;
    myDirectionX = (int)(Math.random()*2)-1;
    myDirectionY = (int)(Math.random()*2)-1;
    myPointDirection = 0;
  }
  public int getrSize() {
    return (int) rSize;
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
  public void move()   //move the floater in the current direction of travel
  {
    turn((int)rSpeed);
    super.move();
  }
  public void show ()  //Draws the floater at the current position  
  {
    stroke(173, 148, 126);
    fill(196, 169, 145);
    super.show();
  }
}