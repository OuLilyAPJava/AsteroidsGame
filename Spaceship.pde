class Spaceship extends Floater  
{
  public Spaceship()
  {
    corners = 4;
    int[] xS = {-12, 23, -12, -4};
    int[] yS = {-12, 0, 12, 0};
    xCorners = xS;
    yCorners = yS;
    myColor = 255;
    myCenterX = 450;
    myCenterY = 350;
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

  public void show ()  //Draws the floater at the current position  
  {            
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));

    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    //draw the polygon
    if (keyCode == UP)
    {
      fill(181, 194, 221);
      stroke(181, 194, 221);
      triangle(-5, 5, -20, 4, -5, -5);
      triangle(-5, 5, -25, 0, -5, -5);
      triangle(-5, 5, -20, -4, -5, -5);
    }
    fill(50, 117, 255);   
    stroke(50, 117, 255);    
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}