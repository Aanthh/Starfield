NormalParticle[] bob;
void setup()
{
	size(600, 600);
	bob = new NormalParticle [500];
	for(int i = 0; i < bob.length; i++)
	{
		bob[i] = new NormalParticle();
	}
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
class NormalParticle
{
	double myX, myY, myAngle, mySpeed;
	int myColor;
	NormalParticle()
	{
		myX = myY = 300;
		myColor = color(255);
		myAngle = Math.PI*2*Math.random();
		mySpeed = (Math.random()*10)+1;
	}
	void show()
	{
		fill(myColor);
		ellipse((float)myX, (float)myY, 10, 10);
	}
	void move()
	{
		myX = myX + Math.cos(myAngle) * mySpeed;
		myY = myY + Math.sin(myAngle) * mySpeed;
	}
}
interface Particle
{
	
}
class OddballParticle implements Particle
{
	
}
class JumboParticle extends NormalParticle
{
	public void show()
	{

	}
}
