Particle Frida[];
void setup()
{
	size(500, 500);
	Frida = new Particle[2000];
	for(int i=0; i<Frida.length; i++)
	{
		Frida[i]=new NormalParticle();
	}
	Frida[0]= new OddballParticle();
	Frida[1]= new JumboParticle();
}
void draw()
{
	background(13, 130, 120);
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
		myColor= color((int)(Math.random()*115)+140, (int)(Math.random()*201), (int)(Math.random()*201));
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
		myY= myY+ Math.sin(myAngle)*mySpeed;
		myAngle= myAngle* 20*2.0*Math.PI;
	}

		public void show()
	{
		fill(112, 107, 158);//pastel purple
		ellipse((float)myX, (float)myY, 35, 20);
		fill(179, 229, 252);//baby blue
		ellipse((float)myX, (float)myY-5, 15, 15);
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	JumboParticle()
	{
		myColor= color((int)(Math.random()*55)+200, (int)(Math.random()*85)+170, (int)(Math.random()*165));
	}
	public void show()
	{
		
		fill(myColor);
		ellipse((float)myX, (float)myY, 40, 40);
		
	}
}

