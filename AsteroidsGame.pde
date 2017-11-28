//your variable declarations here
Stars[] galaxy = new Stars[300];
Spaceship bob = new Spaceship();
ArrayList <Asteroids> rocks = new ArrayList <Asteroids>();
public void setup() 
{
  size(1000, 800);
  background(0);
  for (int i = 0; i < galaxy.length; i ++)
  {
    galaxy[i] = new Stars();
  }
  for (int i = 0; i < 15; i ++)
  {
    Asteroids aRock = new Asteroids();
    rocks.add(aRock);
    //rocks[i] = new Asteroids();
  }
}
public void draw() 
{
  background(0);
  for (int i = 0; i < galaxy.length; i ++)
  {
    galaxy[i].show();
  }
  for (int i = 0; i < rocks.size(); i ++)
  {
    rocks.get(i).show();
    rocks.get(i).move();
  }
  bob.show();
  bob.move(); 
}
public void keyPressed()
{
  if (key == ENTER)
  {
    bob.setPointDirection((int)(Math.random()*360));
    bob.setX((int)(Math.random()*950));
    bob.setY((int)(Math.random()*750));
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