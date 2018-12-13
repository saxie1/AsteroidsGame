Spaceship bob;
Star[] bobby;
ArrayList<Bullet> bully;
ArrayList<Asteroid> rob;
public void setup() 
{
  size(400,400);
  background(0);
  bob = new Spaceship();
  bob.setX(200);
  bob.setY(200);
  bob.setPointDirection(-90);
  bobby = new Star[100];
  for(int i=0;i<bobby.length;i++)
  {
    bobby[i] = new Star();
  }
  rob = new ArrayList<Asteroid>();
  for(int i=0;i<10;i++)
  {
    rob.add(new Asteroid());
  }
  bully=new ArrayList<Bullet>();
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
 for(int i=0;i<rob.size();i++)
 {
   rob.get(i).show();
   rob.get(i).move();
   float d = dist(bob.getX(),bob.getY(),rob.get(i).getX(),rob.get(i).getY());
   if(d<10)
     rob.remove(i);
 }
  for(int i=0;i<bully.size();i++)
   {
    bully.get(i).show();
    bully.get(i).move();
  }
  for(int j=0;j<rob.size();j++){
    for(int i=0;i<bully.size();i++){
      float e = dist(rob.get(j).getX(),rob.get(j).getY(),bully.get(i).getX(),bully.get(i).getY());
      if(e<10)
      {
        bully.remove(i);
        rob.remove(j);
        break;
      }else if(bully.get(i).getX()==0 || bully.get(i).getX()==400 || bully.get(i).getY()==0 || bully.get(i).getY()==400){
        bully.remove(i);
        break;
      }
    }
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
  if(key =='c')
  {
    bully.add(new Bullet());
  }
}
