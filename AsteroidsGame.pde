Spaceship bob;
Star[] bobby;
Asteroid[] rob;
public void setup() 
{
  size(400,400);
  background(0);
  bob = new Spaceship();
  bobby = new Star[100];
  for(int i=0;i<bobby.length;i++)
  {
    bobby[i] = new Star();
  }
  rob = new Asteroid[8];
  for(int i=0;i<rob.length;i++)
  {
    rob[i] = new Asteroid();
  }
}
public void draw() 
{
 background(0);
 bob.show();
 bob.move();
 for(int i=0;i<bobby.length;i++)
 {
   bobby[i].showStars();
 }
 for(int i=0;i<rob.length;i++)
 {
   rob[i].show();
   rob[i].move();
 }
}
public void keyPressed()
{
  if(key == 'w')
  {
    bob.accelerate(0.5);
  }
  if(key == 's')
  {
    bob.accelerate(-0.5);
  }
  if(key == 'd')
  {
    bob.turn(4);
  }
  if(key == 'a')
  {
    bob.turn(-4);
  }
  if(key == 'h')
  {
    bob.setPointDirection(((int)(Math.random()*360)));
    bob.setX((int)(Math.random()*375+25));
    bob.setY((int)(Math.random()*375+25));
    bob.setDirectionX(0);
    bob.setDirectionY(0);
  }
}
