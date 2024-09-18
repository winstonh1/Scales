void setup()
{
  size(400,400);
  noLoop();
}
void draw()
{
  boolean shift = true;
  for(int y = -20; y < 500; y +=60)
  {
    for(int x  = 0; x < 500; x += 35)
    {
      if(shift == true)
      {
        scale(x+13, y);
      }
      else
      {
        scale(x,y);
      }
    }
    if(shift == true)
      shift = false;
    else
      shift = true;
  }
}

void scale(int x, int y)
{
  int ballSize = ((int)(Math.random()*15))+10;
  noStroke();
  
  //scale main 
  fill(0,0,255);
  beginShape();
  vertex(x,y); //top
  vertex(x + 30, y + 50); //right
  vertex(x, y + 80); //bottom
  vertex(x - 30, y + 50); //left
  endShape(CLOSE);
  
  //scale top circle
  fill(108,40,188);
  ellipse(x,y,ballSize,ballSize);
  
  //scale interior curve
  fill(80,0,255);
  bezier(x - 30, y + 50, x, y + 10, x, y + 10 , x + 30, y + 50);

}  
