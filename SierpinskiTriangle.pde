public void setup()
{
  size(500, 500);
  background(0);
}
public void draw()
{
  noFill();
  sierpinski(20, 480, 460);
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) {
    stroke(0, random(255), 0);
    triangle(x, y, x + len, y, x + len/2, y - len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
