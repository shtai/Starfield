//your code here
void setup()
{
	size(400,400);
	frameRate(1);
}
void draw()
{
	noStroke();
	fill(0,0,0);
	rect(0,0,400,400);
	Normal [] norms = new Normal[10];
	for (int i; i<=norms.length; i++)
	{
		norms [i] = new Normal();
		norms.move(i);
		norms.show(i);
	}
	
}
class Normal
{
	double normalX, normalY, normalSpeed, normalAngle, normalMoveX, normalMoveY;
	int normalColor;

	Normal()
	{
		normalX=(Math.random()*400);
		normalY=(Math.random()*400);
		normalSpeed=0.1;
		normalAngle=(Math.random()*Math.PI);
		normalMoveX=normalSpeed*Math.cos(normalAngle);
		normalMoveY=normalSpeed*Math.sin(normalAngle);
		normalColor = color(100,100,100);
	}

	void move()
	{
		normalX = normalX + normalMoveX;
		normalY = normalY + normalMoveY;
	}

	void show()
	{
		fill(255,255,0);
		ellipse((float)normalX, (float)normalY, 10,10);
	}

}
interface Particle
{
	//your code here
}
class Oddball //uses an interface
{
	//your code here
}
class Jumbo //uses inheritance
{
	//your code here
}

