Particle [] galaxy = new Particle [760];
void setup()
{
 size(1000,1000);
 for (int i=2;i<galaxy.length;i++)
 {
 	galaxy[i] = new NormalParticle();
 }
 galaxy[1] = new jumboParticle();
 galaxy[0] = new OddballParticle();
}
void draw()
{
 fill(0,0,0,20);
 stroke(220,0,0);
 strokeWeight(2);
 rect(0,0,999,1000);
 for (int i = 2 ; i<galaxy.length; i ++)
 {
 galaxy[i].move();
 galaxy[i].show();
 }
 galaxy[1].move();
 galaxy[1].show();
 galaxy[0].move();
 galaxy[0].show();
}
class NormalParticle implements Particle
{
 double nparticleX,nparticleY;
 int colorR,colorG,colorB;
 double speedPX,speedPY, angleP;
 NormalParticle()
 {
 	nparticleY = 500;
 	nparticleX = 500;
 	angleP = (Math.random()*2*Math.PI);
 	speedPX = 2;
 	speedPY = 2;
 }
 public void move()
 {
  nparticleX = nparticleX + (Math.cos(angleP))*speedPX;
  nparticleY = nparticleY + (Math.sin(angleP))*speedPY;
  if((nparticleX > 1000 || nparticleX < 0) || (nparticleY < 0 || nparticleY > 1000) )
  {
 	nparticleY = 500;
 	nparticleX = 500;
  	speedPX = 2;
 	speedPY = 2;
  }
  if(speedPX < 10)
  {
  	
  	speedPX = speedPX + 0.5;
  }
  if(speedPY < 10 )
  {
  	speedPY = speedPY + 0.5;
  }
 }
 public void show()
 {
   fill(0,0,220,150);
   noStroke();
   ellipse((int)nparticleX,(int)nparticleY,(int)(speedPX*1.5)+2,(int)(speedPX*1.5)+2);
 }
}
class jumboParticle extends NormalParticle
{
    public void move()
    {
  	 nparticleX = nparticleX + (Math.cos(angleP))*speedPX;
  	 nparticleY = nparticleY + (Math.sin(angleP))*speedPY;
  	 if((nparticleX > 1000 || nparticleX < 0) || (nparticleY < 0 || nparticleY > 1000) )
  	 {
 	 nparticleY = 500;
 	 nparticleX = 500;
  	 speedPX = 2;
 	 speedPY = 2;
 	 angleP = (Math.random()*2*Math.PI);
  	 }
  	 if(speedPX < 10)
   	 {
  	
  	 speedPX = speedPX + 0.5;
   	 }
  	 if(speedPY < 10 )
   	 {
  	 speedPY = speedPY + 0.5;
   	 }
 	}
	public void show()
	{
		fill(0,220,0,150);
		noStroke();
        ellipse((int)nparticleX,(int)nparticleY,(int)(speedPX*2)+15,(int)(speedPX*2)+15);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	double oddX, oddY, oSpeed,angleO,oddX2,oddY2;
	OddballParticle()
	{
      oddX = 620;
      oddY = 350;
      oddX2 = 350;
      oddY2 = 620;
      oSpeed = 3;
      angleO = Math.PI/4;
	}
	public void move()
	{
     oddX = oddX + (Math.cos(angleO))*oSpeed;
     oddY = oddY + (Math.sin(angleO))*oSpeed;
     oddX2 = oddX2 + (Math.cos(angleO))*-1*oSpeed;
     oddY2 = oddY2 + (Math.sin(angleO))*-1*oSpeed;
     angleO = angleO + Math.PI/180;
 
	}
	public void show()
	{
     fill(220,00,20,190);
     noStroke();
     ellipse((int)oddX,(int)oddY,18,18);
     ellipse((int)oddX2,(int)oddY2,18,18);
	}
}


