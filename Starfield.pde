NormalParticle[] bob;
void setup()
{
	bob = new NormalParticle [100];
	for(int i = 0; i < bob.length; i++)
	{
		bob[i] = new NormalParticle();
	}
}
void draw()
{
	for(int i = 0; i < bob.length; i++);
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
		myColor = color(0);
		myAngle = Math.random()*2*Math.pi();
		mySpeed = Math.random()*11;
	}
	void show()
	{
		fill(myColor);
		ellipse(myX, myY, 20, 20);
	}
	void move()
	{
		myX = Math.cos(myAngle) * mySpeed;
		myY = Math.sin(myAngle) * mySpeed;
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
