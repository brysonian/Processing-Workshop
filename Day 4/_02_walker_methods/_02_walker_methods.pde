Walker guy; // just like "int x;" it is type then name
Walker fred;

void setup() {
  size(500, 500);
  smooth();
  guy = new Walker();
  guy.x = random(0, width);
  guy.y = random(0, height);
  
  fred = new Walker();
  fred.x = random(0, width);
  fred.y = random(0, height);
}

void draw() {
  background(255);
  
  guy.display();
  guy.move();

  fred.display();
  fred.move();
}

class Walker
{
  float x;
  float y;
  
  void display() {
    fill(0);
    ellipse(x, y, 20, 20);
  }
  
  void move() {
    x += random(-1, 1);
    y += random(-1, 1); 
  }
}









