Particle[] bob;
void setup()
{
  size(600, 600);
  bob = new Particle [500];
  for(int i = 0; i < bob.length; i++)
  {
    bob[i] = new NormalParticle();
  }
  bob[0] = new OddballParticle();
  bob[1] = new JumboParticle();
}
void draw()
{
  background(0);
  for(int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
}
class NormalParticle implements Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  NormalParticle()
  {
    myX = myY = 300;
    myColor = color(255);
    myAngle = Math.PI*2*Math.random();
    mySpeed = (Math.random()*8)+1;
  }
  public void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 10, 10);
  }
  public void move()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  int myX, myY, myColor;
  OddballParticle()
  {
    myX = myY = 300;
    myColor = color(255, 0, 0);
  }
  public void show()
  {
    fill(myColor);
    rect((float)myX, (float)myY, 10, 10);
  }
  public void move()
  {
    int direction = (int)(Math.random()*4);
    if(direction == 0)
    {
      myX = myX + 15;
    }
    else if(direction == 1)
    {
      myX = myX - 15;
    }
    else if(direction == 2)
    {
      myY = myY + 15;
    }
    else
    {
      myY = myY - 15;
    }
  }
}
class JumboParticle extends NormalParticle
{
  public void show()
    {
      fill(0, 255, 0);
      ellipse((float)myX, (float)myY, 50, 50);
    }
  }
