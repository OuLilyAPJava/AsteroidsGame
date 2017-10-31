//your variable declarations here
Stars[] galaxy = new Stars[200];
Spaceship bob = new Spaceship();
public void setup() 
{
  size(800, 600);
  background(0);
  for (int i = 0; i < galaxy.length; i ++)
  {
    galaxy[i] = new Stars();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < galaxy.length; i ++)
  {
    galaxy[i].show();
  }
  bob.show();
  bob.move();
}
public void keyPressed()
{
  if (key == ENTER)
  {
    bob.setPointDirection((int)(Math.random()*360));
    bob.setX((int)(Math.random()*750));
    bob.setY((int)(Math.random()*550));
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
  if (keyCode == UP)
  {
    bob.accelerate(0.5);
  }
}