Normal [] norms = new Normal[300];
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
		if (norms[0].normalX < -50 || norms[0].normalX > 450 || norms[0].normalY < -50 || norms[0].normalY > 450)
		{
			for (i=0; i<norms.length; i++)
			{
				norms [i] = new Normal();
			}
		}
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
		normalColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), 100);
		normalSize=7;
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

