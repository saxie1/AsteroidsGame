class Star //note that this class does NOT extend Floater
{
  private float myX,myY;
  public Star()
  {
    myX=((float)Math.random()*400);
    myY=((float)Math.random()*400);
  }
  public void showStars(){
    fill(0,255,255);
    ellipse(myX,myY,3,3);
  }
}
