Camera camera = new Camera();
public void setup()
{
	size(1000, 1000);
}
public void draw()
{
  background(255);
  camera.teleport();
  translate(camera.position.x, camera.position.y);
  sierpinski(0, 0, 360);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int rex, int why, int lense) 
{
  int x = -rex;
  int y = -why;
  int len = -lense;
	if (len == 0)
	{
	}
	else
	{
		//rotate(1);
    fill((float)Math.random() * 360, (float)Math.random() * 360, (float)Math.random() * 360);
    stroke(1);
		triangle(x, y, x + len, y, x + len/2, y + len);
        //sierpinski(x/2, y, len/2);
        sierpinski(x, y, len/2);
        sierpinski(x + len/4, y + len/2, len/2);
        sierpinski(x + len/2, y, len/2);
        //sierpinski(x*2, y*2, len /2);
    }
}
class Camera
{
  PVector position;
  Camera()
  {
    position = new PVector(0 , 0);
  }
  /*public void move()
  {
    position.x = position.x + (float) theShip.getDirectionX();
    position.y = position.y + (float) theShip.getDirectionY();
  }*/
  public void teleport()
  {
    position.x = (float) mouseX;
    position.y = (float) mouseY;
  }
  public PVector getVector() {return position;}
}