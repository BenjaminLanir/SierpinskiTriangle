Camera camera = new Camera();
public void setup()
{
	size(1000, 1000);
}
public void draw()
{
  background(0);
  camera.teleport();
  translate(camera.position.x, camera.position.y);
  sierpinski(0, 0, 360);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len == 0)
	{
	}
	else
	{
		rotate(1);
		triangle(x, y, x + len, y, x + len/2, y + len);
        //sierpinski(x/2, y, len/2);
        sierpinski(x, y, len/2);
        sierpinski(x + len/2, y + len, len/2);
        sierpinski(x + len, y, len/2);
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
    position.x = (float) mouseX - 100;
    position.y = (float) mouseY - 100;
  }
  public PVector getVector() {return position;}
}