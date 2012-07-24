Walker guy; // just like "int x;" it is type then name

void setup() {
  size(500, 500);
  smooth();
  guy = new Walker();
  guy.x = 250;
  guy.y = 250;  
}

void draw() {
  background(255);
  fill(0);
  ellipse(guy.x, guy.y, 20, 20);
  guy.x += random(-1, 1);
  guy.y += random(-1, 1);
}

class Walker
{
  float x;
  float y;
}









