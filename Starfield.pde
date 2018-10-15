Particle Frida[];
void setup()
{
	size(500, 500);
	Frida = new Particle[2];
	for(int i=0; i<Frida.length; i++)
	{
		Frida[i]=new NormalParticle();
	}
	Frida[0]= new OddballParticle();
}
void draw()
{
	for(int i=0; i<Frida.length; i++)
	{
		Frida[i].show();
		Frida[i].move();
	}

}
class NormalParticle implements Particle
{
	double myX,myY,myAngle,mySpeed;
	int myColor;
	NormalParticle()
	{
		myX= 250.0;
		myY= 250.0;
		myColor= color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
		myAngle= (Math.random()*2.0*Math.PI);
		mySpeed= (Math.random()*10.0);
	}

	public void move()
	{
		myX= myX + Math.cos(myAngle)*mySpeed;
		myY= myY + Math.sin(myAngle)*mySpeed;
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX, (float)myY, 10, 10);
	}


}
interface Particle
{
	public void show();
  	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	double myX,myY,myAngle,mySpeed;
	
	OddballParticle()
	{
		myX= 250;
		myY= 250;
		myAngle= 20*2.0*Math.PI;
		mySpeed= 20.5;
		
	}
	public void move()
	{
		myX= myX + Math.cos(myAngle)*mySpeed;
		myY= myY + Math.sin(myAngle)*mySpeed;
	}

		public void show()
	{
		fill(112, 107, 158);//pastel purple
		ellipse((float)myX, (float)myY, 15, 5);
		fill(179, 229, 252);//baby blue
		ellipse((float)myX+8, (float)myY+5, 5, 5);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

