//your variable declarations here
Stars[] galaxy = new Stars[300];
Spaceship bob = new Spaceship();
ArrayList <Asteroids> rocks = new ArrayList <Asteroids>();
ArrayList <Bullets> ammo = new ArrayList <Bullets>();
public void setup() 
{
  size(1000, 800);
  background(0);
  //stars
  for (int i = 0; i < galaxy.length; i ++)
  {
    galaxy[i] = new Stars();
  }
  //asteroids
  for (int i = 0; i < 20; i ++)
  {
    rocks.add(new Asteroids());
  }  
  //bullets
  for (int i = 0; i < ammo.size(); i ++)
  {
    ammo.add(new Bullets(bob));
  } 
}
public void draw() 
{
  background(0);
  //stars
  for (int i = 0; i < galaxy.length; i ++)
  {
    galaxy[i].show();
  }
  //asteroids
  for (int i = 0; i < rocks.size(); i ++)
  {
    rocks.get(i).show();
    rocks.get(i).move();
    if(dist(rocks.get(i).getX(), rocks.get(i).getY(), bob.getX(), bob.getY()) < 45)
    {
      rocks.remove(i);
      rocks.add(new Asteroids());
    }
  }
  //bullets
  for (int i = 0; i < ammo.size(); i ++)
  {
    ammo.get(i).show();
    ammo.get(i).move();
    //bullet offscreen
    if (ammo.get(i).getX() > 1000 || ammo.get(i).getX() < 0 || ammo.get(i).getY() > 800 || ammo.get(i).getY() < 0)
    {
      ammo.remove(i);
    }
  }
  //spaceship
  bob.show();
  bob.move(); 
}
public void keyPressed()
{
  //controls
  //hyperspace
  if (key == ENTER)
  {
    bob.setPointDirection((int)(Math.random()*360));
    bob.setX((int)(Math.random()*950));
    bob.setY((int)(Math.random()*750));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    background(0);
  }
  //turn left
  if (keyCode == LEFT)
  {
    bob.turn(-10);
  }
  //turn right
  if (keyCode == RIGHT)
  {
    bob.turn(10);
  }
  //accelerate
  if (keyCode == UP)
  {
    bob.accelerate(0.5);
  }
  //shoot bullet
  if(key == ' ')
  {
    ammo.add(new Bullets(bob));
  }
}