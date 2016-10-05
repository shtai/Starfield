Particle [] parti = new Normal[300];
void setup()
{
	size(400,400);
	frameRate(15);
	for (int i=0; i<parti.length; i++)
	{
		parti [i] = new Normal();
	}
}

void draw()
{
	noStroke();
	fill(0,0,0,150);
	rect(0,0,400,400);
	for (int i=0; i<parti.length; i++)
	{
		parti[i].move();
		parti[i].show();
		/*parti[i].partSize += 0.5;
		if (parti[0].partX < -50 || parti[0].partX > 450 || parti[0].partY < -50 || parti[0].partY > 450)
		{
			for (i=0; i<parti.length; i++)
			{
				parti [i] = new Normal();
			}
		}
		*/
	}
}

interface Particle
{
	public void move();
	public void show();
	public double partX=200;
	public double partY=200;
	public double partSpeed=10;
	public double partAngle=(Math.random()*2*Math.PI);
	public double partMoveX=partSpeed*Math.cos(partAngle);
	public double partMoveY=partSpeed*Math.sin(partAngle);
	public double partSize=7;
	/*public int partColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));*/
}
class Normal implements Particle
{

	Normal()
	{
		
	}

	void move()
	{
		/*partX = partX + partMoveX;
		partY = partY + partMoveY;*/
	}

	void show()
	{
		fill(255,0,0);
		ellipse((float)partX, (float)partY, (float)partSize, (float)partSize);
	}
}
/*
class Oddball implements Particle{
{
	Oddball()
	{
		partX=200;
		partY=200;
		partSpeed=10;
		partAngle=(Math.random()*2*Math.PI);
		partMoveX=normalSpeed*Math.cos(partAngle);
		partMoveY=normalSpeed*Math.sin(partAngle);
		partColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255), 100);
		partSize=7;part
	}
	public void move();
	public void show();
}
class Jumbo //uses inheritance
{
	//your code here
}
*/
