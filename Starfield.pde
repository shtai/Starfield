Particle [] sparkle = new Particle[300];

void setup()
{
	size(400,400);
	frameRate(15);
	for (int i=0; i<sparkle.length; i++)
	{
		if (i%100==0)
		{
			sparkle[i] = new Jumbo();
		}
		else if (i%30==0)
		{
			sparkle[i] = new Oddball();
		}
		else
		{
			sparkle [i] = new Normal();
		}
	}
}

void draw()
{
	noStroke();
	fill(0,0,0,150);
	rect(0,0,400,400);
	for (int i=0; i<sparkle.length; i++)
	{
		sparkle[i].move();
		sparkle[i].show();

		if (((Normal)sparkle[0]).normX < -50 || ((Normal)sparkle[0]).normX > 450 || ((Normal)sparkle[0]).normY < -50 || ((Normal)sparkle[0]).normY > 450)
		{
			for (i=0; i<sparkle.length; i++)
			{
				if (i%100==0)
				{
					sparkle[i] = new Jumbo();
				}
				else if (i%30==0)
				{
					sparkle[i] = new Oddball();
				}
				else
				{
					sparkle [i] = new Normal();
				}
			}
		}
	}
}

interface Particle
{
	public void move();
	public void show();
}
class Normal implements Particle
{
	double normX, normY, normAngle, normSpeed, normMoveX, normMoveY, normSize;
	int normColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	Normal()
	{
		normX = 200;
		normY = 200;
		normAngle = (Math.random()*2*Math.PI);
		normSpeed=10;
		normMoveX=normSpeed*Math.cos(normAngle);
		normMoveY=normSpeed*Math.sin(normAngle);
		normSize=7;
	}

	public void move()
	{
		normX = normX + normMoveX;
		normY = normY + normMoveY;
	}

	public void show()
	{
		fill(normColor);
		ellipse((float)normX, (float)normY, (float)normSize, (float)normSize);
	}
}

class Oddball implements Particle
{
	double oddX, oddY, oddSize;
	int oddColor;

	Oddball()
	{
		oddX=200;
		oddY=200;
		oddSize=10;
		oddColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), 100);
	}
	public void move()
	{
		oddX = Math.random()*400;
		oddY = Math.random()*400;
	
	}
	public void show()
	{
		fill(oddColor);
		ellipse((float)oddX, (float)oddY, (float)oddSize, (float)oddSize);
	}
}

class Jumbo extends Normal
{
	Jumbo()
	{
		normSize = 15;
	}
}

