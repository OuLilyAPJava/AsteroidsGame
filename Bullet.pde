class Bullets extends Floater
{
  public Bullets(Spaceship theShip)
  {
    myCenterX = theShip.getX();
    myCenterY = theShip.getY();
    myPointDirection = theShip.getPointDirection();
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionX();
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
  public void show()
  {
    stroke(181, 194, 221);
    fill(181, 194, 221);
    ellipse((int)myCenterX, (int)myCenterY, 5, 5);
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  }
}