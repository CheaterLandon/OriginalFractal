public void setup()
{
  size(500, 500);
  rectMode(CENTER);
}
public void draw()
{
  background(150);
  myFractal(250, 250, 400);
}
public void myFractal(int x, int y, int z)
{
  fill((float)Math.random()*255, (float)Math.random()*255, (float)Math.random()*255);
  rect(x, y, z, z);
  rect(x,y,-z,-z);
  rect(x, y, -z, z);
  rect(x, y, z, -z);
  if(z > 50)
  {
    myFractal(x, y, z*120/125);
  }
}
