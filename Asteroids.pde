class Asteroid extends Floater
{
  public void setX(int x) {myCenterX=x;}  
  public int getX() {return (int)myCenterX;}   
  public void setY(int y) {myCenterY=y;}   
  public int getY() {return (int)myCenterY;}
  public void setDirectionX(double x) {myDirectionX=x;}   
  public double getDirectionX() {return myDirectionX;}   
  public void setDirectionY(double y) {myDirectionY=y;}   
  public double getDirectionY() {return myDirectionY;}   
  public void setPointDirection(int degrees) {myPointDirection=degrees;}   
  public double getPointDirection() {return myPointDirection;}
  private int rotSpeed;
  public Asteroid()
  {
    corners=15;
    int[] xS={-12,-10,-2,2,6,12,14,12,8,-2,-2,-6,-8,-6,-10};
    int[] yS={-2,-6,-8,-10,-6,-4,2,6,8,12,10,12,6,2,2};
    xCorners=xS;
    yCorners=yS;
    myColor=255;
    rotSpeed=(int)(Math.random()*4-2);
    myCenterX=(int)(Math.random()*400);
    myCenterY=(int)(Math.random()*400);
    setDirectionX(Math.random());
    setDirectionY(Math.random()); 
    setPointDirection((int)Math.random()*360);
  } 
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
}
