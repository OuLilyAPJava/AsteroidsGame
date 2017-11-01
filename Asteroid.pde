class Asteroids extends Floater
{
  private int rSpeed;
  public Asteroids()
  {
    rSpeed = (int)(Math.random()-0.5);
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
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    //wrap around screen    
    if (myCenterX >width)
    {     
      myCenterX = 0;
    } else if (myCenterX<0)
    {     
      myCenterX = width;
    }    
    if (myCenterY >height)
    {    
      myCenterY = 0;
    } else if (myCenterY < 0)
    {     
      myCenterY = height;
    }
  }   
}