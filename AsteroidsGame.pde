//your variable declarations here
Spaceship bob = new Spaceship();
public void setup() 
{
  size(500, 500);
  background(0);
}
public void draw() 
{
  background(0);
  bob.show();
  bob.move();
}
public void keyPressed()
{
  if (key == ENTER)
  {
    bob.setPointDirection((int)(Math.random()*360));
    bob.setX((int)(Math.random()*450));
    bob.setY((int)(Math.random()*450));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    background(0);
  }
  if (keyCode == LEFT)
  {
    bob.turn(-10);
  }
  if (keyCode == RIGHT)
  {
    bob.turn(10);
  }
  if (key == ' ')
  {
    bob.accelerate(1);
  }
}