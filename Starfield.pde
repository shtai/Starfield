Normal [] norms = new Normal[200];
void setup()
{
	size(400,400);
	frameRate(15);
	for (int i=0; i<norms.length; i++)
	{
		norms [i] = new Normal();
	}
}
void draw()
{
	noStroke();
	fill(0,0,0,150);
	rect(0,0,400,400);
	for (int i=0; i<norms.length; i++)
	{
		norms[i].move();
		norms[i].show();
		norms[i].normalSize=norms[i].normalSize+0.5;
	}
	
	
}
class Normal
{
	double normalX, normalY, normalSpeed, normalAngle, normalMoveX, normalMoveY, normalSize;
	int normalColor;

	Normal()
	{
		normalX=200;
		normalY=200;
		normalSpeed=10;
		normalAngle=(Math.random()*2*Math.PI);
		normalMoveX=normalSpeed*Math.cos(normalAngle);
		normalMoveY=normalSpeed*Math.sin(normalAngle);
		normalColor = color(200,00,0,100);
		normalSize=10;
	}

	void move()
	{
		normalX = normalX + normalMoveX;
		normalY = normalY + normalMoveY;
	}

	void show()
	{
		fill(normalColor);
		ellipse((float)normalX, (float)normalY, (float)normalSize, (float)normalSize);
	}

}
interface Particle
{
	public void show();
	public void move();
}
class Oddball //uses an interface
{
	//your code here
}
class Jumbo //uses inheritance
{
	//your code here
}

