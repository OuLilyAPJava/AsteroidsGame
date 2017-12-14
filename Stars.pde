class Stars //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Stars()
  {
    myX = (int)(Math.random()*900);
    myY = (int)(Math.random()*700);
  }
  public void show()
  {
    fill(214, 229, 255);
    ellipse(myX, myY, 1, 1);
  }
}